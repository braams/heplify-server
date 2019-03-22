NAME?=heplify-server

all:
	go build -ldflags "-s -w" -o $(NAME) cmd/heplify-server/*.go

debug:
	go build -o $(NAME) cmd/heplify-server/*.go

.PHONY: clean
clean:
	rm -fr $(NAME)