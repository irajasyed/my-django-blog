#!/bin/bash
scp -r /var/lib/jenkins/jobs/php_test_deploy/workspace/* mohitbhagwani.s@192.168.4.78:/home/local/PAYODA/mohitbhagwani.s/raja
ssh mohitbhagwani.s@192.168.4.78
cd /home/local/PAYODA/mohitbhagwani.s/raja/my-django-blog
sudo apt-get install python-virtualenv
virtualenv myvenv_Jenkin
source myvenv_Jenkin/bin/start
pip install django==1.9
django-admin startproject mysite .
ls
python manage.py makemigrations
python manage.py migrate
python manage.py runsever 0.0.0.0:8989
