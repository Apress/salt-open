#!jinja|yaml
{% set pkg =  salt['grains.filter_by']({
'Debian': 'vim',
'RedHat': 'vim-enhanced'}) %}

'Install Vim text editor':
  pkg.installed:
    - name: {{ pkg }}