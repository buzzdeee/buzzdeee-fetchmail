# class that takes care of service management

class fetchmail::service {
  $service = $::fetchmail::service_name
  $ensure  = $::fetchmail::service_ensure
  $enable  = $::fetchmail::service_enable

  service { $service:
    ensure => $ensure,
    enable => $enable,
  }

}
