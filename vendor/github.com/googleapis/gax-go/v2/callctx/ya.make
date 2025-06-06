GO_LIBRARY()

LICENSE(BSD-3-Clause)

VERSION(v2.14.1)

SRCS(
    callctx.go
)

GO_TEST_SRCS(callctx_test.go)

GO_XTEST_SRCS(callctx_example_test.go)

END()

RECURSE(
    gotest
)
