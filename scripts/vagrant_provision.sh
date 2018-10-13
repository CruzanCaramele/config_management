#!/bin/bash
set -e

REPO_DEB_URL=https://apt.puppetlabs.com/puppet-release-${DISTRIB_CODENAME}.deb


# Install the PuppetLabs repo
echo "Configuring PuppetLabs repo..."
source /etc/lsb-release
wget REPO_DEB_URL
dpkg -i puppet-release-${DISTRIB_CODENAME}.deb

# Do the initial apt-get update
echo "Initial apt-get update..."
apt-get update >/dev/null

# Install wget if we have to (some older Ubuntu versions)
echo "Installing wget..."
apt-get --yes install wget >/dev/null

# Install Puppet
echo "Installing Puppet..."
apt-get -y install git puppet-agent

echo "Puppet installed!"

echo 'Defaults        secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/opt/puppetlabs/bin:/opt/puppetlabs/puppet/bin"' >/etc/sudoers.d/puppet
/opt/puppetlabs/puppet/bin/gem install gpgme --no-rdoc --no-ri
/opt/puppetlabs/puppet/bin/gem install hiera-eyaml-gpg --no-rdoc --no-ri
/opt/puppetlabs/puppet/bin/gem install r10k --no-rdoc --no-ri
