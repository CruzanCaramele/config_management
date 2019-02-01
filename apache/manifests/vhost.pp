class apache::vhost (
	$vhosts_dir        = $apache::params::vhosts_dir,
	$vhosts_servername = $apache::params::vhosts_servername,
) inherits apache::params {
	file {'${vhosts_servername}.conf'
		content => epp{'apache/vhosts.conf.epp'},
		ensure  => $apache::vhosts_ensure,
		path    => "${vhosts_dir}/${apache::servername}.conf",
	}

	file {'$apache::vhosts_root':
		ensure => $apache::vhosts_root_ensure,
	}
}
