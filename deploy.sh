docker rm -f fetch
docker build -t deagle/fetch:stable .
docker run --init --name="my_app" --env IP=172.18.0.2 --restart always -d -p 8080:5000 deagle/fetch:stable
