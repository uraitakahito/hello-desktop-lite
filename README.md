Build the image:

```sh
PROJECT=$(basename `pwd`)
```

```sh
docker image build -t $PROJECT-image . --build-arg user_id=`id -u` --build-arg group_id=`id -g`
```

And run it:

```sh
docker container run \
  -it \
  --rm \
  --init \
  -p 5901:5901 \
  -p 6080:6080 \
  -e NODE_ENV=development \
  --mount type=bind,src=`pwd`,dst=/app \
  --name $PROJECT-container \
  $PROJECT-image /bin/zsh
```

Run the following commands inside the Docker containers:

```sh
/usr/local/share/desktop-init.sh
```

The noVNC can be accessed at:

- http://localhost:6080/
