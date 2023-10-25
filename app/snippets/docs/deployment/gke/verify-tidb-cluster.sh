$ kubectl get tidbcluster
NAME             READY   PD                  STORAGE   READY   DESIRE   TIKV                  STORAGE   READY   DESIRE   TIDB                  READY   DESIRE   AGE
sdb-datastore   True    pingcap/pd:v7.1.1   10Gi      3       3        pingcap/tikv:v7.1.1   10Gi      3       3        pingcap/tidb:v7.1.1           0        5m
