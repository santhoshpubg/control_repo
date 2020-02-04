class profile::ssh_server {
      package {'openssh-server':
                ensure => present,
      }
      service {'sshd':
                ensure => 'running',
                enable => 'true'
      }
      ssh_authorized_key {'root@master.puppet.vm':
                ensure => present,
                user => 'root'
                type => 'ssh-rsa'
                key => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCpYYtUdVcINuPwCHYje/lzuuPYewBDHoJp/dBY65+yLqBed4TuGvtLkViVzMQeB0lPrZde5f3kaQd9ORQhprK8kHxng+ww7iHH+MBg5aSdJd0WQnNsiplKLwRLcG9QvbTPY8C2UzjSbfJ8wAgSHVf/uF/glMESkcCSSCOmDwGdn1738IUIVWh7dFn9+XUsd8S8SQdRHielMZg2Itknf4main5MCN3z+gPt+vWt6hFjEZ57BmfG2cATSuONtHlZFLwWsdA6jwAHJszdtQZAqk8y2FbbZR5wNyQ/AypiviSyPCvyPSVnNN65I6ECTEyl2GClYSlit6HiTWWZX6rR3 root@master.puppet.vm'
      }
}
