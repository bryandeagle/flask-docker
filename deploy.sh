docker rm -f myapp
docker build -t deagle/myapp:stable .
# docker run --init --name="myapp" --ip 172.18.0.3 --env IP=172.18.0.3 --restart always -d -p 8080:5000 deagle/myapp:stable
docker run --init --name="myapp" --network="fetch-net"  --ip 172.18.0.3 --env IP=172.18.0.3 --restart always -d -p 5150:5000 deagle/myapp:stable