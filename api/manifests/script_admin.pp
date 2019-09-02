class api::script_admin{
 
# exec{'changing umask':
#    path    => '/bin:/usr/bin:/sbin:/usr/sbin',
#    command => "sed -i 's/umask [0-9]\{3,\}/umask 002/g' /etc/profile",
#  }
# exec {'changing puppet user membership':
#   path  => '/bin:/usr/bin:/sbin:/usr/sbin',
#   command => 'usermod -aG root puppet',
#  }
 #exec {'changinrship':
 #  path  => '/bin:/usr/bin:/sbin:/usr/sbin',
  # command => "echo 'puppet ALL=(ALL)	ALL' >>/etc/sudoers",
   #user => root,
  #}
  #file { "/etc/profile":
  #  ensure  => present,
#}
 # exec { "root_bashrc":
  #  path  => '/bin:/usr/bin:/sbin:/usr/sbin',
   # command     => "bash -c 'source /etc/profile'",
    #subscribe   => File["/etc/profile"],
    #refreshonly => true,
 # } 
# exec{'execution of scrit':
#   path => '/bin:/usr/bin:/sbin:/usr/sbin',
#   command => "bash +x /etc/puppetlabs/code/environments/production/modules/api/files/source.sh",
#   user    => root,
# }
 
file { "/etc/puppetlabs/code/environments/production/modules/files":
         ensure => 'directory',
	 mode => '0775',
	 recurse => true,
        source => 'puppet:///modules/api/',
  }
exec{'execution of api package':
    path    => '/bin:/usr/bin:/sbin:/usr/sbin',
    command => "bash -x /etc/puppetlabs/code/environments/production/modules/files/script.sh",
   # user    => root,
    timeout  => 2100,
    logoutput => true,
  }
}
