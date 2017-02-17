docker pull jordotech/laruesolr
docker stop $(< /root/pid.txt)
docker rm -f $(sudo docker ps -aqf "name=laruesolr")
sudo docker run -d --name laruesolr -p 8983:8983  jordotech/laruesolr > /root/pid.txt