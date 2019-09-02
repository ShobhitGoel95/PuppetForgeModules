class api::init_admin{
  class {'api::file_admin':}->
  class {'api::script_admin':}
}
