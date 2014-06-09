pkgs:
  {% if grains['os_family'] == 'Debian' %}
  mtr: mtr-tiny
  python2: python
  {% else %}
  mtr: mtr
  python2: python2
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
