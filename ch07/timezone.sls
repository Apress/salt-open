#!yaml
'Configure UK Time Zone on Salt Minions':
  timezone.system:
    - utc: True
    - name: 'Europe/London'