#!jinja|yaml
include:
  - .install
'Deliver web content':
  file.managed:
    - name: '/var/www/html/index.html'
    - source: 'salt://www/files/index.html'
    - require:
        - pkg: {{ grains.apache_pkg }}