base:
	export DOCKER_BUILDKIT=1
	export BUILDKIT_PROGRESS=tty

	docker build \
		--build-arg usr=yay \
		-t archlinux:latest _base

multilib:
	export DOCKER_BUILDKIT=1
	export BUILDKIT_PROGRESS=tty

	docker build \
		--build-arg usr=yay \
		-t archlinux:multilib-devel _multilib

