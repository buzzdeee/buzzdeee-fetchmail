# == Class: fetchmail
#
# Full description of class fetchmail here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'fetchmail':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class fetchmail (
  $service_name = $::fetchmail::params::service_name,
  $service_ensure = $::fetchmail::params::service_ensure,
  $service_enable = $::fetchmail::params::service_enable,
  $package_name = $::fetchmail::params::package_name,
  $package_ensure = $::fetchmail::params::package_ensure,
  $fetchmailrc = $::fetchmail::params::fetchmailrc,
  $fetchmail_user = $::fetchmail::params::fetchmail_user,
) inherits fetchmail::params {

  include fetchmail::install
  include fetchmail::config
  include fetchmail::service

  Class[fetchmail::install] ->
  Class[fetchmail::config] ~>
  Class[fetchmail::service]
}
