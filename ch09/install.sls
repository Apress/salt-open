#!jinja|yaml
'Install the Apache Web Server':
  pkg.installed:
    - name: {{ grains.apache_pkg }}