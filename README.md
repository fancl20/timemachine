# timemachine

Server:

```bash
docker run --rm -itd --net=host -v /timemachine:/timemachine -e PASSWORD=timemachine fancl20/timemachine
```

or

```bash
/usr/bin/rkt run --volume data,kind=host,source=/mnt/timemachine \
    docker://fancl20/timemachine --insecure-options=image \
    --name "timemachine" --net=host --environment PASSWORD=yourpassword \
    --mount volume=data,target=/timemachine
```


Client:

```bash
sudo tmutil setdestination "afp://timemachine:timemachine@ip/Time Machine"
```