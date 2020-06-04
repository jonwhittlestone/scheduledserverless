# scheduled-serverless-startup
Companion repo for the blog post. Automation scripts to turn on and off a server

## If you do want to run the app in the Vagrant box

```
$ vagrant up    # select '1' for network bridge
$ vagrant ssh
root@1804-server:~# docker ps
CONTAINER ID        IMAGE                              COMMAND                  CREATED             STATUS              PORTS                  NAMES
95216ad3ecbc        scheduled-serverless-startup/app   "docker-entrypoint.s…"   23 seconds ago      Up 21 seconds       0.0.0.0:80->8080/tcp   app_web_1
root@1804-server:~# sudo localhost
root@1804-server:~# curl localhost

A Howapped Project.


```


## Starting a service on boot in Ubuntu

```
sudo cp ~/vagrant/howapped-project-start-on-boot.service /etc/systemd/system/
systemctl daemon-reload
systemctl restart howapped-project-start-on-boot.service

```