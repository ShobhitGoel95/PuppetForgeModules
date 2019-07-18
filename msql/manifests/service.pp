class mysqlserver::service(
	String $package_name    = $mysqlserver::params::package_name,
	Boolean $service_enable = $mysqlserver::params::service_enable,
        String $service_ensure  = $mysqlserver::params::service_ensure,
        String $mysql_service   = $mysqlserver::params::mysql_service,
){
	service{"$mysql_service":
		ensure  => $service_ensure,
		enable  => $service_enable,
		require => Package["$package_name"],
	}

}
