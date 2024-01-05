FROM python:3.9-alpine3.12
COPY requirements.txt requirements.txt
COPY locustfile.py locustfile.py
RUN apk --no-cache add --virtual=.build-dep \
      build-base \
    && apk --no-cache add bash libzmq libffi-dev libgcc g++ zeromq-dev \
    && pip install --upgrade pip \
    && pip install -r requirements.txt \
    && apk del .build-dep
#host.docker.internal acessar o host da maquina pelo container
CMD ["locust", "-f", "locustfile.py", "--modern-ui"]