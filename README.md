# timemachine

Server:

```bash
docker run --rm -itd --net=host -v /timemachine:/timemachine -E PASSWORD=yourpassword fancl20/timemachine
```

Client:

```bash
sudo tmutil setdestination "afp://timemachine:timemachine@ip/Time Machine"
```