GO_LIBRARY()

LICENSE(Apache-2.0)

VERSION(v1.71.0)

SRCS(
    sts.go
)

GO_TEST_SRCS(sts_test.go)

END()

RECURSE(
    gotest
)
