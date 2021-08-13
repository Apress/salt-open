#yaml
'add_record_for_host_salt':
  host.present:
    - name: salt
    - ip: 192.168.33.100
    - clean: True