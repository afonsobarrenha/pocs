exec { "apt-update":
    command => "/usr/bin/apt-get update"
}
package { ["openjdk-8-jre", "tomcat7"]:
    ensure => installed,
    require => Exec["apt-update"]
}
service { "tomcat7":
    ensure => running,
    enable => true,
    hasstatus => true,
    hasrestart => true, 
    require => Package["tomcat7"]
}
