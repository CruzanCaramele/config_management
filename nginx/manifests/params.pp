class nginx::params {
  $ensure                    = 'present'
  $package_name              = 'nginx'
  $configuration_dir         = '/etc/nginx'
  $configuration_ensure      = 'file'
  $configuration_mode        = '0644'
  $configuration_owner       = 'root'
  $configuration_group       = 'root'
  $configuration_confd       = "${configuration_dir}/conf.d"
  $configuration_log_dir     = '/var/log/nginx'
  $configuration_pid_file    = '/run/nginx.pid'


  # selectors

  $configuration_vdir_enable = $facts['os']['family'] ? {
    'Debian'  => $configuration_dir,
    default   => undef,
  }

  $configuration_process_user = $facts['os']['family'] ? {
    'Debian'  => 'www-data',
    default   => 'nginx',
  }

  $vhost_dir = $facts['os']['family'] ? {
    'Debian'  => "${configuration_dir}/sites-enabled",
    default   => $configuration_confd,
  }

  # service params

  $service_name       = 'nginx'
  $service_ensure     = 'running'
  $service_pattern    = 'nginx'
  $service_enable     = true
  $service_hasstatus  = true
  $service_hasrestart = true

  $docroot            = '/usr/share/nginx'
}
