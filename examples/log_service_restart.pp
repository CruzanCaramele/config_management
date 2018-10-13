service {'ntp':
	ensure	=> running,
	enable	=> true,
	restart => '/bin/echo ntp service is restarting >> /tmp/debug.log && systemctl restart ntp'
}