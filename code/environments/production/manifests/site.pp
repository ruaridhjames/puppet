node default {
  include role::base
}

node node-01 {
  $ip_address = "172.31.0.20/24"
  include role::kubernetes::controller
  #include profile::hiera_test
}
