# class that provides the default values of the module

class fetchmail::params {
  $service_name = 'fetchmail'
  $service_ensure = 'running'
  $service_enable = true
  $package_name = 'fetchmail'
  $package_ensure = 'installed'

  $fetchmailrc = '/etc/fetchmailrc'

  case $::osfamily {
    'OpenBSD': {
      $fetchmail_user = '_fetchmail'
    } 
    'Suse': {
      $fetchmail_user = 'fetchmail'
    }
  }

}
