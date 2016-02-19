#!/bin/bash
scp -r /var/lib/jenkins/jobs/php_test_deploy/workspace/* mohitbhagwani.s@192.168.4.78:/home/local/PAYODA/mohitbhagwani.s/raja
cd ~/raja
python manage.py blog
