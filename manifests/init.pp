# == Class: samba
#
# This module manages the installation of the samba server
#
# === Parameters
#
# === Variables
#
# === Examples
#
#   include samba
#
# === Authors
#
# 5Ub-Z3r0
#
class samba {
    include samba::params, samba::install, samba::service
}
