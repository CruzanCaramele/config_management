class apache (
	$install_package   = $apache::params::install_package,
	$config_path       = $apache::params::config_path,
	$config_source     = $apache::params::config_source,
	$service_name      = $apache::params::service_name,
  	$vhosts_dir        = $apache::params::vhosts_dir,
	$vhosts_servername = $apache::params::vhosts_servername,
	String $service_enable,
	String $config_ensure,
	String $install_ensure,
	Boolean $service_ensure,
	Boolean $service_hasrestart,
	String  $vhosts_ensure,
	String  $vhosts_ports,
	String  $vhosts_root,
	String  $vhosts_root_ensure,
) inherits apache::params {
	contain apache::install
	contain apache::config
	contain apache::service
	contain apache::vhost

	Class['apache::install']
	-> Class['apache::config']
	~> Class['apache::service']
	-> Class['apache::vhost']
}
