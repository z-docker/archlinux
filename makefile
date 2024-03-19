IMAGE_NAME=archlinux

base:
	export DOCKER_BUILDKIT=1
	export BUILDKIT_PROGRESS=tty

	docker build \
		--build-arg usr=yay \
		-t $(IMAGE_NAME):latest _base

multilib:
	export DOCKER_BUILDKIT=1
	export BUILDKIT_PROGRESS=tty

	docker build \
		--build-arg usr=yay \
		-t $(IMAGE_NAME):multilib _multilib

