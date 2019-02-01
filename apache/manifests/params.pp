class apache::params.pp {
	case $::osfamily {
		'RedHat' : {
			$install_package = 'httpd'
		}
	}
}
