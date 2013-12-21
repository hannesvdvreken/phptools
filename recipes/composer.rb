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
	command "wget -O composer http://getcomposer.org/composer.phar && chmod +x composer"
	creates "#{node['phptools']['install_path']}/composer"
	cwd node['phptools']['install_path']
end