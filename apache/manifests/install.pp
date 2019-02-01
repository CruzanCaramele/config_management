# installs apache web server
#
# apache installation
#
# @example
#   include apache::install
class apache::install (
	$install_package = $apache::params::install_package
) inherits apache::params {
	package {'install_httpd':
		name   => $install_package,
		ensure => $apache::install_ensure,
	}
}
