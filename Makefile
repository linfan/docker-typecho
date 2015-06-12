build:
	docker build --tag typecho .
run:
	docker run --rm -P typecho
clean:
	for i in $$(docker images | grep "<none>" | awk "{print \$$3}"); do docker rmi -f $$i; done
