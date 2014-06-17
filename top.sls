base:
  '*':
    - pkg
    - services
    - users
  'G@role:aur_repo':
    - match: compound
    - aur_repo
  'G@role:mesos':
    - match: compound
    - mesos
