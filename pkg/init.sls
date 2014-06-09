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
  {% if grains['os_family'] == 'Debian' %}
    - apt-file
    - debconf-utils
    - dnsutils
    - curl
  {% elif grains['os_family'] == 'Arch' %}
    - curl
  {% endif %}

services:
  {% if grains['os_family'] == 'Debian' %}
    docker: docker.io
  {% else %}
    docker: docker
  {% endif %}
