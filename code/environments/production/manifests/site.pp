node default {
  include role::base
}

node node-01 {
  $ip_address = "172.31.0.20/24"
  include role::kubernetes::controller
  #include profile::hiera_test
}

node nfs {
  $dir = "jenkins"
  $ip_address = "172.31.0.14/24"
  include role::nfs_server
}

node nexus {
  $ip_address = "172.31.0.13/24"
  include role::nexus_server
}

node logger {
  include role::logging_server
}
