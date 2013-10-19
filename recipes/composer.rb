#
# Cookbook Name:: phptools
# Recipe:: composer
#
# Author:: Hannes Van De Vreken (<vandevreken.hannes@gmail.com>)
#
# MIT Licensed
# 

# install composer if needed
execute "composer-install" do
	command "wget http://getcomposer.org/composer.phar && chmod +x composer.phar"
	creates "#{node['phptools']['install_path']}/composer.phar"
	cwd node['phptools']['install_path']
end

# easier composer command
link "#{node['phptools']['install_path']}/composer" do
	to "#{node['phptools']['install_path']}/composer.phar"
end