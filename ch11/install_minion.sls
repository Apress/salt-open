#!yaml
include:
  - .repo
'Install Salt Minion':
  pkg.installed:
    - name: salt-minion
    - require:
      - pkgrepo: add_saltstack_repo