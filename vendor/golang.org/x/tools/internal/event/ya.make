GO_LIBRARY()

LICENSE(BSD-3-Clause)

VERSION(v0.26.0)

SRCS(
    doc.go
    event.go
)

END()

RECURSE(
    core
    export
    keys
    label
)
