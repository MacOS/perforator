GO_LIBRARY()

LICENSE(Apache-2.0)

VERSION(v1.32.4)

SRCS(
    address.pb.go
    address.pb.validate.go
    backoff.pb.go
    backoff.pb.validate.go
    base.pb.go
    base.pb.validate.go
    config_source.pb.go
    config_source.pb.validate.go
    event_service_config.pb.go
    event_service_config.pb.validate.go
    extension.pb.go
    extension.pb.validate.go
    grpc_method_list.pb.go
    grpc_method_list.pb.validate.go
    grpc_service.pb.go
    grpc_service.pb.validate.go
    health_check.pb.go
    health_check.pb.validate.go
    http_service.pb.go
    http_service.pb.validate.go
    http_uri.pb.go
    http_uri.pb.validate.go
    protocol.pb.go
    protocol.pb.validate.go
    proxy_protocol.pb.go
    proxy_protocol.pb.validate.go
    resolver.pb.go
    resolver.pb.validate.go
    socket_cmsg_headers.pb.go
    socket_cmsg_headers.pb.validate.go
    socket_option.pb.go
    socket_option.pb.validate.go
    substitution_format_string.pb.go
    substitution_format_string.pb.validate.go
    udp_socket_config.pb.go
    udp_socket_config.pb.validate.go
)

END()
