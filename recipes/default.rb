#
# Cookbook Name:: phptools
# Recipe:: default
#
# Author:: Hannes Van De Vreken (<vandevreken.hannes@gmail.com>)
#
# MIT Licensed
# 

# composer recipe
include_recipe "phptools::composer"
# phpunit recipe
include_recipe "phptools::phpunit"
# codeception recipe
include_recipe "phptools::codeception"