# The class that configures the service

class fetchmail::config {

  $fetchmailrc = $::fetchmail::fetchmailrc
  $user = $::fetchmail::fetchmail_user
  

  concat { $fetchmailrc:
    ensure => 'present',
    mode   => '0710',
    owner  => $user,
  }

  concat::fragment { "$fetchmailrc header":
    target  => $fetchmailrc,
    content => '# This file is managed via Puppet',
    order   => '01',
  }

}
