GO_LIBRARY()

LICENSE(MIT)

VERSION(v5.7.4)

SRCS(
    context_watcher.go
)

GO_XTEST_SRCS(context_watcher_test.go)

END()

RECURSE(
    gotest
)
