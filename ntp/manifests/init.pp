class ntp (
  String $package_name     = $ntp::params::package_name,
  String $package_ensure   = $ntp::params::package_ensure,
  String $config_name      = $ntp::params::config_name,
  String $config_file_mode = $ntp::params::config_file_mode,
  Array[String] $servers   = $ntp::params::servers,
  String $service_ensure   = $ntp::params::service_ensure,
  Boolean $service_enable  = $ntp::params::service_enable,
 ) inherits ntp::params {
  class{ 'ntp::install':} ->
  class{ 'ntp::service':}
}
