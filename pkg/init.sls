pkgs:
  {% if grains['os_family'] == 'Debian' %}
  mtr: mtr-tiny
  python2: python
  docker: docker.io
  {% else %}
  mtr: mtr
  python2: python2
  docker: docker
  {% endif %}

base-pkgs:
  - curl
  - git
  - zsh
  {% if grains['os_family'] == 'Debian' %}
  - debconf-utils
  - dnsutils
  {% endif %}
  {% if 'role' in grains %}
  {% if grains['role'] == 'coldfusion' %}
  - apache2
  - arping
  - bind9utils
  - binutils
  - build-essential
  - bzip2
  - cpp
  - curl
  - discover-data
  - discover
  - dpkg-dev
  - fakeroot
  - g++
  - gcc
  - git-core
  - git
  - haveged
  - heirloom-mailx
  - htop
  - iotop
  - mysql-client
  - mysql-common
  - mysql-server
  - nmap
  - ntp
  - ntpdate
  - openssh-server
  - rsync
  - screen
  - shared-mime-info
  - ssl-cert
  - strace
  - sudo
  - sysstat
  - tcpdump
  - unzip
  - vim-nox
  - xkb-data
  {% elif grains['role'] == 'master' %}
  - salt-master
  - salt-minion
  - salt-syndic
  {% elif grains['role'] == 'csgo' %}
  - lib32gcc1
  {% endif %}
  {% endif %}
