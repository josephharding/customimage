FROM tensorflow/tensorflow:latest-gpu

RUN mkdir -p /usr/src/app
COPY . /usr/src/app

WORKDIR /usr/src/app

RUN pip install -r requirements.txt

CMD [ "python", "gpu_test.py" ]
