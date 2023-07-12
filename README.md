# DevOps Project 
![digram drawio](https://github.com/GitPit-ak/ansible-nginx/assets/44562876/b7c75c1b-167e-403f-8f49-728484752210)
# Automated web server with nginx locally.
We are implementing a load balancing setup using NGINX to distribute incoming requests between two web servers. To achieve this goal, we will utilize Vagrant to launch three virtual machines: one for NGINX and two for the web servers. The master server will be provisioned with Ansible, and we will use Ansible playbooks to provision both web servers.

Overall, this setup will enhance our system's scalability, fault tolerance, and responsiveness, resulting in an improved user experience.
Clone this repo into your master vm goto "../ansible/" directory run the master playbook to setup the complete infra.



In nginx server we will setup:
- nginx load balancer with our two web server's.

web server:
- Setup one web server each server's

Goals:
- we want these two web server to load balancing with each other's using nginx
