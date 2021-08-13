#!jinja|yaml
{% if 'act' in data and data['act'] == 'pend' and data['id'] == 'master' %}
'add_pending_master_minion':
  wheel.key.accept:
    - match: {{ data['id'] }}
{% endif %}