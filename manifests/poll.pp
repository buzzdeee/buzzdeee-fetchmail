# This defined type manages entries in fetchmailrc

define fetchmail::poll (
  $poll,
  $users,
  $sets = undef,
) {

  $fetchmailrc = $::fetchmail::fetchmailrc

  concat::fragment { "$fetchmailrc poll $name":
    target  => $fetchmailrc,
    content => template("${module_name}/fetchmailrc.erb"),
    order   => '10',
  }

}
