TARBALL = carbs-rootfs.tar.xz
URL     = https://dl.carbslinux.org/releases/x86_64/${TARBALL}

all: carbs-rootfs.tar
	docker build -t carbslinux/base .
	@echo Done.

carbs-rootfs.tar:
	@echo You will need to acquire/build Carbs Linux rootfs image. You can download
	@echo through \'make download\', which requires curl, or you can use the URL in
	@echo the Makefile to do it by yourself.

download:
	curl -Lo- ${URL} | xz -cd - > carbs-rootfs.tar
