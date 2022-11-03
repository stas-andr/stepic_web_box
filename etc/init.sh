sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
echo `pwd`
PYTHONPATH=/home/box/web/ask gunicorn -b 0.0.0.0:8000 ask.wsgi:application
