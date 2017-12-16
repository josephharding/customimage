#FROM tensorflow/tensorflow:latest-gpu
FROM nvidia/cuda

RUN apt update && apt install -y python-pip

RUN mkdir -p /usr/src/app
COPY . /usr/src/app

WORKDIR /usr/src/app

RUN pip install -r requirements.txt

CMD [ "python", "gpu_test.py" ]
