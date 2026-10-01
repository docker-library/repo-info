## `docker:rc-dind-rootless`

```console
$ docker pull docker@sha256:48260758c56ab5e3372328c359f7399962d62938be26304e145d3b8bf1bd57f0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:rc-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:91c42fa047e8808c2dfd073d2cdeece9fe5bd39f570016ee06b48ff849851f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (163018419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b77a33a603a8562d395b84f7a327967547980ecbd403e28522d55084091c2e1c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:11:06 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 19:11:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 19:11:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 19:11:08 GMT
ENV DOCKER_VERSION=29.8.0-rc.1
# Mon, 31 Aug 2026 19:11:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.8.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.8.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.8.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.8.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 19:11:08 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 19:11:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 19:11:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 19:11:10 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 19:11:10 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 19:11:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:11:10 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 19:11:10 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 19:11:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:10 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 20:29:45 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 20:29:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 20:29:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 20:29:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.8.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.8.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.8.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.8.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 20:29:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 20:29:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 20:29:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 20:29:49 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 20:29:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 20:29:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 20:29:49 GMT
CMD []
# Mon, 31 Aug 2026 21:12:28 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Mon, 31 Aug 2026 21:12:28 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Mon, 31 Aug 2026 21:12:28 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 21:12:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-rootless-extras-29.8.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-rootless-extras-29.8.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Mon, 31 Aug 2026 21:12:29 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Mon, 31 Aug 2026 21:12:29 GMT
VOLUME [/home/rootless/.local/share/docker]
# Mon, 31 Aug 2026 21:12:29 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0eca6127114df98342d1c56983597c7398d1fd56fcafb0fe3d7fbe6fba86dc3`  
		Last Modified: Mon, 31 Aug 2026 19:11:17 GMT  
		Size: 8.2 MB (8184218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2059c53241d59a4570f2b49b7eb6912e2ab211a1f424c4c992cc1a666d8b10b`  
		Last Modified: Mon, 31 Aug 2026 19:11:16 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b4d9bdff4a0466400462dfff38f90f179a3fcca2867d93be0a423208f789aa1`  
		Last Modified: Mon, 31 Aug 2026 19:11:18 GMT  
		Size: 20.0 MB (19983280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a05d8cc6ebb74670de6d41e0527225ae431b965650f0386907ea19686fe9c98`  
		Last Modified: Mon, 31 Aug 2026 19:11:18 GMT  
		Size: 22.9 MB (22880297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fceece6b546f9b54a45a882098f87e39e6cb92e937aece141a620ae8e6e78bb5`  
		Last Modified: Mon, 31 Aug 2026 19:11:18 GMT  
		Size: 15.8 MB (15783087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49560040d6f2a2624b25d55146f0bdded174c1cfa60564936b8cea525cc83bb0`  
		Last Modified: Mon, 31 Aug 2026 19:11:18 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d15b6d285991e595480cb0baddab768e00463ae4a90052e97a70ce1efb4c89aa`  
		Last Modified: Mon, 31 Aug 2026 19:11:19 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822a8b39eb573119954045244b3959502596758839c21e224ea38c8e743077a0`  
		Last Modified: Mon, 31 Aug 2026 19:11:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d17590a0d7b0df297f0942fedbea907cef5e06d0a6788284278a02cd1c5527`  
		Last Modified: Mon, 31 Aug 2026 20:30:00 GMT  
		Size: 9.5 MB (9539427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e980cfbaf82e155cba707bcefb48bead13867f79bb879a14c91e10e041fe50e1`  
		Last Modified: Mon, 31 Aug 2026 20:29:59 GMT  
		Size: 91.4 KB (91369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cae459232247d0c2011e91873149f567760ace512f1e0f9f0dc3884fe108787`  
		Last Modified: Mon, 31 Aug 2026 20:29:59 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddb7b788a929f73aa38e79df573f7e328772ff8346ef3f2d22e0e2363600478`  
		Last Modified: Mon, 31 Aug 2026 20:30:01 GMT  
		Size: 67.1 MB (67107468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e41cb0b0ca01e90ae432660db040ef5dd317fbb710c66f722086488b845a9e17`  
		Last Modified: Mon, 31 Aug 2026 20:30:01 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2200bb400a2f654e3bece76a95f812a506abaa524b813e0287849f9c4294bf`  
		Last Modified: Mon, 31 Aug 2026 20:30:01 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9caf45b352e9401c5f9fb66860458ea69208da727a030fbbaadda9b6adb8bbfa`  
		Last Modified: Mon, 31 Aug 2026 21:12:35 GMT  
		Size: 3.5 MB (3471346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e4b5be55c9dc710fa5632943670b45fbc5b9f79a58620f384d46fa32872fd5`  
		Last Modified: Mon, 31 Aug 2026 21:12:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86b1ae98c60c000f79bb27c26c816e5019729a209940eb2eb9ecb0ee054bd6d`  
		Last Modified: Mon, 31 Aug 2026 21:12:35 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c72c05e66ea7c7e51d222bc0b286887e490422de1ae2bd8fef824b4e0f2693`  
		Last Modified: Mon, 31 Aug 2026 21:12:35 GMT  
		Size: 12.1 MB (12122038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785cb7c701a01d7d5fdb76013dd48da85f5bce26bf5c1a5af5318a3290ce2a47`  
		Last Modified: Mon, 31 Aug 2026 21:12:36 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:d1e40fa2686bf94040479c7004f2407020ca3a2af06b3535369cf0661618bfed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 KB (30245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289389c6f6e7ef674ffee98ed4d83294ff91c783bd309ff7c7ac3b28de646f70`

```dockerfile
```

-	Layers:
	-	`sha256:6bcedc131089f7772ea4b1411f3ad8c94e99a6b1a0f5f7490bc04139877043f7`  
		Last Modified: Mon, 31 Aug 2026 21:12:34 GMT  
		Size: 30.2 KB (30245 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ffe50bef826fe124f050e041eeb77420861ec898553889f2f07705858f33a668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.6 MB (151623654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f39c624a4ea8303cbac2bf238fee92c3dc2151869f784e8ef3e091c442291c8e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 18:19:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 18:19:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 18:19:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 18:19:38 GMT
ENV DOCKER_VERSION=29.8.0-rc.1
# Mon, 31 Aug 2026 18:19:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.8.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.8.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.8.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.8.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 18:19:38 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 18:19:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 18:19:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 18:19:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 18:19:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:19:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 18:19:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 18:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 18:19:40 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 19:27:59 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 19:27:59 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 19:27:59 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 19:28:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.8.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.8.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.8.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.8.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 19:28:02 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 19:28:02 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 19:28:02 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:28:02 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 19:28:02 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 19:28:02 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 19:28:02 GMT
CMD []
# Mon, 31 Aug 2026 20:12:34 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Mon, 31 Aug 2026 20:12:34 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Mon, 31 Aug 2026 20:12:34 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 20:12:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-rootless-extras-29.8.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-rootless-extras-29.8.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Mon, 31 Aug 2026 20:12:36 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Mon, 31 Aug 2026 20:12:36 GMT
VOLUME [/home/rootless/.local/share/docker]
# Mon, 31 Aug 2026 20:12:36 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca235c8af449ee6ce9e01aec5f80fff98c25cec5bb794628a02b0bb526b3171e`  
		Last Modified: Mon, 31 Aug 2026 18:19:46 GMT  
		Size: 8.2 MB (8236303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17f7eef8119ed490f93bee93678c9a460eab09112774f4076910f86c34a05b2f`  
		Last Modified: Mon, 31 Aug 2026 18:19:46 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f84bd6d37ca55a923c6b47ed7c61ad28451c268d1ca88207f4ee9799bc7b4c0d`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 18.4 MB (18404891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:908f4cc3559ee047c1d0d5fcd23532f85c6a25eba127a2b9fc2ae3e48676aca3`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 20.7 MB (20723310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2bf9e26fa3d03245ea57f88b7057cb5f8e71fdcd5ca6643e371a7493b69065`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 14.3 MB (14309342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7d0b09adb9c5a146543d7b30beeff326f09f0610eb42aaf4d6d32d3e4c76d5`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf79f1ad31a962449f445d467a4b7965d461bcbd70a44b66c6f99b3dc7179da`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4154931507a552560419855df96ae58288d5b670019ae3543d47a5112de82863`  
		Last Modified: Mon, 31 Aug 2026 18:19:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa69ff0460b648e9e626208b99ee41d48a558d083946fa3acd1d3f5bd4118ad`  
		Last Modified: Mon, 31 Aug 2026 19:28:12 GMT  
		Size: 10.1 MB (10119025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bbc0eb450208b8f84bd7cb151bc238b31dfbab80999a7d3d9ad52040b206916`  
		Last Modified: Mon, 31 Aug 2026 19:28:12 GMT  
		Size: 100.0 KB (99963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac6b7757b86d3af2ca189845d89bb911d2a3b53f04e85d39dfb11f0bf716720`  
		Last Modified: Mon, 31 Aug 2026 19:28:12 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67af6488e8cfe092de4888b273dab224d5b388216d62446da83803a32b361b2`  
		Last Modified: Mon, 31 Aug 2026 19:28:14 GMT  
		Size: 60.8 MB (60838779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:258cba9231565d3014a75acfac2f48037edeabcf3464fb9c1c2361af3939f4e0`  
		Last Modified: Mon, 31 Aug 2026 19:28:13 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfa36723aa0eaf08511496d6aa7bfb519dde7701cf027c524bdd6d1a7c2c879a`  
		Last Modified: Mon, 31 Aug 2026 19:28:13 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f2996ea72a06cd8f82e340267ce342cb107273850bec09f09484ebaeebe51e8`  
		Last Modified: Mon, 31 Aug 2026 20:12:41 GMT  
		Size: 3.4 MB (3448906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2402fcbd2fb56f09424ce603a3075e01446ec475df8c14cee3f560b69f704f61`  
		Last Modified: Mon, 31 Aug 2026 20:12:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca103297b6f7e6efc9888f5a36e529f261827ad3220c920ed2cff64eb60cb5ab`  
		Last Modified: Mon, 31 Aug 2026 20:12:41 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:574c331209cee86ccd76b3824e48911316abda29977eee4cc252938a68c8f3e2`  
		Last Modified: Mon, 31 Aug 2026 20:12:41 GMT  
		Size: 11.3 MB (11250594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad01feec6585a93bdc4ca08869d527e5101157cc0cfebe5263cc801b607599f9`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:855962de9bd17841d03e684f6ba3fd13081f46448e9ec1bc9be10964cda9a778
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 KB (30403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38488b76119022dc940cfba90ae6f4824fecdf03f84ca7ecfdda2ea86a9e727a`

```dockerfile
```

-	Layers:
	-	`sha256:a5f182d5c81a23768d6f762cf3015d9e9563a0ce0144a88e387dc33ea8b37fd2`  
		Last Modified: Mon, 31 Aug 2026 20:12:40 GMT  
		Size: 30.4 KB (30403 bytes)  
		MIME: application/vnd.in-toto+json
