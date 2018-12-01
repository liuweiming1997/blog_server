FROM python:3

ARG WORKSPACE="/python3/blog-server"
COPY . ${WORKSPACE}

WORKDIR ${WORKSPACE}/docker
RUN pip install --no-cache-dir -r ./requirements.txt

WORKDIR ${WORKSPACE}

CMD ["python3", "app.py"]
