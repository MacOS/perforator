GO_LIBRARY()

LICENSE(BSD-3-Clause)

VERSION(v0.22.0)

SRCS(
    set.go
)

GO_TEST_SRCS(set_test.go)

END()

RECURSE(
    gotest
)
