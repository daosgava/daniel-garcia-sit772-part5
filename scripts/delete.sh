# 
# Remove containers from Kubernetes.
#
# Environment variables:
#
#   NAME - The name of the microservice to delete.
#
# Usage:
#
#   ./scripts/delete.sh
#
set -u # or set -o nounset
: "$NAME"

envsubst < ./scripts/kubernetes/${NAME}.yaml | kubectl delete -f -