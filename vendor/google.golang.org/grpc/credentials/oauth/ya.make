GO_LIBRARY()

LICENSE(Apache-2.0)

VERSION(v1.71.0)

SRCS(
    oauth.go
)

GO_TEST_SRCS(oauth_test.go)

END()

RECURSE(
    gotest
)
