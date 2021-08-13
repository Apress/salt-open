#!jinja|yaml
{% if data[data['service_name']]['running'] == False %}
'start_apache_web_server':
  local.service.start:
    - args:
        - name: {{ data['service_name'] }}
    - tgt: {{ data['id'] }}
{% endif %}