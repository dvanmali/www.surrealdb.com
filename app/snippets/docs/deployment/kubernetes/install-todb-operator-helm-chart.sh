$ helm repo add pingcap https://charts.pingcap.org
$ helm repo update
$ helm install \
	-n tidb-operator \
	--create-namespace \
	tidb-operator \
	pingcap/tidb-operator \
	--version v1.5.1
