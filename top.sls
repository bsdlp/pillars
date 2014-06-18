base:
  '*':
    - pkg
    - services
    - users
  'G@role:aur_repo':
    - match: grain
    - aur_repo
  'G@role:mesos':
    - match: grain
    - mesos
