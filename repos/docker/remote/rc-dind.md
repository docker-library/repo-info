## `docker:rc-dind`

```console
$ docker pull docker@sha256:214ccde69c7d45a32dca139be18534cb945dca27fc8121fdf538a02698a6556c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:70f0e51dabe3e0a0c689ac8cdc6db19572ddac024003d0debd42391786c624bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.4 MB (147423694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb2660fe6d8cda0223afc2c3c67469d29e9605aa2ae7f0259d7ea214d4dc9ce`
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

### `docker:rc-dind` - unknown; unknown

```console
$ docker pull docker@sha256:65cfec90cdd76bfb89474eff863696f2f1a80945755a65647ba73e1507f8dc63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 KB (34067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7f8c4c933d994b35125af96590cebbd760ecff66fc401a143521110fa967ee`

```dockerfile
```

-	Layers:
	-	`sha256:22395fd54370bb241cb7c2f778dc40a41721527ee24f6f35ce9689ad3fbeb0d5`  
		Last Modified: Mon, 31 Aug 2026 20:29:59 GMT  
		Size: 34.1 KB (34067 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:6f18aeb5c4923da95751726ac323e3839d37473f0cbdd5694919761f7413f8c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.9 MB (138878653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc5b1c81c09cf43ce881ada8c4304839d98ffd6d423450995d1922a44c1169a4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 18:19:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 18:19:53 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 18:19:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 18:19:57 GMT
ENV DOCKER_VERSION=29.8.0-rc.1
# Mon, 31 Aug 2026 18:19:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.8.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.8.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.8.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.8.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 18:19:57 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 18:19:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 18:19:59 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 18:20:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 18:20:02 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 18:20:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:20:02 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 18:20:02 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 18:20:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 18:20:02 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 18:21:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 18:21:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 18:21:14 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 18:21:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.8.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.8.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.8.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.8.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 18:21:17 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 18:21:17 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 18:21:17 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:21:17 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 18:21:17 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 18:21:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 18:21:17 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc370a8d1210c8393ae08489919e54a3f9ac7d8191f8d26a5f2d233144166bd`  
		Last Modified: Mon, 31 Aug 2026 18:20:09 GMT  
		Size: 8.1 MB (8085217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a143f464c23f5911ac7823781c26cc95ac0a70c24028e3ea6e2a7f609fa6589`  
		Last Modified: Mon, 31 Aug 2026 18:20:08 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c9618edd25262e847a5d978288c1d26d4f7b24ada6dc14f2aa0321c7bf17c7`  
		Last Modified: Mon, 31 Aug 2026 18:20:09 GMT  
		Size: 18.6 MB (18576780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c77860c340b737a09666b80f4b91c02c3ee73f9ed6a3f7b5ec2aa61d30b9fa3`  
		Last Modified: Mon, 31 Aug 2026 18:20:09 GMT  
		Size: 21.5 MB (21504858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3d9d72e376be977a0a9f6a13a8620aaf1e1bdfa71d0090fae165cc0cdd7367`  
		Last Modified: Mon, 31 Aug 2026 18:20:10 GMT  
		Size: 15.0 MB (14958268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44050a9c570c1e6eee763751f14e143b01c2e2ecd822de0a79b8b3e9d85db193`  
		Last Modified: Mon, 31 Aug 2026 18:20:10 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e56023d17d87d0320a13bdd85308568905ba88105aec9464035bf4047b4719cc`  
		Last Modified: Mon, 31 Aug 2026 18:20:11 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee59028e64eb5b32442a716b6b828c7d02c7d3f5d1109ab4ce442fc3ec6d403`  
		Last Modified: Mon, 31 Aug 2026 18:20:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d52575aa02784fc6d9912da4a764f91e7866a0b8ecb0c415c157ff2f218c1e`  
		Last Modified: Mon, 31 Aug 2026 18:21:28 GMT  
		Size: 9.5 MB (9522667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b68c1c220c33392730a38051cc66edc2840d908a418f2b1e46c13622cb77e4`  
		Last Modified: Mon, 31 Aug 2026 18:21:28 GMT  
		Size: 90.7 KB (90747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ed92dfa03c9baceffb55b6a8c932f9347ca03c08204424ac5ab738bab2d841`  
		Last Modified: Mon, 31 Aug 2026 18:21:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde8a42c5e8ece85d86e8bb11633f271febcca22a6de828a8a5518d87dee6587`  
		Last Modified: Mon, 31 Aug 2026 18:21:30 GMT  
		Size: 62.6 MB (62578506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c9e729c8ef3de51ce625c8c2a696a2d55d0cf176ecb94f47a3e6b271ae491e`  
		Last Modified: Mon, 31 Aug 2026 18:21:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de348bb185f461645cf14e4ac1683c224c6947d3ecaf636a32fc7ad11ca9cd47`  
		Last Modified: Mon, 31 Aug 2026 18:21:29 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-dind` - unknown; unknown

```console
$ docker pull docker@sha256:1b157e15b5449f5bbe1183c3bf83027bce86d7fc1d4e86cf01de51b86a95ae7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4daf8a7aee3816c5bf955ff1cf693ffcf5dc09944141e7f3d97b90045ea75dd4`

```dockerfile
```

-	Layers:
	-	`sha256:a208c60e40c2e515714264af945120dfad34ebb69814763d40b38616b424477f`  
		Last Modified: Mon, 31 Aug 2026 18:21:27 GMT  
		Size: 34.2 KB (34231 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:2200f69b949821fb1bbcbdb3e05e05d4e47b79a94c64ea1be838e1e6861fdc45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136761819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0278e09918f8ad42820c52a57616c000262752bc0ef76d062e947232a45034c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:13:18 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 19:13:18 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 19:13:18 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 19:13:23 GMT
ENV DOCKER_VERSION=29.8.0-rc.1
# Mon, 31 Aug 2026 19:13:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.8.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.8.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.8.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.8.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 19:13:23 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 19:13:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 19:13:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 19:13:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 19:13:27 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 19:13:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:13:27 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 19:13:27 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 19:13:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:13:27 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 20:12:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 20:12:27 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 20:12:27 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.8.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.8.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.8.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.8.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 20:12:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 20:12:30 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 20:12:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 20:12:30 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f975c4af205f7b43f73894bf72fe3cc57d4bfe46eff7f37f71cbba9aa669354`  
		Last Modified: Mon, 31 Aug 2026 19:13:33 GMT  
		Size: 7.4 MB (7381346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30faabf2903f1a0f93e92bc6955d2d1ac2ebf57925894fcebe0428cafc267b59`  
		Last Modified: Mon, 31 Aug 2026 19:13:33 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b7425e3a6374d2d244f264d455c88d0e9eee5316c36868249257b34e9f7e615`  
		Last Modified: Mon, 31 Aug 2026 19:13:34 GMT  
		Size: 18.6 MB (18567857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a30d37618fc2b808f95dd984026678914c6fff55afc0928e0983dd8f8359b40`  
		Last Modified: Mon, 31 Aug 2026 19:13:34 GMT  
		Size: 21.5 MB (21487128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:928eebdf4ab3c0ed3fd517d842fbea37e98907f79161e5940ae657c0816f3e11`  
		Last Modified: Mon, 31 Aug 2026 19:13:35 GMT  
		Size: 14.9 MB (14945600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a185fdd0269168ba26081bdb730b2b3e451bcd6c3570b7d8bb669c0c21a9fb9b`  
		Last Modified: Mon, 31 Aug 2026 19:13:35 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9324ef7e54857ea397b284f7067cdac2a279afaa2506a86b662c6087efe2326`  
		Last Modified: Mon, 31 Aug 2026 19:13:35 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09ab85b060e734f57f6c055000ac280f3cf602a8ddb690ad7ad545013cd793b`  
		Last Modified: Mon, 31 Aug 2026 19:13:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883882b8c700e78ab219c1ad163a7d27498b6cc2be2c9da6f6e4af5e991d2f21`  
		Last Modified: Mon, 31 Aug 2026 20:12:41 GMT  
		Size: 8.7 MB (8652587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec88680a92c18e974d857415f4b64abb446c77a3a9f40f047e884f65afa8c49`  
		Last Modified: Mon, 31 Aug 2026 20:12:41 GMT  
		Size: 87.0 KB (87016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a01434e21e08569a43c4164284b2895cc4b43fc52f7ee24dd0f5299b6eeb1f`  
		Last Modified: Mon, 31 Aug 2026 20:12:40 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b27e823146eb4fd7e6d6c30e0f0d0591bc8944fa53a10dfea820a5e18806ac3`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 62.4 MB (62371515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4959a1c45a7b7a86abee59616dadc72e36478eec578783b53c01e15d84b3731`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df8a4a36f0d2407093f928042d1a8a045869ee1224720e659f863d7241d22e5`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-dind` - unknown; unknown

```console
$ docker pull docker@sha256:2d0e1e832872b74aa1fd17f1278f941a79b64e8a2805eed6db24ca2268275a0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b87823584132207078d23f7aab8b264161d13b4ddde8978121c04dbe6c50cf9`

```dockerfile
```

-	Layers:
	-	`sha256:3146ac2c35090d39355757db82f85c342d1dc53fd61fd39124500f485072a680`  
		Last Modified: Mon, 31 Aug 2026 20:12:40 GMT  
		Size: 34.2 KB (34231 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:c57390882313971abc8dabc70452c178cd6fb859b6b89bb9adb45617b43aec28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.9 MB (136922811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f081078215d18edce27c6713b28575d8458c04d13e345c943588b3696f1043`
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

### `docker:rc-dind` - unknown; unknown

```console
$ docker pull docker@sha256:78e63e3042db320476ec9b64999c6549f50761c1b698b4562f1bf53baaa04389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 KB (34285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03798dfc4ce3882419b965293fc19c3269d8b14a4caa7cc1d56a37ebf0530edb`

```dockerfile
```

-	Layers:
	-	`sha256:59cbe28d36cc8c0d77de6044e61b009472b14882852f0f13defbbae4b149e9d4`  
		Last Modified: Mon, 31 Aug 2026 19:28:12 GMT  
		Size: 34.3 KB (34285 bytes)  
		MIME: application/vnd.in-toto+json
