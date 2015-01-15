appservers:
  match: 'app*'
  sls:
    - awesome-app.app
rproxy:
  match: 'nginx-r*'
  require:
    - appservers
  sls:
    - nginx.rproxy
all:
  match: '*'
  require:
    - appservers
    - rproxy
