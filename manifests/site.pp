node default {
  file {'/root/README':
   ensure => file,
   content => 'This is a read me file from GIT',
  }
}
node 'master.puppet.vm'{
include role::master_server
}
