base:
  '*':
    - pkg
    - users
    - services
  'G@role:aur_repo'
    - match: compound
    - aur_repo
