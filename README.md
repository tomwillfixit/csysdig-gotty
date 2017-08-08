# csysdig-gotty
Running csysdig with goTTY in Docker container

# Build
```
docker build -t csysdig:gotty .
```

# Start
```
docker run -d --name sysdig --privileged -v /var/run/docker.sock:/host/var/run/docker.sock -v /dev:/host/dev -v /proc:/host/proc:ro -v /boot:/host/boot:ro -v /lib/modules:/host/lib/modules:ro -v /usr:/host/usr:ro -p 80:80 csysdig:gotty
```

# Open Browser

http://localhost:80
