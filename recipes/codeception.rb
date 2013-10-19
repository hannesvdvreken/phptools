#
# Cookbook Name:: phptools
# Recipe:: codeception
#
# Author:: Hannes Van De Vreken (<vandevreken.hannes@gmail.com>)
#
# MIT Licensed
# 

# install codeception
execute "codecept-install" do
	command "wget http://codeception.com/codecept.phar && chmod +x codecept.phar"
	creates "#{node['phptools']['install_path']}/codecept.phar"
	cwd node['phptools']['install_path']
end

# easier codecept command
link "#{node['phptools']['install_path']}/codecept" do
	to "#{node['phptools']['install_path']}/codecept.phar"
end