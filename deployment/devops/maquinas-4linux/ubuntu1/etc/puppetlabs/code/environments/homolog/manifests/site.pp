node "dev1.salas4linux.com.br" {
  package{"fish":
    ensure => present
  }
  user{"devops":
    ensure=>present,
    managehome=>true,
    shell=>"/bin/bash"
  }
}
