# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include role::kubernetes::master
class role::kubernetes::master {
  include profile::base
  include profile::server
  include profile::kubernetes::master
}
