class api::file_front(
        String $path_to_txt_file = $api::params::path_to_txt_file,
	Boolean $var_two_front   = $api::params::var_two_front,
)inherits api::params {
$file_content = 'dir="/Axway/API-7.7"
analytics="no"
username="admin"
adminpasswd="changeme"
cassandra="yes"
cassandraInstalldir="/Axway/Cassandra"
cassandraJDK="/Axway/API-7.7/apigateway/platform/jre"
analyticsLicenseFilePath="/etc/puppetlabs/code/environments/production/modules/files/license.lic"
licenseFilePath="/etc/puppetlabs/code/environments/production/modules/files/license.lic"
cassandrahost="10.0.0.55:9042,localhost:9042"
replicationfactor="2"
instance="yes"
cassandraStart="1"
group="front"
instancename="front-11"
password="changeme"
adminManagerName="apiadmin"
adminManagerPass="changeme"
apimgmtlicenseFilePath="/etc/puppetlabs/code/environments/production/modules/files/license.lic"
apimgmt="yes"
anm="no"
anmhost="10.0.0.51"
anmport="8090"
enable_components="nodemanager,apigateway,packagedeploytools,apimgmt,cassandra"
disable_components="qstart,policystudio,configurationstudio,apitester,analytics"'
    file { "$path_to_txt_file":
      content => $file_content,
    }
    file_line { 'Adding value of nm_name':
                path => "$path_to_txt_file",
                line => "nm_name=$::ipaddress",
                require => File["$path_to_txt_file"],
    }
    file_line { 'Adding a value of cassandra host':
                path => "$path_to_txt_file",
                line => "cassandrahost=$::ipaddress:9042,localhost:9042",
                require => File["$path_to_txt_file"],
    }
if "$var_two_front" == "true" {
    file_line { 'Changing value of instancename':
                path => "$path_to_txt_file",
                replace => true,
                line =>'instancename="front-12"',
                match =>'instancename="front-11"',
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

