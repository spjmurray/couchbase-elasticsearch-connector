VERSION = 4.2.2

all:
	docker build . -t spjmurray/couchbase-elasticsearch-connector:$(VERSION) --build-arg VERSION=$(VERSION)
