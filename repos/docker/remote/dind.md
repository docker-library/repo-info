## `docker:dind`

```console
$ docker pull docker@sha256:5efed980cba3fc126cf54e21a5a6ff8849d05b6e0623d6e7612f48e9cd6cd17e
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

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:77759fdec1efef224ba7110ef7b5b3c6af6164ffaef5441d3beba059bde8b857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141060340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91d8bd00911082b57a797bfe6eb76c17a648605b84e1bb2a0e6ab47fcf6184d0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 04 Sep 2026 21:06:04 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 04 Sep 2026 21:06:05 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 04 Sep 2026 21:06:05 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 04 Sep 2026 21:06:07 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 04 Sep 2026 21:06:07 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-amd64'; 			sha256='ae43fa08c796b44efc86d7a63c55f73f7c35f3101188dea7bf93bcd6f99577ba'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-arm-v6'; 			sha256='56229f2d8459f902ca4cad09e2a931e149ea7e10d8728fe4f0f315d66b76fe2c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-arm-v7'; 			sha256='9171f1aff0d6f48afd2248b493accc98d4c8d632e40698ad9444f872991acb13'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-arm64'; 			sha256='d263ce31bd2c9e9210aaa2c7537c67802bccabcd342e4c9fe4907085ddb41aa5'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-ppc64le'; 			sha256='ed99c4401ece2c6940d99c24b719332af9dfbbe8aba308c59676183a6285f376'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-riscv64'; 			sha256='8de7783c3dae7b14b361a20d35b15d9368a31a85791da53e4e96e146c7ab120a'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-s390x'; 			sha256='5209e6d229cbaee67ee9a070abf2de96304ffcc2104edcf1475a0d5458f94a50'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 04 Sep 2026 21:06:08 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:06:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 04 Sep 2026 21:06:09 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 04 Sep 2026 21:06:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 04 Sep 2026 21:06:09 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 04 Sep 2026 21:06:09 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 04 Sep 2026 21:06:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Sep 2026 21:06:09 GMT
CMD ["sh"]
# Fri, 04 Sep 2026 21:48:29 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 		zfs 	; # buildkit
# Fri, 04 Sep 2026 21:48:30 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 04 Sep 2026 21:48:30 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 04 Sep 2026 21:48:33 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
VOLUME [/var/lib/docker]
# Fri, 04 Sep 2026 21:48:33 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 04 Sep 2026 21:48:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 04 Sep 2026 21:48:33 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa4a4adde3501e331a40bb979da638d0c54badeb75fb98174e2db24dc5b666a`  
		Last Modified: Fri, 04 Sep 2026 21:06:16 GMT  
		Size: 8.2 MB (8196532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef116b41685af8dd2a8b6ec09741412c0b8b3f5d1bf8826cdb0f37a6b72132a`  
		Last Modified: Fri, 04 Sep 2026 21:06:16 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:784d21434c83d124da00dc4358f9ac9ca283259226b8c691f73cb8666b385ae2`  
		Last Modified: Fri, 04 Sep 2026 21:06:16 GMT  
		Size: 20.2 MB (20243385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e21ec1cfe3c680e1a92c41711e902e1431c0371e1ffa7b5703078052461153`  
		Last Modified: Fri, 04 Sep 2026 21:06:17 GMT  
		Size: 23.1 MB (23055768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d404a54ce3e2bed16c228f910df35d653514e20697d3e94a9f2e0309ba778f`  
		Last Modified: Fri, 04 Sep 2026 21:06:17 GMT  
		Size: 11.2 MB (11199573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c288a0b25d9ed40b6abd08b89b4e72bcd2a6b3dfc36161acfbb94a1a9bffc6f`  
		Last Modified: Fri, 04 Sep 2026 21:06:17 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a4b805e701d8b25f697f00af504b72ec533fcc4326090c2167b49e858d8f72`  
		Last Modified: Fri, 04 Sep 2026 21:06:18 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246230980c0c2cb5e22c2092046300077baaae1ad87faed4b5ac421d704d67e8`  
		Last Modified: Fri, 04 Sep 2026 21:06:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a34f0b90201abff8bcc9c4a10d3feb7a4383d0e45fb50df3359979f594f668`  
		Last Modified: Fri, 04 Sep 2026 21:48:43 GMT  
		Size: 7.3 MB (7277482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1033f2a9eb0f5af58e17fb2165fdd031f7148da6fff80c1d310cfa9008d2b29c`  
		Last Modified: Fri, 04 Sep 2026 21:48:43 GMT  
		Size: 87.9 KB (87868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26787ad8590b1be38758cee8a60ad27d76129a0bbc62071818dc1b25a046f9c9`  
		Last Modified: Fri, 04 Sep 2026 21:48:43 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c5926a040429553b04ded9b33b9cca944b731c7ef4ea7b2fb5a7bf282dc291`  
		Last Modified: Fri, 04 Sep 2026 21:48:45 GMT  
		Size: 67.1 MB (67145184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172d4398b5edd1287960590b5d14c2d6d050ba17a5710d651c7d9b59adc123b7`  
		Last Modified: Fri, 04 Sep 2026 21:48:44 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2940ffd2cce01481e6a4ee9ccb9a154831e0b7ec2ff0fa24c844ffe9f283592e`  
		Last Modified: Fri, 04 Sep 2026 21:48:44 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:9d4a2f635687da3a54815ee3221ecd7ecf0afff2f06bf75228721fb7a48fe58d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad21225dd1dc48a64a21727f2433b021d39c42512ec355ea036b42c55ed107d`

```dockerfile
```

-	Layers:
	-	`sha256:95213f5aa83412a9e7b02116aa2ffd44139fdc8109bb0baf7ec3316af9889848`  
		Last Modified: Fri, 04 Sep 2026 21:48:43 GMT  
		Size: 34.2 KB (34239 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:bb81a861e49d756f92305190bd1429c67a17d8a8d97d7050d40279e2c3799a49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132541662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1744649cdac60cbac9be6b1005ec9b8b3b2ab1fc57365b5c2746876d9646494`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 04 Sep 2026 21:08:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 04 Sep 2026 21:08:25 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 04 Sep 2026 21:08:25 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 04 Sep 2026 21:08:29 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:08:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 04 Sep 2026 21:08:29 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:08:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-amd64'; 			sha256='ae43fa08c796b44efc86d7a63c55f73f7c35f3101188dea7bf93bcd6f99577ba'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-arm-v6'; 			sha256='56229f2d8459f902ca4cad09e2a931e149ea7e10d8728fe4f0f315d66b76fe2c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-arm-v7'; 			sha256='9171f1aff0d6f48afd2248b493accc98d4c8d632e40698ad9444f872991acb13'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-arm64'; 			sha256='d263ce31bd2c9e9210aaa2c7537c67802bccabcd342e4c9fe4907085ddb41aa5'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-ppc64le'; 			sha256='ed99c4401ece2c6940d99c24b719332af9dfbbe8aba308c59676183a6285f376'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-riscv64'; 			sha256='8de7783c3dae7b14b361a20d35b15d9368a31a85791da53e4e96e146c7ab120a'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-s390x'; 			sha256='5209e6d229cbaee67ee9a070abf2de96304ffcc2104edcf1475a0d5458f94a50'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 04 Sep 2026 21:08:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:08:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 04 Sep 2026 21:08:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 04 Sep 2026 21:08:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 04 Sep 2026 21:08:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 04 Sep 2026 21:08:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 04 Sep 2026 21:08:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Sep 2026 21:08:34 GMT
CMD ["sh"]
# Fri, 04 Sep 2026 21:48:20 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 		zfs 	; # buildkit
# Fri, 04 Sep 2026 21:48:21 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 04 Sep 2026 21:48:21 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 21:48:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 04 Sep 2026 21:48:24 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 04 Sep 2026 21:48:24 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 04 Sep 2026 21:48:24 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 04 Sep 2026 21:48:24 GMT
VOLUME [/var/lib/docker]
# Fri, 04 Sep 2026 21:48:24 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 04 Sep 2026 21:48:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 04 Sep 2026 21:48:24 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5c89995d44c003ae008460b816e488d53999c1c58b4f8ce99273cbfb26deaeb`  
		Last Modified: Fri, 04 Sep 2026 21:08:40 GMT  
		Size: 8.1 MB (8095135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d43d45b47e5a75c976c2b4725d23896f5389f254dc7d121dd2066a1a8716ea6`  
		Last Modified: Fri, 04 Sep 2026 21:08:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a433b3f7363addfcc54aa6a7967e780d27a5e7d5cd9c0af6a8b21fc39294f5`  
		Last Modified: Fri, 04 Sep 2026 21:08:40 GMT  
		Size: 18.8 MB (18786603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062702f27ac83c7590539839cd74eed9d7090136ca2301bf453ad58941d3dc99`  
		Last Modified: Fri, 04 Sep 2026 21:08:40 GMT  
		Size: 21.7 MB (21670551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11d30e50bef65de1b95bb6fda0534ab66766e1460f13a5cfe64b4c289f6227c`  
		Last Modified: Fri, 04 Sep 2026 21:08:41 GMT  
		Size: 10.6 MB (10622785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3c2f7710fffe537371ed1e35d92c84390316fd4384c3c790bc5251851bdda35`  
		Last Modified: Fri, 04 Sep 2026 21:08:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8cb93eb73ab6dfc6df634153d65077269231967b5a3dbdc6ff654aec02d981`  
		Last Modified: Fri, 04 Sep 2026 21:08:41 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e503071e301829af5b6d2bf6a8d53825655a4697db1e303cb89ff27e005a6e5b`  
		Last Modified: Fri, 04 Sep 2026 21:08:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29398cebc7ba7bb39dc66ad686893bb1de4b6c14cf9c311634bcf0da9cb8fcef`  
		Last Modified: Fri, 04 Sep 2026 21:48:35 GMT  
		Size: 7.1 MB (7101965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66b49f11f2efb3053f572019656b1eff7e9537559598822997be1f6d12d5da8c`  
		Last Modified: Fri, 04 Sep 2026 21:48:35 GMT  
		Size: 87.1 KB (87070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38b13be85c212146a96ac9552de4da5d588a583cd369c0800ac8c8f1dc2e85b`  
		Last Modified: Fri, 04 Sep 2026 21:48:35 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dcd2ab988f3aafdd4cc9478710e09bf9270b112458ecc89324d906d6217e071`  
		Last Modified: Fri, 04 Sep 2026 21:48:37 GMT  
		Size: 62.6 MB (62615950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd0959e5a3f356a6a9139123e709183dea7f93ea3ebb0d3f2ebdb6a00bb3216`  
		Last Modified: Fri, 04 Sep 2026 21:48:36 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ec1a26f5daabdc0181f6fc83501f59dfdb377e4466495aed0407e98ec7f8bc`  
		Last Modified: Fri, 04 Sep 2026 21:48:36 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:089e96bed744c0b825015b86a70c304d34c97593afb5d59dcff7f1bbf5dc9856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1343ef16fca5cc3400d04750e718a9966afaaf0545f28b921dfdf07951de92`

```dockerfile
```

-	Layers:
	-	`sha256:58a09d2a2f13c794813ff9ab0193496a3bec8ddc59e4a76dfec65d0bf69c30a4`  
		Last Modified: Fri, 04 Sep 2026 21:48:34 GMT  
		Size: 34.4 KB (34419 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:f5ad5db9eabd4733ff52a87ef9b616e7c1bb196facbf66bac56f6a71a034ca05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.7 MB (130684481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad3b5286b8248bf2e2eacd0aeaf22e85070a0ecbb3654a24839e6c3387f9f7d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 04 Sep 2026 21:08:46 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 04 Sep 2026 21:08:46 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 04 Sep 2026 21:08:46 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 04 Sep 2026 21:08:51 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:08:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 04 Sep 2026 21:08:51 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:08:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-amd64'; 			sha256='ae43fa08c796b44efc86d7a63c55f73f7c35f3101188dea7bf93bcd6f99577ba'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-arm-v6'; 			sha256='56229f2d8459f902ca4cad09e2a931e149ea7e10d8728fe4f0f315d66b76fe2c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-arm-v7'; 			sha256='9171f1aff0d6f48afd2248b493accc98d4c8d632e40698ad9444f872991acb13'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-arm64'; 			sha256='d263ce31bd2c9e9210aaa2c7537c67802bccabcd342e4c9fe4907085ddb41aa5'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-ppc64le'; 			sha256='ed99c4401ece2c6940d99c24b719332af9dfbbe8aba308c59676183a6285f376'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-riscv64'; 			sha256='8de7783c3dae7b14b361a20d35b15d9368a31a85791da53e4e96e146c7ab120a'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-s390x'; 			sha256='5209e6d229cbaee67ee9a070abf2de96304ffcc2104edcf1475a0d5458f94a50'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 04 Sep 2026 21:08:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:08:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 04 Sep 2026 21:08:54 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 04 Sep 2026 21:08:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 04 Sep 2026 21:08:54 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 04 Sep 2026 21:08:54 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 04 Sep 2026 21:08:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Sep 2026 21:08:54 GMT
CMD ["sh"]
# Fri, 04 Sep 2026 21:48:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 		zfs 	; # buildkit
# Fri, 04 Sep 2026 21:48:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 04 Sep 2026 21:48:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 21:48:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 04 Sep 2026 21:48:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 04 Sep 2026 21:48:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 04 Sep 2026 21:48:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 04 Sep 2026 21:48:20 GMT
VOLUME [/var/lib/docker]
# Fri, 04 Sep 2026 21:48:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 04 Sep 2026 21:48:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 04 Sep 2026 21:48:20 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7977266c2df327ca598324bb193ab7db6b59e13dd98a26e4f53d4bfc84308cb6`  
		Last Modified: Fri, 04 Sep 2026 21:09:01 GMT  
		Size: 7.4 MB (7391663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505d1212eb286e37595f8e4ff2993ac134b7ba2543167d51f63b429f9ca4f1e6`  
		Last Modified: Fri, 04 Sep 2026 21:09:01 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8901bbfdefe3041b60b9415329e698ceea8fe702b7f6875ca7a567fe07dd68`  
		Last Modified: Fri, 04 Sep 2026 21:09:02 GMT  
		Size: 18.8 MB (18771817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db38e2e420a3cc4151f6a3152494773f30f7f28d1ae1878f90a54f377a08da2c`  
		Last Modified: Fri, 04 Sep 2026 21:09:02 GMT  
		Size: 21.7 MB (21654013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1e11ff3272fe7dbbe1b148212a34130c48f708a3f1798e7453445423559e2e`  
		Last Modified: Fri, 04 Sep 2026 21:09:02 GMT  
		Size: 10.6 MB (10610432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7ebb2d208af51846e6840569f3edd82e96af1634ba08957be05e1f482345fd3`  
		Last Modified: Fri, 04 Sep 2026 21:09:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6f910a2cf05ca32eeeeb56151430ab36ea2ee0229819e7b1eca608de9850b7`  
		Last Modified: Fri, 04 Sep 2026 21:09:03 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce774ec59c51941fe7d85c683bb014942b2c3d9d07b15ac58fcc4e48a10c693`  
		Last Modified: Fri, 04 Sep 2026 21:09:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c59e7bf21cdff7a0222e266d87726d59546c3b8b337c192e5b0a42adc853d6`  
		Last Modified: Fri, 04 Sep 2026 21:48:31 GMT  
		Size: 6.5 MB (6496376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4546daaac02e4ea65b1b8b167dc9971653e947d1938c546f30fce7e33ea37fbc`  
		Last Modified: Fri, 04 Sep 2026 21:48:31 GMT  
		Size: 83.4 KB (83419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da85dda965e5507f6d974a58ce2f59de14c929d7618f8af614d3a20391cd3f49`  
		Last Modified: Fri, 04 Sep 2026 21:48:31 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7267b82e59a5eaa9d2bb16a9aa0f920b35b5a92d959b716ba6468468706d124`  
		Last Modified: Fri, 04 Sep 2026 21:48:32 GMT  
		Size: 62.4 MB (62407999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3afd0d4bc157ed45c684bcdf7d7a1643a4d68a41fa32f6cd9dc1bb8e31fbfd5`  
		Last Modified: Fri, 04 Sep 2026 21:48:32 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2573616c7ef5826c33bcea5eb0abe1706d1dcee08d06f75e4e0bf47d682f63d5`  
		Last Modified: Fri, 04 Sep 2026 21:48:32 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:84cf8a03dbe044a02c2fb611ec84c0183d162410469c8eb2e66c43104522e165
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12910b71c9f8953b1cc26ee07b9d7be1fbd1af3a1beed776e9f4193c6a8b4b25`

```dockerfile
```

-	Layers:
	-	`sha256:7ff232780cbeda0c8a03ff045fe3d3dd46624585d5b513b1b49c97e6a5c1e30f`  
		Last Modified: Fri, 04 Sep 2026 21:48:30 GMT  
		Size: 34.4 KB (34419 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:c9da39e30475d7bf353436738239d02fb1c2a52a1c968322beccb6ec239707d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.9 MB (130915140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf1bd4e6f77a250c55a18b55bfe72e91733ed3baf623b69a1a3d41e9f3743e90`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 04 Sep 2026 21:05:50 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 04 Sep 2026 21:05:50 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 04 Sep 2026 21:05:50 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 04 Sep 2026 21:05:52 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:05:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 04 Sep 2026 21:05:52 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:05:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-amd64'; 			sha256='ae43fa08c796b44efc86d7a63c55f73f7c35f3101188dea7bf93bcd6f99577ba'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-arm-v6'; 			sha256='56229f2d8459f902ca4cad09e2a931e149ea7e10d8728fe4f0f315d66b76fe2c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-arm-v7'; 			sha256='9171f1aff0d6f48afd2248b493accc98d4c8d632e40698ad9444f872991acb13'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-arm64'; 			sha256='d263ce31bd2c9e9210aaa2c7537c67802bccabcd342e4c9fe4907085ddb41aa5'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-ppc64le'; 			sha256='ed99c4401ece2c6940d99c24b719332af9dfbbe8aba308c59676183a6285f376'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-riscv64'; 			sha256='8de7783c3dae7b14b361a20d35b15d9368a31a85791da53e4e96e146c7ab120a'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.linux-s390x'; 			sha256='5209e6d229cbaee67ee9a070abf2de96304ffcc2104edcf1475a0d5458f94a50'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 04 Sep 2026 21:05:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:05:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 04 Sep 2026 21:05:54 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 04 Sep 2026 21:05:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 04 Sep 2026 21:05:54 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 04 Sep 2026 21:05:54 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 04 Sep 2026 21:05:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 Sep 2026 21:05:54 GMT
CMD ["sh"]
# Fri, 04 Sep 2026 21:48:27 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 		zfs 	; # buildkit
# Fri, 04 Sep 2026 21:48:28 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 04 Sep 2026 21:48:28 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 21:48:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 04 Sep 2026 21:48:31 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 04 Sep 2026 21:48:31 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 04 Sep 2026 21:48:31 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 04 Sep 2026 21:48:31 GMT
VOLUME [/var/lib/docker]
# Fri, 04 Sep 2026 21:48:31 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 04 Sep 2026 21:48:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 04 Sep 2026 21:48:31 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b9eda72ca3f4a2b097c7b3d8ded938bdc0ab496537a3db1a071c588aa879b0`  
		Last Modified: Fri, 04 Sep 2026 21:06:00 GMT  
		Size: 8.3 MB (8258975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3aeac763ba7b6be1c92576ae692d3e59bc76b51ef494a6e2db62fa39448bd77`  
		Last Modified: Fri, 04 Sep 2026 21:06:00 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a406fab3a37896fa7eeb8a6d373636544e9d63b1369b4a00b0df425210b544`  
		Last Modified: Fri, 04 Sep 2026 21:06:01 GMT  
		Size: 18.6 MB (18634651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da460f81633bb30d511e79df356034a23f885d24f5a28b01c1f05c3829897107`  
		Last Modified: Fri, 04 Sep 2026 21:06:01 GMT  
		Size: 20.9 MB (20881298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5dcfebab4374466d3c6d2f9969717e704e29314c3157e78ecd202748a6572ea`  
		Last Modified: Fri, 04 Sep 2026 21:06:01 GMT  
		Size: 10.2 MB (10182242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c582563bc8c64bb8a6ae5c7b2a891d383ab708488c6e65e7820c567a71fbcf`  
		Last Modified: Fri, 04 Sep 2026 21:06:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ede3862b3ba3c007f7f9069e2a279d7fc36fcb77d44b6c8f1718aefa13a272`  
		Last Modified: Fri, 04 Sep 2026 21:06:02 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbf4f6b4834acfef78d28cb8e4794998fac79537d5935b04e1b7a6564ea1b553`  
		Last Modified: Fri, 04 Sep 2026 21:06:02 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faca1f1d54a4d170bc5649bdbbf54767f493c522a20f757264e92bbb2b05e785`  
		Last Modified: Fri, 04 Sep 2026 21:48:41 GMT  
		Size: 7.8 MB (7803471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206d6697351ee5534cac2cceef72dd2be1e304f2cfd0703c70890b85c75e4542`  
		Last Modified: Fri, 04 Sep 2026 21:48:40 GMT  
		Size: 96.8 KB (96796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c157df887fbd7acb025ee1b818e434fe0e6a4de3bd772f44eca356d5a91d81`  
		Last Modified: Fri, 04 Sep 2026 21:48:40 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3434b2a31d30bd6ffb0af6393e471f8d1f12b56e56199839427b21773b47a2e4`  
		Last Modified: Fri, 04 Sep 2026 21:48:42 GMT  
		Size: 60.9 MB (60866515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae8e54398278befd5ae37493eec5d9cc08744bcc98fb4dd1cc41e01e5c6f761`  
		Last Modified: Fri, 04 Sep 2026 21:48:42 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc0daefd182a762c61055a8637a595f5dbcad6e1e5bc3a11dcd6a28f3f3cee5`  
		Last Modified: Fri, 04 Sep 2026 21:48:42 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:b6eb505bb37b3a17b0c53f1fe42d349debb6c9a7c7566f7d3cd662408a1a9364
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac11d58e9512752f9759ccfc8169a943413d10d27385fdd7655bb76277fe4f2`

```dockerfile
```

-	Layers:
	-	`sha256:5d0a32efd56f115d960104e1e210534b6fecd27e12a061646bd4d809e6389e8d`  
		Last Modified: Fri, 04 Sep 2026 21:48:40 GMT  
		Size: 34.5 KB (34475 bytes)  
		MIME: application/vnd.in-toto+json
