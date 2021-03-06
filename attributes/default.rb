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

default['phptools']['hhvm']['replaces_php'] = true
