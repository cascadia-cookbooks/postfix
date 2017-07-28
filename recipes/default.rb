#
# Cookbook Name:: cop_postfix
# Recipe:: default
#

package 'postfix' do
    action :install
end

template '/etc/postfix/main.cf' do
    cookbook 'cop_postfix'
    source   'default/main.cf.erb'
    action   :create
    notifies :reload, 'service[postfix]', :immediately
    notifies :restart, 'service[postfix]', :delayed
end

# template '/etc/postfix/master.cf' do
#     cookbook 'cop_postfix'
#     source   'default/master.cf.erb'
#     action   :create
#     notifies :reload, 'service[postfix]', :immediately
# end

service 'postfix' do
    action [:enable, :start]
end
