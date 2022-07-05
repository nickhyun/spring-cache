
word1=$(docker ps -a | grep mancenter | awk 'BEGIN { FS="[ ]" } ; { print $1 }')

docker stop mancenter
docker rm $word1
