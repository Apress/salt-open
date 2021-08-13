#!yaml
'Install Open SSH Server':
  pkg.installed:
    - name: 'openssh-server'

'Ensure SSH Server is Running and Enabled':
  service.running:
    - name: 'sshd'
    - enable: True
    - watch:
      - file: '/etc/ssh/sshd_config'

'Ensure SSH Password Authentication is enabled':
  file.replace:
    - name: '/etc/ssh/sshd_config'
    - pattern: '^PasswordAuthentication no'
    - repl: 'PasswordAuthentication yes'
    - append_if_not_found: True