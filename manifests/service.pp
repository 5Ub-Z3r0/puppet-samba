# == Class: samba::service
#
# This module manages the samba service configuration
#
# === Parameters
#
# === Variables
#
# [*samba::params::smb_service_name*]
#   The OS-specific name of the samba service.
#
# === Examples
#
#   include samba::service
#
# === Authors
#
# 5Ub-Z3r0
#
class samba::service {
    service { $samba::params::smb_service_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
    }
}
