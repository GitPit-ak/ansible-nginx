# DevOps Project with nginx

Welcome to an another project So in this project we will launch two web server with one nginx server

Clone this repo into your master vm goto "../ansible/" directory run the master playbook to setup the complete infra.

In nginx server we will setup:

nginx load balancer with our two web server's.

web server:
Setup one web server each server's

Goals:

we want these two web server to load balancing with each other's using nginx

what we have to do achive this goal.

vagrant will launch all three vm's (1 nginx, 2 web server)
provision master server with ansible
provision our both web server's using ansible playbook's
