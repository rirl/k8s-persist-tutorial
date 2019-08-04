#!/usr/bin/env bash
echo "BEGIN    -- [$0]: [$*]"
status=0

echo "VERIFY   -- [$0]"
set -x
   kubectl exec -it $1 -- /bin/bash
   status=$?
set +x 

echo "COMPLETE -- [$0]: [$status]"
exit $status