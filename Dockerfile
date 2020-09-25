FROM ubuntu

RUN apt-get update
RUN apt-get install -y python python-pip
RUN pip install web.py==0.51
RUN pip install numpy
RUN pip install sqlalchemy
RUN pip install sqlalchemy-migrate

COPY ./ /home/galton

EXPOSE 8080
WORKDIR "/home/galton"
CMD ["python", "galton.py", "0.0.0.0:8080"]

