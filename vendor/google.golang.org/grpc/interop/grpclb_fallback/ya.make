GO_PROGRAM()

LICENSE(Apache-2.0)

VERSION(v1.71.0)

IF (OS_LINUX)
    SRCS(
        client_linux.go
    )
ENDIF()

END()
