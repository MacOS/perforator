GO_LIBRARY()

LICENSE(Apache-2.0)

VERSION(v1.71.0)

SRCS(
    buffer.go
)

GO_TEST_SRCS(buffer_test.go)

END()

RECURSE(
    gotest
)
