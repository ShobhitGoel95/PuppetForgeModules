class mysqlserver(
	String $package_name    = $mysqlserver::params::package_name,
	String $package_ensure  = $mysqlserver::params::package_ensure,
	Boolean $service_enable = $mysqlserver::params::service_enable,
	String $service_ensure  = $mysqlserver::params::service_ensure,
	String $mysql_service   = $mysqlserver::params::mysql_service,
) inherits mysqlserver::params{

  exec {"To install wget":
    command  => 'yum -y install wget',
    provider => shell,
       }
  exec {"wgetting mysql":
    command  => 'wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm',
    provider => shell,
	}
  exec {"rpm mysql repo":
    command  => 'rpm -ivh mysql-community-release-el7-5.noarch.rpm',
    provider => shell,
       }
	
  class{'mysqlserver::package':}->
  class{'mysqlserver::service':}
}
