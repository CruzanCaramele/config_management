class nginx::config(
  String $configuration_ensure                = $::nginx::configuration_ensure,
  String $configuration_dir                   = $::nginx::configuration_dir,
  String $configuration_mode                  = $::nginx::configuration_mode,
  String $configuration_owner                 = $::nginx::configuration_owner,
  String $configuration_group                 = $::nginx::configuration_group,
  String $configuration_confd                 = $::nginx::configuration_confd,
  String $configuration_log_dir               = $::nginx::configuration_log_dir,
  String $configuration_pid_file              = $::nginx::configuration_pid_file,
  Optional[String] $configuration_vdir_enable = $::nginx::configuration_vdir_enable,
  String $configuration_process_user          = $::nginx::configuration_process_user,
  String $docroot                             = $::nginx::docroot,
) {
  file { 'nginx_configuration':
    ensure  => $configuration_ensure,
    path    => "${configuration_dir}/nginx.conf",
    mode    => $configuration_mode,
    owner   => $configuration_owner,
    group   => $configuration_group,
    source  => 'puppet:///modules/nginx/nginx.conf',
  }

  file { $configuration_log_dir: 
    ensure  => directory,
    recurse => true,
  }

  file { $docroot: 
    ensure  => directory,
    recurse => true,
    mode    => $configuration_mode,
    owner   => $configuration_owner,
    group   => $configuration_group,
  }
}
