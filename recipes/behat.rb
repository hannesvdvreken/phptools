#
# Cookbook Name:: phptools
# Recipe:: behat
#
# Author:: Hannes Van De Vreken (<vandevreken.hannes@gmail.com>)
#
# MIT Licensed
#

# install behat
execute "behat-install" do
	command "wget -O behat http://behat.org/downloads/behat.phar && chmod +x behat"
	creates "#{node['phptools']['install_path']}/behat"
	cwd node['phptools']['install_path']
end