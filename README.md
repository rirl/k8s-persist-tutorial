# k8s-persist-tutorial
Work thru https://kubernetes.io/docs/concepts/storage/volumes/

1) [emptydir](https://kubernetes.io/docs/concepts/storage/volumes/#emptydir) 
## Test sequence

    control/deploy.sh emptydir
    control/watch.sh 
    control/data.sh
      date > /data/redis/data-eb-file
        apt-get update
        apt-get install procps
        ps aux
        # kill pid
    control/data.sh
        cat /data/rediis/data-eb-file
    control/clean.sh        

2) hostpath
3) localvolume
