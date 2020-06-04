# scheduled-serverless-startup
Companion repo for the blog post. Automation scripts to turn on and off a server

## If you do want to run the app in the Vagrant box

```
$ vagrant up    # select '1' for network bridge
$ vagrant ssh
vagrant@1804-server:~$ cd /vagrant/app
vagrant@1804-server:/vagrant/app$ sudo docker-compose up --build
vagrant@1804-server:~$ curl localhost

A Howapped Project.
```


## Starting a service on boot in Ubuntu

```
sudo cp ~/vagrant/howapped-project-start-on-boot.service /etc/systemd/system/
systemctl daemon-reload
systemctl restart howapped-project-start-on-boot.service

```