apiVersion: networking.gke.io/v1
kind: ManagedCertificate
metadata:
  name: db-cert
spec:
  domains:
    - DOMAIN