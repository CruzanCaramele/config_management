file {'/etc/my_symlink':
	ensure => link,
	target => '/etc/motd',
}