GO_TEST()

LICENSE(Apache-2.0)

VERSION(v1.69.4)

DATA(
    arcadia/vendor/google.golang.org/grpc/testdata
)

TEST_CWD(vendor/google.golang.org/grpc)

GO_XTEST_SRCS(clustermanager_test.go)

END()
