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
  keyserver "keyserver.ubuntu.com"
  key "1BE7A449"
end

# Install hhvm
apt_package "hhvm" do
	options "--force-yes"
	action :install
end

if node["phptools"]["hhvm"]["replaces_php"]
    # create a shortcut so every .phar file uses hhvm
    link "/usr/local/bin/php" do
        to "/usr/bin/hhvm"
    end
end
