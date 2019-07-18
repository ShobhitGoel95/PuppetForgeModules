class ntp::service(
  String $service_ensure=$ntp::params::service_ensure,
  Boolean $service_enable=$ntp::params::service_enable,
){
  service{'ntpd':
    ensure=>$service_ensure,
    enable=>$service_enable,
  }
}
