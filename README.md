# timemachine

Server:

```bash
docker run --rm -itd --net=host -v /mnt/timemachine:/timemachine -e PASSWORD=yourpassword fancl20/timemachine
```

or

```bash
rkt run --volume data,kind=host,source=/mnt/timemachine \
    docker://fancl20/timemachine --insecure-options=image \
    --mount volume=data,target=/timemachine
    --name "timemachine" --net=host --environment=PASSWORD=yourpassword \
    --caps-retain="CAP_CHOWN,CAP_DAC_OVERRIDE,CAP_FSETID,CAP_FOWNER,CAP_MKNOD,CAP_NET_RAW,CAP_SETGID,CAP_SETUID,CAP_SETFCAP,CAP_SETPCAP,CAP_NET_BIND_SERVICE,CAP_SYS_CHROOT,CAP_KILL,CAP_AUDIT_WRITE,CAP_SYS_RESOURCE"
```


Client:

```bash
sudo tmutil setdestination "afp://timemachine:yourpassword@ip/Time Machine"
```