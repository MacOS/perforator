#pragma once

#ifdef __GNUC__
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-parameter"
#endif

//===- MCSectionWasm.h - Wasm Machine Code Sections -------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file declares the MCSectionWasm class.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_MC_MCSECTIONWASM_H
#define LLVM_MC_MCSECTIONWASM_H

#include "llvm/MC/MCSection.h"

namespace llvm {

class MCSymbol;
class MCSymbolWasm;
class StringRef;
class raw_ostream;

/// This represents a section on wasm.
class MCSectionWasm final : public MCSection {
  unsigned UniqueID;

  const MCSymbolWasm *Group;

  // The offset of the MC function/data section in the wasm code/data section.
  // For data relocations the offset is relative to start of the data payload
  // itself and does not include the size of the section header.
  uint64_t SectionOffset = 0;

  // For data sections, this is the index of the corresponding wasm data
  // segment
  uint32_t SegmentIndex = 0;

  // For data sections, whether to use a passive segment
  bool IsPassive = false;

  // For data sections, bitfield of WasmSegmentFlag
  unsigned SegmentFlags;

  // The storage of Name is owned by MCContext's WasmUniquingMap.
  friend class MCContext;
  MCSectionWasm(StringRef Name, SectionKind K, unsigned SegmentFlags,
                const MCSymbolWasm *Group, unsigned UniqueID, MCSymbol *Begin)
      : MCSection(SV_Wasm, Name, K, Begin), UniqueID(UniqueID), Group(Group),
        SegmentFlags(SegmentFlags) {}

public:
  /// Decides whether a '.section' directive should be printed before the
  /// section name
  bool shouldOmitSectionDirective(StringRef Name, const MCAsmInfo &MAI) const;

  const MCSymbolWasm *getGroup() const { return Group; }
  unsigned getSegmentFlags() const { return SegmentFlags; }

  void printSwitchToSection(const MCAsmInfo &MAI, const Triple &T,
                            raw_ostream &OS,
                            const MCExpr *Subsection) const override;
  bool useCodeAlign() const override;
  bool isVirtualSection() const override;

  bool isWasmData() const {
    return Kind.isGlobalWriteableData() || Kind.isReadOnly() ||
           Kind.isThreadLocal();
  }

  bool isUnique() const { return UniqueID != ~0U; }
  unsigned getUniqueID() const { return UniqueID; }

  uint64_t getSectionOffset() const { return SectionOffset; }
  void setSectionOffset(uint64_t Offset) { SectionOffset = Offset; }

  uint32_t getSegmentIndex() const { return SegmentIndex; }
  void setSegmentIndex(uint32_t Index) { SegmentIndex = Index; }

  bool getPassive() const {
    assert(isWasmData());
    return IsPassive;
  }
  void setPassive(bool V = true) {
    assert(isWasmData());
    IsPassive = V;
  }
  static bool classof(const MCSection *S) { return S->getVariant() == SV_Wasm; }
};

} // end namespace llvm

#endif

#ifdef __GNUC__
#pragma GCC diagnostic pop
#endif
