#!yaml
'add_saltstack_repo':
  pkgrepo.managed:
    - name: deb https://repo.saltproject.io/py3/ubuntu/20.04/amd64/latest focal main
    - humanname: SaltStack
    - file: /etc/apt/sources.list.d/saltstack.list
    - key_url: https://repo.saltproject.io/py3/ubuntu/20.04/amd64/latest/salt-archive-keyring.gpg