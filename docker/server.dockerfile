FROM python:3

ARG WORKSPACE="/python3/blog_server"
COPY . ${WORKSPACE}

WORKDIR ${WORKSPACE}/docker
RUN pip install -r ./server_requirements.txt

WORKDIR ${WORKSPACE}

CMD ["python3" , "app.py"]
