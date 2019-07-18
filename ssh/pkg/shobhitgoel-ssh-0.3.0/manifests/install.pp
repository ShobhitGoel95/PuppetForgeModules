class ssh::install(
  String $pkg_ensure = $ssh::params::pkg_ensure,
  String $pkg_name   = $ssh::params::pkg_name,
)
{
  package{$pkg_name:
    ensure => $pkg_ensure,
         }
}
