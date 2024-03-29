FROM ubuntu

RUN apt-get update
RUN apt-get install -y python2 python2-dev make automake gcc g++
RUN apt-get install -y curl
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
RUN python2 get-pip.py
RUN pip install web.py==0.51
RUN pip install numpy
RUN pip install sqlalchemy
RUN pip install sqlalchemy-migrate

COPY ./ /home/galton

EXPOSE 8080
WORKDIR "/home/galton"
CMD ["python2", "galton.py", "0.0.0.0:8080"]

