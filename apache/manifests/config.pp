class apache::config (
	$config_path  = $apache::params::config_path,
	$config_source = $apache::params::config_source,
) inherits apache::params {
	file {'apache_config':
		path   => $config_path,
		source => $config_source,
		ensure => $apache::config_ensure,
		notfiy => Service['apache_service'],
	}
}
