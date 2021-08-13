'Install Common Software Packages Salt Minions':
  pkg.installed:
    - names:
      - 'nano'
      - 'bash-completion'
      - 'tree'
      - 'git'