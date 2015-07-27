# Set the base image to Ubuntu
FROM python:3-onbuild
CMD [ "python", "./lena.py" ]

# File Author / Maintainer
MAINTAINER Paulina Lach

ADD ./lena.py /home/lena.py

ENTRYPOINT /home/lena.py