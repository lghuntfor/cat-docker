#!/bin/bash

docker stop cat-server
docker rm cat-server

docker run -d --name cat-server  -p 2281:2281 -p 2280:2280  --privileged=true --cap-add=SYS_PTRACE -v /data/appdatas:/data/appdatas -v /data/applogs:/data/applogs  cat:3.0.0


