class apache::service (
	$service_name   = $apache::params::service_name
) inherits apache::params {
	service {'apache_service':
		name       => $service_name,
		ensure     => $apache::service_ensure,
		enable	   => $apache::service_enable,
		hasrestart => $apach::service_hasrestart,
	}
}
