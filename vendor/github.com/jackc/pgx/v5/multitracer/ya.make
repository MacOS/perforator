GO_LIBRARY()

LICENSE(MIT)

VERSION(v5.7.4)

SRCS(
    tracer.go
)

GO_XTEST_SRCS(tracer_test.go)

END()

RECURSE(
    gotest
)
