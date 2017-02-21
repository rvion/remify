FROM golang
RUN apt update
RUN apt install libopencv-dev -y --no-install-recommends
RUN go get github.com/rvion/chrisify
RUN go get github.com/lazywei/go-opencv
RUN cd $GOPATH/src/github.com/rvion/chrisify && go build && go install
# WORKDIR $GOPATH/src/github.com/rvion/chrisify
# CMD chrisify /data/people.png > /data/remis.jpg
RUN go get "golang.org/x/net/websocket"
ADD src /go/src/bot
RUN go build -v bot
RUN mv bot bin/bot
# RUN which chrisifgo buy 
RUN mv /go/src/github.com/rvion/chrisify/haarcascade_frontalface_alt.xml /go/bin/
RUN cd bin
RUN ls -la bin
RUN mkdir /faces
ADD faces /faces
WORKDIR /go/bin
CMD bot $SLACK_TOKEN ./chrisify ./haarcascade_frontalface_alt.xml