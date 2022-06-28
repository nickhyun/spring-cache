PS_NAME=mancenter
MC_VERSION=5.1.3

docker run -d \
 --name $PS_NAME \
 --env MC_CONTEXT_PATH=/mc \
 --env MC_ADMIN_USER=admin \
 --env MC_ADMIN_PASSWORD=myPassword11 \
 --env MC_DEFAULT_CLUSTER="dev" \
 --env MC_DEFAULT_CLUSTER_MEMBERS="127.0.0.1" \
 -v PATH_TO_PERSISTENT_FOLDER:/data \
 --rm -p 38080:8080 \
hazelcast/management-center:$MC_VERSION

