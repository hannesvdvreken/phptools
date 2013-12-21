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
	command "wget -O codecept http://codeception.com/codecept.phar && chmod +x codecept"
	creates "#{node['phptools']['install_path']}/codecept"
	cwd node['phptools']['install_path']
end