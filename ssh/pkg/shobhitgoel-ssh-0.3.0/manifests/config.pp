class ssh::config(
  $config_name          = $ssh::params::config_name,
  $config_file_mode     = $ssh::params::config_file_mode,
  Array[String] $agents = $ssh::params::agents,
)
{
  file{"/etc/$config_name":
    ensure  => file,
    group   => '0',
    owner   => '0',
    mode    => $config_file_mode,
    content => template("$module_name/ssh.conf.erb"),
      }
}
