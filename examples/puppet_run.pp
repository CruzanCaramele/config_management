# cron job manifest for regular puppet apply
file {'/usr/local/bin/run-puppet':
	source => '/etc/puppetlabs/code/environments/production/files/run_puppet.sh',
	mode   => '0755',
}

cron {'run-puppet':
	command => '/usr/local/bin/run-puppet',
	hour	=> '*',
	minute	=> '*/15',
}