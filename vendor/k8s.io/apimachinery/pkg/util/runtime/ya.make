GO_LIBRARY()

LICENSE(Apache-2.0)

VERSION(v0.26.1)

SRCS(
    runtime.go
)

GO_TEST_SRCS(runtime_test.go)

END()

RECURSE(
    gotest
)
