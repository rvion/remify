FROM golang
RUN apt update
RUN apt install libopencv-dev -y --no-install-recommends
RUN go get github.com/zikes/chrisify
RUN go get github.com/lazywei/go-opencv
RUN cd $GOPATH/src/github.com/zikes/chrisify && go build && go install
WORKDIR $GOPATH/src/github.com/zikes/chrisify
CMD chrisify /data/people.png > /data/remis.jpg
