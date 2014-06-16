base:
  '*':
    - pkg
    - users
    - services
  'G@role:aur_repo'
    - match: compound
    - aur_repo
  'G@role:mesos'
    - match: compound
    - mesos
