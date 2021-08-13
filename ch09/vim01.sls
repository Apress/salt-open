#!jinja|yaml
{% if salt['grains.get']('os_family') == 'Debian' %}
{%  set pkg = 'vim' %}
{% elif salt['grains.get']('os_family') == 'RedHat' %}
{%  set pkg = 'vim-enhanced' %}
{% else %}
{%  set pkg = 'vim' %}
{% endif %}

'Install Vim text editor':
  pkg.installed:
    - name: {{ pkg }}