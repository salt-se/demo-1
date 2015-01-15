appservers:
  match: 'app*'
  sls:
    - salt://awesome-app.app
rproxy:
  match: 'nginx-r*'
  require:
    - appservers
  sls:
    - salt://nginx.rproxy
all:
  match: '*'
  require:
    - appservers
    - rproxy
