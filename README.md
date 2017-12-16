
## Deploy to CUDA enabled server (non-dockerized)
rsync -avz --partial --progress --exclude=env . toybox:~/customimage

## Building docker container
./build.sh work

## Running as docker container
docker run -v /home/cecadmin/customimage/training_data:/usr/src/app/training_data -v /tmp/save:/usr/src/app/save -e PYTHONUNBUFFERED=0 josephharding/customimage:fb4941e
