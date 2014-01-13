#
# Cookbook Name:: phptools
# Recipe:: hhvm
#
# Author:: Hannes Van De Vreken (<vandevreken.hannes@gmail.com>)
#
# MIT Licensed
#

# add repository
apt_repository "hhvm" do
  uri "http://dl.hhvm.com/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
end

# Add key file
execute "import hhvm key" do
	command "wget -O /tmp/hhvm.gpg.key http://dl.hhvm.com/conf/hhvm.gpg.key && sudo apt-key add /tmp/hhvm.gpg.key"
	creates "/tmp/hhvm.gpg.key"
end

# Install fastcgi
apt_package "hhvm-fastcgi" do
	options "--force-yes"
	action :install
end

if node["phptools"]["hhvm"]["replaces_php"]
    # create a shortcut so every .phar file uses hhvm
    link "/usr/local/bin/php" do
        to "/usr/bin/hhvm"
    end
end