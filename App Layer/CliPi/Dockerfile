from tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
RUN apk -- update add bash nano
ENV STATIC_URL /STATIC_URL
ENV STATIC_PATH /var/www/app/static
COPY ./requirements.txt /var/www/requirements.txt
RUN pip3 install -r /var/www/requirements.txt