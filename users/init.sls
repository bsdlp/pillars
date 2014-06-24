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
  jchen:
    home: /home/jchen
    sudouser: True
    shell: {{ shell }}
  {% elif grains['role'] == 'minecraft' %}
  minecraft:
    home: /srv/minecraft
    sudouser: False
    shell: {{ shell }}
  {% endif %}
  {% endif %}
