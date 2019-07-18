class ssh::params{
  $pkg_ensure       = 'installed'
  $service_ensure   = 'running'
  $service_enable   = true
  $pkg_name         = 'openssh-server'
  $config_name      = 'ntp.conf'
  $agents           = ['puppetagent.com','puppetagent1.com']
  $config_file_mode = '0664'
  $sshservice       = $osfamily?{
    'redhat'  =>  'sshd',
    'debian'  =>  'ssh',
    'default' =>  'ssh',
  }
}
