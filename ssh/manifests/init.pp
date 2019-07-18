# Thanks for Downloading the module. You simply have to include the class 'ssh'
#  on your site.pp and everything will be done in background.
#  eg:
#      include ssh

class ssh(
  String $pkg_name=$ssh::params::pkg_name,
  String $pkg_ensure=$ssh::params::pkg_ensure,
  String $service_ensure=$ssh::params::service_ensure,
  Boolean $service_enable=$ssh::params::service_enable,
  String $sshservice=$ssh::params::sshservice,
  String $config_name=$ssh::params::config_name,
  String $config_file_mode=$ssh::params::config_file_mode,
  Array[String] $agents=$ssh::params::agents,
) inherits ssh::params{
  include ssh::install
  include ssh::service
  include ssh::config
}
