{% if grains['os_family'] == 'Debian' %}
  {% set shell = '/bin/zsh' %}
{% elif grains['os_family'] == 'Arch' %}
  {% set shell = '/usr/bin/zsh' %}
{% else %}
  {% set shell = '/usr/local/bin/zsh' %}
{% endif %}

users:
  {% if 'role' in grains %}
  {% if grains['role'] == 'irssi' %}
  irssi:
    home: /home/irssi
    shell: /bin/rbash
  {% elif grains['role'] == 'minecraft' %}
  minecraft:
    home: /srv/minecraft
    sudouser: False
    shell: {{ shell }}
  {% elif grains['role'] == 'csgo' %}
  srcds:
    home: /srv/steam
    sudouser: False
    shell: {{ shell }}
  {% elif grains['role'] == 'killingfloor' %}
  steam:
    home: /srv/steam
    sudouser: False
    shell: /bin/bash
  {% endif %}
  {% endif %}
  poopface:
    absent: True
