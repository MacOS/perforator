GO_LIBRARY()

LICENSE(Apache-2.0)

VERSION(v0.0.0-20241223141626-cff3c89139a3)

SRCS(
    cel.pb.go
    cel.pb.validate.go
    domain.pb.go
    domain.pb.validate.go
    http_inputs.pb.go
    http_inputs.pb.validate.go
    ip.pb.go
    ip.pb.validate.go
    matcher.pb.go
    matcher.pb.validate.go
    range.pb.go
    range.pb.validate.go
    regex.pb.go
    regex.pb.validate.go
    string.pb.go
    string.pb.validate.go
)

END()
