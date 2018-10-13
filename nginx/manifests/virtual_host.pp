define nginx::vhost(
  String $configuration_mode                  = $::nginx::configuration_mode,
  String $configuration_owner                 = $::nginx::configuration_owner,
  String $configuration_group                 = $::nginx::configuration_group,
  Optional[String] $configuration_vdir_enable = $::nginx::configuration_vdir_enable,
  Integer $port_number                        = 80,
  String $priority                            = '50',
  String $aliases_server                      = '',
  String $vhost_directory                     = $::nginx::vhost_directory,
  String $log_directory                       = $::nginx::vhost_dir,
  Boolean $enable                             = true,
) {
  $vhost_docroot = "${::nginx::docroot}/${name}"

  
  file { "${vhost_directory}/${priority}-${name}.conf":
    ensure  => file,
    content => template("${module_name}/vhost/vhost.conf.erb"),
    mode    => $configuration_mode,
    owner   => $configuration_owner,
    group   => $configuration_group,
    notify  => Service['nginx_service'],
  }

  file { $vhost_docroot:
    ensure => directory,
    mode   => '0755',
    owner  => $configuration_owner,
    group  => $configuration_group,
  }
}
