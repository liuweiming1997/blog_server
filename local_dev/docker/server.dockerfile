FROM python:3

ARG WORKSPACE="/python3/blog_server"
COPY ./app ${WORKSPACE}/app
COPY ./local_dev/docker ${WORKSPACE}/local_dev/docker

WORKDIR ${WORKSPACE}/local_dev/docker
RUN pip install -r ./server_requirements.txt

WORKDIR ${WORKSPACE}/app

CMD ["python3" , "app.py"]
