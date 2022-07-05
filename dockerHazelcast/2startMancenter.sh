PS_NAME=mancenter
MC_VERSION=5.1.3

docker run -d \
 --name $PS_NAME \
 --env MC_HTTP_PORT=38080 \
 --env MC_CONTEXT_PATH=/mc \
 --env MC_ADMIN_USER=admin \
 --env MC_ADMIN_PASSWORD=myPassword11 \
 --env MC_DEFAULT_CLUSTER="dev" \
 --env MC_DEFAULT_CLUSTER_MEMBERS="192.168.29.187" \
 -v PATH_TO_PERSISTENT_FOLDER:/data \
 -p 38080:38080 \
hazelcast/management-center:$MC_VERSION

