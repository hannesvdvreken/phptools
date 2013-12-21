#
# Cookbook Name:: phptools
# Recipe:: default
#
# Author:: Hannes Van De Vreken (<vandevreken.hannes@gmail.com>)
#
# MIT Licensed
#

node['phptools']['tools'].each do |tool|
    include_recipe "phptools::#{tool}"
 end