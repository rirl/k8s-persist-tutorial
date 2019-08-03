#!/usr/bin/env bash
echo "BEGIN    -- [$0]: [$*]"
status=0

echo "VERIFY   -- [$0]"
set -x
   kubectl get pod $1 --watch
set +x 

echo "COMPLETE -- [$0]: [$status]"
exit $status