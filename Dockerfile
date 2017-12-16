FROM nvidia/cuda:8.0-cudnn6-runtime

RUN apt update && apt install -y python-pip libglib2.0-0

RUN mkdir -p /usr/src/app
COPY . /usr/src/app

WORKDIR /usr/src/app

RUN pip install -r requirements.txt

CMD [ "python", "train.py" ]
