PROJECT_NAME=test

run:
	tracd --port 8080 \
		--basic-auth="${PROJECT_NAME},${PWD}/htpasswd,realm" .

deps:
	sh ./get_deps.sh
