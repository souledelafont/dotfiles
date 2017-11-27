docker-run-ubuntu () {
	docker run -d \
	-e AUTHORIRIZED_GH_USERS="jzck"	\
	-p 0.0.0.0:12345:22 \
	jzck/ubuntu-dev
}
