FROM sysdig/sysdig

RUN apt-get update
RUN apt-get install -y golang git
RUN export GOPATH=/usr/go ; mkdir $GOPATH ; export PATH=$GOPATH/bin:$PATH ; go get github.com/yudai/gotty

ENTRYPOINT /usr/go/bin/gotty -p 80 -w csysdig -pc
