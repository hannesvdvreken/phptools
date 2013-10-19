#
# Cookbook Name:: phptools
# Recipe:: phpunit
#
# Author:: Hannes Van De Vreken (<vandevreken.hannes@gmail.com>)
#
# MIT Licensed
#

# install phpunit v3.7 or higher
execute "phpunit-install" do
	command "wget https://phar.phpunit.de/phpunit.phar && chmod +x phpunit.phar"
	creates "#{node['phptools']['install_path']}/phpunit.phar"
	cwd node['phptools']['install_path']
end

# easier phpunit command
link "#{node['phptools']['install_path']}/phpunit" do
	to "#{node['phptools']['install_path']}/phpunit.phar"
end