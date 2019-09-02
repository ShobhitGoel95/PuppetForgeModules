class api::file_admin(
	String $path_to_txt_file = $api::params::path_to_txt_file,
)inherits api::params {
$file_content = 'dir="/Axway/API-7.7"
analytics="yes"
username="admin"
adminpasswd="changeme"
cassandra="no"
cassandraInstalldir="/opt/db/cassandra"
cassandraJDK="/opt/Axway-7.7/apigateway/platform/jre"
analyticsLicenseFilePath="/etc/puppetlabs/code/environments/production/modules/files/license.lic"
licenseFilePath="/etc/puppetlabs/code/environments/production/modules/files/license.lic"
cassandrahost="10.151.9.3:9042,localhost:9042"
replicationfactor="1"
instance="no" 
cassandraStart="1"
group="front"
instancename="front-11"
password="changeme"
adminManagerName="apiadmin"
adminManagerPass="changeme"
apimgmtlicenseFilePath="/etc/puppetlabs/code/environments/production/modules/files/license.lic"
apimgmt="no"
anm="yes"
anmhost="10.151.9.3"
anmport="8090"
enable_components="nodemanager,apigateway,packagedeploytools,analytics"
disable_components="qstart,policystudio,configurationstudio,apitester,cassandra"'
    file { "$path_to_txt_file":
      content => $file_content,
    }
	file_line { 'Append a line to instalationDetails.txt file':
  		path => "$path_to_txt_file",
  		line => "nm_name=$::ipaddress",
		require => File["$path_to_txt_file"],
	}

}
