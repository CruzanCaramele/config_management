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
    5.XX.XX

Try the 'Hello, world' example:

    sudo puppet apply /examples/file_hello.pp
    Notice: Compiled catalog for localhost in environment production in 0.07 seconds
    Notice: /Stage[main]/Main/File[/tmp/hello.txt]/ensure: defined content as '{md5}22c3683b094136c3398391ae71b20f04'
    Notice: Applied catalog in 0.01 seconds

    cat /tmp/hello.txt
    hello, world


Run the nginx module and let puppet manage it for you:

    sudo puppet apply /etc/puppetlabs/code/environments/production/manifests/site.pp

    test:
    curl http://localhost
