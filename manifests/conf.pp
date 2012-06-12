# == Define: samba::conf
#
# This module manages the samba configuration file
#
# === Parameters
#
# [*ensure*]
#   Defaults to present. 
#
# [*content*]
#   Optional, but this or "source" must be set.
#   It contains the text content of the samba configuration file
#
# [*content*]
#   Optional, but this or "content" must be set.
#   It contains the source where puppet will find the samba configuration file
#
#
# === Examples
#
#   samba::conf { 'MyShare':
#     ensure  => present,
#     content => '...
#                 ...',
#   }
#
#   samba::conf { 'MyShare':
#     ensure  => present,
#     source => 'puppet:///private/samba.config',
#   }
#
# === Authors
#
# 5Ub-Z3r0
#
define samba::conf($ensure = 'present', $source = undef, $content = undef) {
    include samba

    file { $samba::params::smb_config_file:
        ensure  => $ensure,
        owner   => root,
        group   => root,
        content => $content,
        source  => $source,
        require => Class['samba'],
        notify  => Class['samba::service'],
    }
}