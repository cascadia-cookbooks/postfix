#
# Cookbook Name:: cop_postfix
# Recipe:: default
#

package 'postfix' do
    action :install
end

service 'postfix' do
    action [:enable, :start]
end
