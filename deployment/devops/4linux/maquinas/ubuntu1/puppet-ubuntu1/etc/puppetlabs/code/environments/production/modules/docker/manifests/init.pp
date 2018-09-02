class docker {
  
  case $::osfamily{

    "redhat": {

      $requisitos = ['yum-utils', 'device-mapper-persistent-data', 'lvm2']

      package{$requisitos:
        ensure => present,
      }

      exec{'cadastra repositório':
        command => "/usr/bin/yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo"
      }

      package{'docker-ce':
        ensure => present,
      }

      exec{'inicia docker':
        command => '/usr/bin/systemctl start docker'
      }

    }

    "debian": {

      $requisitos = ['apt-transport-https', 'ca-certificates', 'curl', 'software-properties-common']

      package{$requisitos:
        ensure => present,
      }

      exec{'instala chaves':
        command => "/usr/bin/curl -fsSL https://download.docker.com/linux/ubuntu/gpg | /usr/bin/apt-key add -"
      }

      exec{'cadastra repositório':
        command => "/usr/bin/add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable'"
      }

      exec{'atualizando!':
        command => "/usr/bin/apt update"
      }

      package{'docker-ce':
        ensure => present,
      }
    }
  }
  
  package{'ccze':
    ensure => present
  }

}
