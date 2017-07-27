default['postfix']['packages']           = 'postfix'
default['postfix']['user']               = 'postfix'
default['postfix']['group']              = 'postfix'
default['postfix']['origin']['hostname'] = false
default['postfix']['origin']['domain']   = false
default['postfix']['inet_interfaces']    = 'localhost'
default['postfix']['inet_protocols']     = 'ipv4'
default['postfix']['network_style']      = 'host'
default['postfix']['mydestination']      = '$myhostname, localhost.$mydomain, localhost'
default['postfix']['sendmail_path']      = '/usr/sbin/sendmail.postfix'