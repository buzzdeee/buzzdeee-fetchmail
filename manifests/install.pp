# class that takes care of installation

class fetchmail::install {
  $package = $::fetchmail::package_name
  $ensure  = $::fetchmail::package_ensure

  package { $package:
    ensure => $ensure,
  }

}
