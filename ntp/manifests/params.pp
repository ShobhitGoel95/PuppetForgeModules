class ntp::params{
  $package_name     = 'ntp'
  $package_ensure   = 'installed'
  $config_name      = 'ntp.conf'
  $config_file_mode = '0664'
  $servers          = ['0.centos.pool.org','1.centos.pool.org']
  $service_ensure   = 'running'
  $service_enable   = true
  $ntpservice       = $osfamily?{
    'redhat'  => 'ntpd',
    'debian'  => 'ntp',
    'default' => 'ntp',
  }
}
