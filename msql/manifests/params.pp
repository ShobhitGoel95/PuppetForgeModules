class mysqlserver::params{
	$package_name   = 'mysql-server'
	$package_ensure = 'present'
	$service_ensure = 'running'
	$service_enable =  true
	$mysql_service  = $osfamily?{
	'redhat' => 'mysqld',
	'debian' => 'mysqld',
	'default'=> 'mysqld',
	}
}
