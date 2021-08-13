#!jinja|yaml
{% import_yaml 'common/vim-map.yaml' as osmap %}
{% set pkg =  salt['grains.filter_by'](osmap) %}

'Install Vim text editor':
  pkg.installed:
    - name: {{ pkg }}