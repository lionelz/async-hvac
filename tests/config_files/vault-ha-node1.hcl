listener "tcp" {
  address = "localhost:8200"
  tls_cert_file = "tests/config_files/server-cert.pem"
  tls_key_file  = "tests/config_files/server-key.pem"
}

disable_mlock = true

default_lease_ttl = "768h"
max_lease_ttl = "768h"

storage "consul" {
  address = "localhost:8500"
  path    = "vault"
}
