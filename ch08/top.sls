#!yaml
base:
  'kernel:Linux':
    - match: grain
    - common
root@master:~# salt '*' state.show_states
master:
    - common.at
    - common.software
    - common.timezone
    - common.ssh
minion1:
    - common.at
    - common.software
    - common.timezone
    - common.ssh
