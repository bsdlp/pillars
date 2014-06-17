shell:
  {% if grains['os_family'] == 'Debian' %}
  - zsh: /bin/zsh
  {% elif grains['os_family'] == 'Arch' %}
  - zsh: /usr/bin/zsh
  {% endif %}
