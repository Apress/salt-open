#!jinja|yaml
include:
  - .install
'Ensure the Apache Web Server is running and enabled on Startup':
  service.running:
    - name: {{ grains.apache_svc }}
    - enable: True
    - require:
        - pkg: {{ grains.apache_pkg }}