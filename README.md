# Configurantion Management with Puppet

Much of this repo  thanks to the great work done by John Arundel author of [The Puppet 5 Beginner's Guide](http://bitfieldconsulting.com/pbg3)

## Getting Started

Clone this repo.

Download and install [Virtualbox](https://www.virtualbox.org/).

Download and install [Vagrant](https://www.vagrantup.com/downloads.html).

In the `config_management` repo directory, run:

    scripts/start_vagrant.sh
    ...

    Machine booted and ready!

Connect to the VM with the following command:

    vagrant ssh

You now have a command line shell on the VM. Check that Puppet is installed and working:

    puppet --version
    5.2.0

Try the 'Hello, world' example:

    sudo puppet apply /examples/file_hello.pp
    Notice: Compiled catalog for localhost in environment production in 0.07 seconds
    Notice: /Stage[main]/Main/File[/tmp/hello.txt]/ensure: defined content as '{md5}22c3683b094136c3398391ae71b20f04'
    Notice: Applied catalog in 0.01 seconds

    cat /tmp/hello.txt
    hello, world

