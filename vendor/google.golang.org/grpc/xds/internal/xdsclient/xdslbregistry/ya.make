GO_LIBRARY()

LICENSE(Apache-2.0)

VERSION(v1.71.0)

SRCS(
    xdslbregistry.go
)

GO_XTEST_SRCS(xdslbregistry_test.go)

END()

RECURSE(
    converter
    gotest
)
