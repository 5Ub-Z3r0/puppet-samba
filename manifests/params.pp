# == Class: samba::params
#
# This module manages OS-specific parameters for the samba package
#
# === Parameters
#
# === Variables
#
# === Examples
#
#   include samba::params
#
# === Authors
#
# 5Ub-Z3r0
#
class samba::params {
  case $::operatingsystem {
    /(Ubuntu|Debian)/: {
      $package_name = 'samba'
      $smb_service_name = 'samba'
      $smb_config_file = '/etc/samba/smb.conf'
    }
    /(CentOS|RedHat|OEL)/: {
      $package_name = 'samba'
      $smb_service_name = 'smb'
      $smb_config_file = '/etc/samba/smb.conf'
    }
  }
}
