## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:1f029db43a32fbb1465fe8ff4327d405154876946986170e97d7861232a8227a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:575e55254404cf956069d061d265f1109c60f725822f0629b61ccf7029de2728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150961217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c99e3fb47fc03bbd9c42ce5ce3d65ee88f896c536b79af2cfc136d4419a6cb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:09 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:15:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:15:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:19:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD []
# Thu, 17 Sep 2026 23:16:36 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 17 Sep 2026 23:16:36 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 17 Sep 2026 23:16:36 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 23:16:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 17 Sep 2026 23:16:37 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 17 Sep 2026 23:16:37 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 17 Sep 2026 23:16:37 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76a910ce805a1082e59aa660bc6a20c52b6d9e6551794b595a1f5b79af3a8e2`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 8.2 MB (8199399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77a41eff6a9611e931c7cdb9c2a26a592a035a87d4a40d5d8ec9a531e0127939`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35795b4c35e2b5056c7d2a7f183987cd418aa2c20639be490f433291162b3cab`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 20.2 MB (20247342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a101e4c098be7f9cbf60b932a2bb746557324749d63240e77e5d7fceb8226d18`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 23.1 MB (23055714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e75e082420c2ecb7a4711e89a2e6160c0a678832ec54169694c305d05e90b2b`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d17cde835025617a8f620e8a94921d0e470c663ddbdb27cd90b558b958fb1d`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 534.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e2b8e363b8b33f8120e3e40bb62f8bfa61b15111099495d22f05452820a364`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 1.0 KB (1004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1588276fcb5a60fb65f1e8ca22832df2948df6c7ab4b3539095230701b41e4a`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ad31e49bf43f0fab6b16e56fa59d2d089a8826b2791381f86849e653b3e47e`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.5 MB (1497468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a115afc07335c8a813be16958c56d944c89bceb8bf4fda90da1e30b357b5ee8e`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 81.1 KB (81103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc9825f6b28af188e07262da4dc91ded3cc1b64377c29549a51a1227e71bfdc`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60de84ae1990bd67b18e9534aeef1b90726fb127317e9c3a1401567caf56e966`  
		Last Modified: Thu, 17 Sep 2026 22:19:20 GMT  
		Size: 67.1 MB (67073294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b877ae131bce9bfa6e4b4131ea4be880f919f0bd55a5ebcca639275578fa5d0d`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b284bc96d09306351135b96221fc1d2ae588ac0de0cd9f7a3194774b8884580`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4d76c5d72c3ffb6fc854a0a9bc95a8471480344260292069b5e01923017532`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 3.6 MB (3626039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6946ff996478f35382faaf63528e870e04a6afe6126b150757c75aa60b65b344`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a3a3b6e2ee00f98b93dd4644e4861a65a69419698f20d0c5346aeeb27debb7`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335a4dd1111fc593fd499b25510a9e3d01e46e1fe531c3d4c248b8db9b0e5645`  
		Last Modified: Thu, 17 Sep 2026 23:16:43 GMT  
		Size: 12.1 MB (12122072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6b86fc25681616d4c75dfc29d14c154128bd058b3c0bd72c9b1e93d5b87e43`  
		Last Modified: Thu, 17 Sep 2026 23:16:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:326881a7829949b98cac70ebe04b7af96aacf9bc20f958dc89b8bdbcfb0fb8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74f88219e669fa524e0e3e7cc1e20cbd83e1d3f793b39851cbe7a6cd54c14f1`

```dockerfile
```

-	Layers:
	-	`sha256:39a24f6d692257089159d3188623605be503d57fa6fc0ea2b63d500747b01974`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:43a36b54b841d559a54f10ec01696598eec9213822938918fceec873f57baab3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139672374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:683f355c99adaec3f4c1bd95bcfd6f8a3520d44c5724d5c089059a34633deb62`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:14:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:14:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:14:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:14:34 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:39:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:39:12 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:39:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:39:12 GMT
CMD []
# Thu, 17 Sep 2026 23:15:12 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 17 Sep 2026 23:15:12 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 17 Sep 2026 23:15:12 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 23:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 17 Sep 2026 23:15:13 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 17 Sep 2026 23:15:13 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 17 Sep 2026 23:15:13 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ec7620a63c3a00cf72bf71b89240dabe3cb48a2776b84ab95ea8ba2e3a5f39`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.3 MB (8261584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be7c59e8fb32810b5f2a2a1a007ca3163347c2b08453fd5ad8a0db7b3fb18607`  
		Last Modified: Thu, 17 Sep 2026 21:14:40 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f235640fa4510c35c74929350640368f354db6fdb2e2c5f7526574518128307`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 18.6 MB (18635439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8ba2d022fd95025c059661ce50b0b52cac134299d848972b96b41a05b44c7b`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 20.9 MB (20882241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ca4b67ae9aa86881e5cc3f6cc90cfb8059e5683a12a43c149c0e82152423b7`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 10.2 MB (10182234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c52310338ec92b843e924c5a2ffd4ac1fc9f8414a741a7e930dacabca8c169b`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0bf0d83649b844b8a1d342b99b89b362233d1bcbdfd9a1ff4de4075c3768d7c`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76189fa74b0cb4e0a580e82162cf6d47f65b8c7e51ac8541fc68e914051621d3`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ee35a0ed9226c8c971cdf0dbe629bc2eb7a2ab4a0bff4ee7d175169464bdfb`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.7 MB (1744624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ec27d56b475fe4a7b7541f901952782aacb9a1965bf51f6906adf5ae5ec9af`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 90.4 KB (90412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29a6714f1fc1dea37cb96aca1d8ecc1ff71d343beeee58aa598bbf00fbb9ba4`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe769cd4bf23bed3d810a6b5d091cb2e4ab4c0ea8aff70a6ace73e452e5b8b0`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 60.8 MB (60816931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b730fb53e7b83f5b8e0dffe1c0d15ddd79cad046d40b3779fca1ff881da5ead`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65c124a7b8ed0436786d54d010aed0610fa50b3f2c30216577e2507c80b0347`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a33d6fe7e6d8758dbe76ae538168682ef1b03b6f05dd80d91dc724e666aa4b`  
		Last Modified: Thu, 17 Sep 2026 23:15:18 GMT  
		Size: 3.6 MB (3611094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62021cb0021111f6254af73eaf90d7975a27f4e28844843ca1e76f4229459f34`  
		Last Modified: Thu, 17 Sep 2026 23:15:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1952a79283c5b634ae25bfc9dbd13046d2947a143aac3845d86b761e83e5a61f`  
		Last Modified: Thu, 17 Sep 2026 23:15:17 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439326ac83ca684b4f6221a6fd84a2c5ce8a125e7ffe43fc8b98386be368170e`  
		Last Modified: Thu, 17 Sep 2026 23:15:18 GMT  
		Size: 11.3 MB (11250658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a77324a073000ffb80ba2a2db698bfc6f6ec358097bcbc234e22ae9dbf57493`  
		Last Modified: Thu, 17 Sep 2026 23:15:19 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:d46e0ea882bc4a9a5d7d97314255b9f128c6f7a796d40423ee86ad5e6a86ad7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825afe93221302c05637f62d2f19a6635c550541b40f27bcd123cffe9068e297`

```dockerfile
```

-	Layers:
	-	`sha256:17c1c5d2418038db83bc3716ad5218b28ef0de8b4e64bac84fa5b8dc48bc9a30`  
		Last Modified: Thu, 17 Sep 2026 23:15:17 GMT  
		Size: 30.7 KB (30656 bytes)  
		MIME: application/vnd.in-toto+json
