GO_LIBRARY()

LICENSE(Apache-2.0)

VERSION(v1.71.0)

SRCS(
    leakcheck.go
)

GO_TEST_SRCS(leakcheck_test.go)

END()

RECURSE(
    gotest
)
