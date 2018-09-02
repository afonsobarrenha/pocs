case $::osfamily {
  'redhat':{
    $pacotes = ['vim','epel-release', 'htop', 'sysstat', 'fish']
  }
  'debian':{
    $pacotes = ['vim', 'htop', 'sysstat', 'fish']
  }

}

package{$pacotes:
  ensure=>present
}

user{'devops':
  ensure=>present,
  password=>'$1$WjVmyUNm$SXZjN2jPVDiUV02qeGyJU0',
  managehome => true,
  shell=>'/usr/bin/fish',
}
