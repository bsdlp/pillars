base:
  '*':
    - pkg
    - services
    - ssh
    - users
  'G@role:aur_repo':
    - match: grain
    - aur_repo
  'G@role:mesos':
    - match: grain
    - mesos
  'G@role:minecraft':
    - match: grain
    - spigot
