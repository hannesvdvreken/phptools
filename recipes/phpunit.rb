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
	command "wget -O phpunit https://phar.phpunit.de/phpunit.phar && chmod +x phpunit"
	creates "#{node['phptools']['install_path']}/phpunit"
	cwd node['phptools']['install_path']
end