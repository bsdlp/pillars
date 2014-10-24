base:
  '*':
    - ipset
    - pkg
    - services
    - ssh
    - users
  'G@role:aur_repo':
    - match: compound
    - aur_repo
  'G@role:csgo':
    - match: compound
    - pkg.csgo
  'G@role:killingfloor':
    - match: compound
    - killingfloor
  'G@role:mesos':
    - match: compound
    - mesos
  'G@role:minecraft':
    - match: compound
    - spigot
