base:
  '*':
    - pkg
    - services
    - ssh
    - users
  'G@role:aur_repo':
    - match: compound
    - aur_repo
  'G@role:mesos':
    - match: compound
    - mesos
  'G@role:minecraft':
    - match: compound
    - spigot
