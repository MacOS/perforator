GO_LIBRARY()

LICENSE(Apache-2.0)

VERSION(v1.32.4)

SRCS(
    api_listener.pb.go
    api_listener.pb.validate.go
    listener.pb.go
    listener.pb.validate.go
    listener_components.pb.go
    listener_components.pb.validate.go
    quic_config.pb.go
    quic_config.pb.validate.go
    udp_listener_config.pb.go
    udp_listener_config.pb.validate.go
)

END()
