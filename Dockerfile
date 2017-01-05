FROM ubuntu
RUN apt-get update && apt-get -y install vim git python-pip
RUN git clone https://github.com/LevPasha/instabot.py \
  && cd instabot.py \
  && pip install requests
ADD site.py /instabot.py/site.py
CMD python /instabot.py/site.py
