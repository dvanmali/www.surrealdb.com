replicaCount: 1

image:
  repository: surrealdb/surrealdb
  pullPolicy: IfNotPresent
  tag: latest

nameOverride: "surrealdb"

args: [start]

surrealdb:
  path: tikv://sdb-datastore-pd:2379
  log: info
  auth: false

serviceAccount:
  create: true
  annotations: {}
  name: ""

service:
  type: NodePort
  port: 8080
  selector:
    app: surrealdb

ingress:
  enabled: true
  className: gce
  annotations:
    kubernetes.io/ingress.global-static-ip-name: db
    networking.gke.io/managed-certificates: db-cert
    kubernetes.io/ingress.class: gce
    kubernetes.io/ingress.allow-http: "false"
  defaultBackend: true
  hosts:
  - host: DOMAIN
    paths:
    - path: /* 
      pathType: ImplementationSpecific

resources:
  requests:
    cpu: 1
    memory: 2Gi
