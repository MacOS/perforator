GO_LIBRARY()

LICENSE(Apache-2.0)

VERSION(v1.2.4)

SRCS(
    glog.go
    glog_file.go
    glog_flags.go
)

GO_TEST_SRCS(
    glog_bench_test.go
    glog_context_test.go
    glog_test.go
    glog_vmodule_test.go
)

IF (OS_LINUX)
    SRCS(
        glog_file_linux.go
        glog_file_nonwindows.go
    )
ENDIF()

IF (OS_DARWIN)
    SRCS(
        glog_file_nonwindows.go
        glog_file_posix.go
    )
ENDIF()

IF (OS_WINDOWS)
    SRCS(
        glog_file_posix.go
        glog_file_windows.go
    )
ENDIF()

END()

RECURSE(
    gotest
    internal
)
