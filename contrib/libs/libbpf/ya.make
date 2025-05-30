# Generated by devtools/yamaker from nixpkgs 24.05.

LIBRARY()

LICENSE(
    "(LGPL-2.1-only OR BSD-2-Clause)" AND
    BSD-2-Clause AND
    BSD-3-Clause AND
    GPL-1.0-or-later AND
    GPL-2.0-only AND
    LGPL-2.1-only AND
    LGPL-2.1-or-later
)

LICENSE_TEXTS(.yandex_meta/licenses.list.txt)

VERSION(1.2.2)

ORIGINAL_SOURCE(https://github.com/libbpf/libbpf/archive/v1.2.2.tar.gz)

PEERDIR(
    contrib/libs/zlib
    contrib/restricted/libelf
)

ADDINCL(
    contrib/libs/libbpf/include
    contrib/libs/libbpf/src
    contrib/restricted/libelf/libelf
)

NO_COMPILER_WARNINGS()

NO_RUNTIME()

SRCS(
    src/bpf.c
    src/bpf_prog_linfo.c
    src/btf.c
    src/btf_dump.c
    src/gen_loader.c
    src/hashmap.c
    src/libbpf.c
    src/libbpf_errno.c
    src/libbpf_probes.c
    src/linker.c
    src/netlink.c
    src/nlattr.c
    src/relo_core.c
    src/ringbuf.c
    src/str_error.c
    src/strset.c
    src/usdt.c
    src/zip.c
)

END()
