#
# Cookbook Name:: phptools
# Attributes:: default
#
# Author:: Hannes Van De Vreken (<vandevreken.hannes@gmail.com>)
#
# MIT Licensed
#

default['phptools']['install_path'] = '/usr/local/bin'

default['phptools']['tools'] = ['composer', 'phpunit', 'behat', 'codeception', 'hhvm']

default['phptools']['hhvm']['replaces_php'] = false
default['phptools']['hhvm']['port'] = 80
default['phptools']['hhvm']['source_root'] = "/var/www"