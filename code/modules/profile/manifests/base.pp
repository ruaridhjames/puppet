# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::base
class profile::base {
  class { 'netplan':
    config_file   => '/etc/netplan/01-custom.yaml',
    ethernets     => {
      'eth0' => {
        'dhcp4' => false,
        'addresses' => [$ip_address],
        'gateway4' => '172.31.0.1',
      }
    },
    netplan_apply => true,
  }
}
