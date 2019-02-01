class apache::service (
	$service_name   = $apache::params::service_name
) inherits apache::params {
	service {'apache_service':
		name       => $service_name,
		enable	   => $apache::service_enable,
		ensure     => $apache::service_ensure,
		hasrestart => $apach::service_hasrestart,
	}
}
