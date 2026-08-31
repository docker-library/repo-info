## `docker:29-rc-cli`

```console
$ docker pull docker@sha256:26d5380d6940c89dafdac50e9554483b120857f922a14bed9684484f9adc9163
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

### `docker:29-rc-cli` - linux; amd64

```console
$ docker pull docker@sha256:78f993e51d3224079c714b931939c5072a47d69826159ee95b4749d13bafe002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70679428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:679302cfa58345dc4531b92f6dab6bacda3feb1e49986a1e6510534b8c2b3962`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:02937edf242a5b4e4002ee71db741de9e848501203fd17a6d0639ceb328c1023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b372ccd67c87467dc3bf2689b89b533f06d91560ce6c3abe9dc5187731377369`

```dockerfile
```

-	Layers:
	-	`sha256:6dfcad51f307540cf02b58fe110b3e1c736616f71aa2dd46062fe1b8400822c6`  
		Last Modified: Mon, 31 Aug 2026 19:11:17 GMT  
		Size: 37.8 KB (37847 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-rc-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:45dcce713238bbc821829dd8d997e7a5325690ca7863ec2ea9e5f07c10b5abde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66680733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:991ca74a25ed5a2d4c2ed82171eafc55bbad23c78cb43be2d628d23dee411544`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:89c67c64a4805a9de32ac512f0eecffc4b53ede7c478aa4589985d24bff1c50a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 KB (38005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44f48b3ffe0c314f65792c41d2a86d0ec2dbac8816b15512488cb31b720e6680`

```dockerfile
```

-	Layers:
	-	`sha256:7a6521403627da1482a8c43a6f330c09b3270193dd87078b5a867209fc950d37`  
		Last Modified: Mon, 31 Aug 2026 18:20:08 GMT  
		Size: 38.0 KB (38005 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-rc-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:445a48a3840e604d7cf045e96df8433167b7fc2bd1e1f16afa3aa282edfc7d6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.6 MB (65644700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1399caf8cddc62f97038c8d394ec96a0b09cfaf20abe1c36a1ff915a0344102c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:da03c329a8269eee5826b10d0a0936760783bd8191f97be178897821ec3ce148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 KB (38005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b43aeaed2845b6d88cdf2a8cdcd025b4a226a7e709f0e804237facd613944dc`

```dockerfile
```

-	Layers:
	-	`sha256:b2ae0d07d664aafde48686a97c14cc036b9b756beb834d8bb2383db2a03a3016`  
		Last Modified: Mon, 31 Aug 2026 19:13:33 GMT  
		Size: 38.0 KB (38005 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-rc-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:6610503718422f4c9fa4ccc69ce15fd629446f5a689582836fc6dfae3ff60685
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65859038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a17a9c18a038f78b8bf8fddc3551b3c77377397ab84a6d665b49191a61310dba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:ea5fd958d7d36d546d03313de711e59f1924910e4fca675a1e3eb97984488aef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 KB (38041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53dd2d046629f44a140ce65a5e7e92f37891da9206a410625978be5a6f0440ee`

```dockerfile
```

-	Layers:
	-	`sha256:5e0111868e948dd4bf7ce219e7e21e97927b38715865df187f829367bf1f52f0`  
		Last Modified: Mon, 31 Aug 2026 18:19:46 GMT  
		Size: 38.0 KB (38041 bytes)  
		MIME: application/vnd.in-toto+json
