#!/usr/bin/env bash

sudo rm /etc/init.d/supervisord
sudo rm /etc/supervisor
sudo easy_install supervisor
sudo mkdir /etc/supervisor/
sudo mkdir /etc/supervisor/conf.d/ -p
sudo touch /etc/supervisor/conf.d/laravel-worker.conf
sudo touch /etc/supervisord.conf
sudo cp /var/app/current/supervisord.conf /etc/supervisord.conf
sudo cp /var/app/current/laravel-worker.conf /etc/supervisor/conf.d/laravel-worker.conf
sudo rm /var/log/supervisor
sudo mkdir /var/log/supervisor/
sudo touch /var/log/supervisor/supervisord.log
sudo supervisord -c /etc/supervisord.conf
sudo supervisorctl reread
sudo supervisorctl update
sudo supervisorctl start lworker:*
sudo supervisorctl status

echo 'Deployment done!';
