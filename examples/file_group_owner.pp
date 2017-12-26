file {'/etc/owned_by_ubuntu':
	ensure  => present,
	mode    => '0644',
	owner   => 'ubuntu',
	group   => 'ubuntu',
}