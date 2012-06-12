# == Class: samba::service
#
# This module manages the samba service installation
#
# === Parameters
#
# === Variables
#
# [*samba::params::package_name*]
#   The OS-specific name of the samba package.
#
# === Examples
#
#   include samba::service
#
# === Authors
#
# 5Ub-Z3r0
#
class samba::install {

    package { $samba::params::package_name:
        ensure => present,
    }
}
