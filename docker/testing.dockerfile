FROM python:3

ARG WORKSPACE="/python3/blog_server"
COPY . ${WORKSPACE}

WORKDIR ${WORKSPACE}/docker
RUN pip install -r ./testing_requirements.txt

WORKDIR ${WORKSPACE}

CMD ["python3", "testing/test.py"]
