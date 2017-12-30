service {'ntp':
	ensure		=> running,
	enable		=> true,
	hasstatus	=> false,
}

# When hasstatus is false, Puppet knows not to try to check
# the service status using the default system service mgmt
# command. 

# Pupper will look for the process table for a running process
# which matches the name of the service. If it finds one,
# Puppet will infer that the service is running & take no 
# further action.