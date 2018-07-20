storage "consul" {
  address = "127.0.0.1:8500"
  path    = "vault"
}

ui = true

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

#telemetry {
#  statsite_address = "127.0.0.1:8125"
#  disable_hostname = true
# }

seal "gcpckms" {
  project     = "connect-env"
  region      = "global"
  key_ring    = "vault-keyring"
  crypto_key  = "vault-key"
}