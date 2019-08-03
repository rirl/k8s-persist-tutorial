#!/usr/bin/env bash
echo "BEGIN    -- [$0]: [$*]"
status=0

set -x
kubectl delete pod $1
set +x 

echo "COMPLETE -- [$0]: [$status]"
exit $status