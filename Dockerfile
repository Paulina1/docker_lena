# Set the base image to Ubuntu
FROM python:3-onbuild
CMD [ "python", "./lena.py" ]

# File Author / Maintainer
MAINTAINER Paulina Lach

# Update the repository sources list
RUN apt-get update

ADD ./lena.py /home/lena.py
RUN python /home/lena.py

ENTRYPOINT /home/lena.py