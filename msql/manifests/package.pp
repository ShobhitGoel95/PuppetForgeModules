class mysqlserver::package(
	String $package_name   = $mysqlserver::params::package_name,
        String $package_ensure = $mysqlserver::params::package_ensure,
){
	package{"$package_name":
		ensure => "$package_ensure",
		}
}
