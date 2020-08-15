docker rm -f myapp
docker build -t deagle/myapp:stable .
docker run --init --name="myapp" --env IP=172.18.0.2 --restart always -d -p 8080:5000 deagle/myapp:stable
