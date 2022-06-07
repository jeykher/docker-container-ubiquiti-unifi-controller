#!/bin/bash
docker run -d -it --privileged --name ubiquiti-controller -p 8081:8080 -p 8443:8443 -v /data:/var/lib/mongodb jeykher/ubiquiti-controller:1.0 /bin/bash