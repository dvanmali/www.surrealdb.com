$ kubectl get pods --namespace tidb-operator -l app.kubernetes.io/instance=tidb-operator
NAME                                       READY   STATUS    RESTARTS   AGE
tidb-controller-manager-56f49794d7-hnfz7   1/1     Running   0          20s
tidb-scheduler-8655bcbc86-66h2d            2/2     Running   0          20s
