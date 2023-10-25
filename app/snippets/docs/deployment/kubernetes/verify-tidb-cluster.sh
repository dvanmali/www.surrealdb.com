$ kubectl get -n tikv tidbcluster
NAME    READY   PD                  STORAGE   READY   DESIRE   TIKV   STORAGE   READY   DESIRE   TIDB   READY   DESIRE   AGE
basic   False   pingcap/pd:v7.1.1   1Gi       1       1               1Gi               1                       1        41s
$ kubectl get -n tikv tidbcluster
NAME    READY   PD                  STORAGE   READY   DESIRE   TIKV                  STORAGE   READY   DESIRE   TIDB                  READY   DESIRE   AGE
basic   True    pingcap/pd:v7.1.1   1Gi       1       1        pingcap/tikv:v7.1.1   1Gi       1       1        pingcap/tidb:v7.1.1   1       1        5m
