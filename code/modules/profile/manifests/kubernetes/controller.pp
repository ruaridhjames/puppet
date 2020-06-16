# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::kubernetes::controller
class profile::kubernetes::controller {
      package {'conntrack': ensure => installed}
      class {'kubernetes':
            controller => true,
	    require => Package['conntrack'],
      }
      Package['conntrack'] -> Class['kubernetes']
}
