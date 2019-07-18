class ssh::service(
  String $service_ensure  = $ssh::params::service_ensure,
  Boolean $service_enable = $ssh::params::service_enable,
  String $sshservice      = $ssh::params::sshservice,
){
  service{$sshservice:
    ensure   => $service_ensure,
    enable   => $service_enable,
         }
}
