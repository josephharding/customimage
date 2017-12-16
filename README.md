
## Building docker containers
./build.sh work

## Running as docker container

```
docker run --runtime=nvidia -v /home/cecadmin/customimage/training_data:/usr/src/app/training_data -v /tmp/save:/usr/src/app/save --env-file=env-customimage-train josephharding/customimage-train:f89d043
```

```
docker run --runtime=nvidia -v /home/cecadmin/customimage/training_data:/usr/src/app/training_data -v /tmp/save:/usr/src/app/save --env-file=env-customimage-predict josephharding/customimage-predict:f89d043
```

where...

```
cecadmin@toybox:~$ cat env-customimage-train
PYTHONUNBUFFERED=0
CLASS_DIRS=cats,dogs
cecadmin@toybox:~$ cat env-customimage-predict
PYTHONUNBUFFERED=0
IMAGE_PATH=training_data/dogs/dog.0.jpg
cecadmin@toybox:~$
```
