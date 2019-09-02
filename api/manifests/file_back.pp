class api::file_back(
        String $path_to_txt_file = $api::params::path_to_txt_file,
	Boolean $var_two_back    = $api::params::var_two_back,
)inherits api::params {
$file_content = 'dir="/Axway/API-7.7"
analytics="no"
username="admin"
adminpasswd="changeme"
cassandra="no"
cassandraInstalldir="/opt/db/cassandra"
cassandraJDK="/opt/Axway-7.5.3/apigateway/platform/jre"
analyticsLicenseFilePath="/etc/puppetlabs/code/environments/production/modules/files/license.lic"
licenseFilePath="/etc/puppetlabs/code/environments/production/modules/files/license.lic"
cassandrahost="10.151.9.3:9042,localhost:9042"
replicationfactor="1"
instance="yes"
cassandraStart="1"
group="back"
instancename="back-11"
password="changeme"
adminManagerName="apiadmin"
adminManagerPass="changeme"
apimgmtlicenseFilePath="/etc/puppetlabs/code/environments/production/modules/files/license.lic"
apimgmt="no"
anm="no"
anmhost="10.0.0.51"
anmport="8090"
enable_components="nodemanager,apigateway,packagedeploytools"
disable_components="qstart,policystudio,configurationstudio,apitester,cassandra,analytics,apimgmt"'
    file { "$path_to_txt_file":
      content => $file_content,
    }
    file_line { 'Adding value of nm_name':
                path => "$path_to_txt_file",
                line => "nm_name=$::ipaddress",
                require => File["$path_to_txt_file"],
    }
notify {"value of var is : $var_two_back":}
if "$var_two_back" == "true" {
    file_line { 'Changing value of instancename':
                path => "$path_to_txt_file",
		replace => true,
                line =>'instancename="back-12"',
		match =>'instancename="back-11"',
                require => File["$path_to_txt_file"],
    }
    file_line { 'changing value of replication facter':
                path => "$path_to_txt_file",
		replace => true,
                line => 'replicationfactor="2"',
		match => 'replicationfactor="1"',
                require => File["$path_to_txt_file"],
    }
}
}

