# Class: nginx
# Authors
# -------
#
# Author Name <hamza@nginx.com>
#
# Copyright
# ---------
#
# Copyright 2018 Hamza, unless otherwise noted.
#
class nginx(
  String $ensure                              = $::nginx::params::ensure,
  String $vhost_dir                           = $::nginx::params::vhost_dir,
  String $package_name                        = $::nginx::params::package_name,
  String $configuration_dir                   = $::nginx::params::configuration_dir,
  String $configuration_ensure                = $::nginx::params::configuration_ensure,
  String $configuration_mode                  = $::nginx::params::configuration_mode,
  String $configuration_owner                 = $::nginx::params::configuration_owner,
  String $configuration_group                 = $::nginx::params::configuration_group,
  String $configuration_confd                 = $::nginx::params::configuration_confd,
  String $configuration_log_dir               = $::nginx::params::configuration_log_dir,
  String $configuration_pid_file              = $::nginx::params::configuration_pid_file,
  Optional[String] $configuration_vdir_enable = $::nginx::params::configuration_vdir_enable,
  String $configuration_process_user          = $::nginx::params::configuration_process_user,
  String $service_name                        = $::nginx::params::service_name,
  String $service_ensure                      = $::nginx::params::service_ensure,
  String $service_pattern                     = $::nginx::params::service_pattern,
  Boolean $service_enable                     = $::nginx::params::service_enable,
  Boolean $service_hasstatus                  = $::nginx::params::service_hasstatus,
  Boolean $service_hasrestart                 = $::nginx::params::service_hasrestart,
  String $docroot                             = $::nginx::params::docroot,
) inherits ::nginx::params {
  
  class { '::nginx::install': 
  } -> 
  class { '::nginx::config': 
  } ~> 
  class { '::nginx::service': 
  }
}
