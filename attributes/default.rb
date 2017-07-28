case node['platform_family']
when 'debian'
    if node['platform_version'] == '16.04'
        default['postfix']['daemon_directory'] = '/usr/lib/postfix/sbin'
    else
        default['postfix']['daemon_directory'] = '/usr/lib/postfix'
    end
when 'rhel'
    default['postfix']['daemon_directory'] = '/usr/libexec/postfix'
end

default['postfix']['compatibility_level'] = 2
default['postfix']['queue_directory']     = '/var/spool/postfix'
default['postfix']['data_directory']      = '/var/lib/postfix'
default['postfix']['command_directory']   = '/usr/sbin'
default['postfix']['packages']            = %w(postfix)
default['postfix']['user']                = 'postfix'
default['postfix']['group']               = 'postfix'
default['postfix']['origin']['hostname']  = false
default['postfix']['origin']['domain']    = false
default['postfix']['inet_interfaces']     = 'localhost'
default['postfix']['inet_protocols']      = 'ipv4'
default['postfix']['network_style']       = 'host'
default['postfix']['mydestination']       = '$myhostname, localhost.$mydomain, localhost'
default['postfix']['sendmail_path']       = '/usr/sbin/sendmail.postfix'
