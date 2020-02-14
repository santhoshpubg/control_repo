class profile::ssh_server {
      package {'openssh-server':
                ensure => present,
      }
      service {'sshd':
                ensure => 'running',
                enable => 'true',
      }
      ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user => 'root',
                type => 'ssh-rsa',
                #key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCpYYtUdVcINuPwCHYje/lzuuPYewBDHoJp/dBY65+yLqBed4TuGvtLkViVzMQeB0lPrZde5f3kaQd9ORQhprK8kHxng+ww7iHH+MBg5aSdJd0WQnNsiplKLwRLcG9QvbTPY8C2UzjSbfJ8wAgSHVf/uF/glMESkcCSSCOmDwGdn1738IUIVWh7dFn9+XUsd8S8SQdRHielMZg2Itknf4main5MCN3z+gPt+vWt6hFjEZ57BmfG2cATSuONtHlZFLwWsdA6jwAHJszdtQZAqk8y2FbbZR5wNyQ/AypiviSyPCvyPSVnNN65I6ECTEyl2GClYSlit6HiTWWZX6rR3',
                key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC/EAezo0gk9Zzt2P4DxMxYiC/GKG7X/shmyUlbeF9WG9xCJJmUokoTmDdI+QR7BaHMklH2oFAuy8MtS0TyRqpZlIHRb5Z8jdOo2CGOKBdVDFb4m3lWEjesktbb0kFmUqDAxBQf7odJj2eRUn91EYTNehnTDiq3kCoswxhEHPFy7hiviPXKp5Beg/tDQWv9qciaHF5IXsrKneTBL1/Kmx89NECX+ced0hSubk4Qtxekt2w7Uf0mnSr6Qz1T9iDNDl0bZBoLFhnun8JWuR5gLaYBj06c5y2t0zOHE5DLx/ozDkucOprXafL7EjAz7cBU+KLizz3rEYh6b5BxOybGEPhb',
      }
}
