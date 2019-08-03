#!/usr/bin/env bash
echo "BEGIN    -- [$0]: [$*]"
status=0

set -x
  kubectl apply -f  ./$1/redis.yaml
  status=$?
set +x 

echo "COMPLETE -- [$0]: [$status]"
exit $status