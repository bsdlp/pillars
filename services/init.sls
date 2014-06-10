services:
  {% if grains['os_family'] == 'Debian' %}
    docker: docker.io
  {% else %}
    docker: docker
  {% endif %}
