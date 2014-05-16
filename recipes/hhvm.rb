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

# Make hhvm run instead of php
if node["phptools"]["hhvm"]["replaces_php"]
    # create a shortcut so every .phar file uses hhvm
    link "/usr/local/bin/php" do
        to "/usr/bin/hhvm"
    end
end

# Overwrite php.ini for hhvm
cookbook_file "/etc/hhvm/php.ini" do
  source "hhvm/php.ini"
  mode 0664
  owner "root"
  group "root"
end

# Overwrite config.hdf for hhvm
cookbook_file "/etc/hhvm/config.hdf" do
  source "hhvm/config.hdf"
  mode 0664
  owner "root"
  group "root"
end
