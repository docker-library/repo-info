## `docker:29-cli`

```console
$ docker pull docker@sha256:9f36dfce2d1fd053d700a4eca00c358df79bf7d8cb69d4a9e8d9981af18834ea
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

### `docker:29-cli` - linux; amd64

```console
$ docker pull docker@sha256:1b0a4c8c69b84185904584e05e5d3b6e6b5f01d1339dcfbe1cd7dfa5d5ac7543
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66547747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:437a1e2e67732f1630b70a970da514a30d7bc08059d8be46288a7d8e9c0400c4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:35:14 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 15 Sep 2026 23:35:14 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 15 Sep 2026 23:35:14 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 15 Sep 2026 23:35:16 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:35:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 15 Sep 2026 23:35:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:35:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 15 Sep 2026 23:35:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:35:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 15 Sep 2026 23:35:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 15 Sep 2026 23:35:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:35:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 15 Sep 2026 23:35:18 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 15 Sep 2026 23:35:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:35:18 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc0970eff624d05439a0725bfebe6a5625c750991e0e0274634f6b0df5ecedcf`  
		Last Modified: Tue, 15 Sep 2026 23:35:24 GMT  
		Size: 8.2 MB (8196540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45351ab25b9a81d57dc15ff44d126a2b3821aac61d0ca573ec182cd80df15d3f`  
		Last Modified: Tue, 15 Sep 2026 23:35:24 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a315c4a8b3d5f10bad9ecc73348e8a251d17a10b15c0ff2752d3bdfbf492e86`  
		Last Modified: Tue, 15 Sep 2026 23:35:25 GMT  
		Size: 20.2 MB (20247343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b183660474384fe43a50f9b59aaab68747991b167db496a64ee27405ed13576`  
		Last Modified: Tue, 15 Sep 2026 23:35:25 GMT  
		Size: 23.1 MB (23055741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cabaf1b0f2d8e1988d79819feaa9c4d6e5683fe5a9bff9b74840de623e6bdb7`  
		Last Modified: Tue, 15 Sep 2026 23:35:25 GMT  
		Size: 11.2 MB (11199579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac5b1496b6c0439db9cbacbf7dd08eab6497cde4ea09fcfebef771d245acd0a`  
		Last Modified: Tue, 15 Sep 2026 23:35:26 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b04b58cf5e2d4acf27da17f225ac132ec8f7718f7c44ac65710b48b277fb1f`  
		Last Modified: Tue, 15 Sep 2026 23:35:26 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6f2752477abdc4a4251676c5255f92f2b4d144372a9ef19d2dc3bebe438096`  
		Last Modified: Tue, 15 Sep 2026 23:35:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:329e342adb47da3c1567fd5363e0100870ba7b1d1c4d50eb0e42cb64f76753d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa1e72c13bbb0e792d0092ad9689fa7b53c015b2f8a550d1f1c3c595fa9393c`

```dockerfile
```

-	Layers:
	-	`sha256:b56f6a62df958d37c7d8666cf4a43ed77e085b4119d59d3ecbf230eefa6a946d`  
		Last Modified: Tue, 15 Sep 2026 23:35:24 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:6b6adab73921f53165cc2ebeeef73a31068844519a8087c1e7eb0c2424050433
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62737030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e444542afcf9b1ec1341141737b1b0d5b49a3c14b9a7f0249109ae6d0a1d35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:34:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 15 Sep 2026 23:34:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 15 Sep 2026 23:34:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 15 Sep 2026 23:35:02 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:35:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 15 Sep 2026 23:35:02 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:35:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 15 Sep 2026 23:35:04 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:35:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 15 Sep 2026 23:35:06 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 15 Sep 2026 23:35:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:35:06 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 15 Sep 2026 23:35:06 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 15 Sep 2026 23:35:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:35:06 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6077162302968e166e9a76ef1d0b13108700a751e301ceee875ae0e0a859314`  
		Last Modified: Tue, 15 Sep 2026 23:35:13 GMT  
		Size: 8.1 MB (8095125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34ca8170236f3d44138b9ce8377b2638deabf5c51a7b31282f9bebeff7d6ec39`  
		Last Modified: Tue, 15 Sep 2026 23:35:12 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9222f1168084d1bf9dead5b3758cd59d4aac3bd43a22787dd6244174fab557d`  
		Last Modified: Tue, 15 Sep 2026 23:35:14 GMT  
		Size: 18.8 MB (18793224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e5d35e398e0136da10036d5a2067d0cf3171ef73956293c517aabc59ea43e0`  
		Last Modified: Tue, 15 Sep 2026 23:35:14 GMT  
		Size: 21.7 MB (21670298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123689915046e97d77a475245c51754ce51a5244fa225c4f27593bccc5879227`  
		Last Modified: Tue, 15 Sep 2026 23:35:14 GMT  
		Size: 10.6 MB (10622781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adca9d5de2431e9419e8088ac4413ccee49954f1cdc6258cf72b1e1bd6a8e070`  
		Last Modified: Tue, 15 Sep 2026 23:35:14 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c5c4bf2999c93abfa8eeba0d58f40cf4958361fbbdc0547fb6891e1efd02a3`  
		Last Modified: Tue, 15 Sep 2026 23:35:15 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54b137adb46c59b5db124a9456b05cb69b1cfe0731ede416ae52748bbbf65e23`  
		Last Modified: Tue, 15 Sep 2026 23:35:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:2be8fa2bdde44554b5d25741663b6ca3f744d59f4016dcf62e60918f3bb93d41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d553518800c0bd28ca649a3af5b5aab42e39a2b6421e04ae63be1977ab484a49`

```dockerfile
```

-	Layers:
	-	`sha256:6694d549f3eca9e7d00b326a3206e5c54dda455dda9890543727ed7dbd52ca4a`  
		Last Modified: Tue, 15 Sep 2026 23:35:12 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:006fbb98356c8cdc668b9cae1c675625b75fe9f5b1b67861fed80a642f1cc78a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61698705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:009c0a8e2fd6f3ce87ba48f552119d4dd50a592526dc850bf1d58d869ced0bf2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:34:58 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 15 Sep 2026 23:34:58 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 15 Sep 2026 23:34:58 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 15 Sep 2026 23:35:02 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:35:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 15 Sep 2026 23:35:02 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:35:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 15 Sep 2026 23:35:05 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:35:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 15 Sep 2026 23:35:07 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 15 Sep 2026 23:35:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:35:07 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 15 Sep 2026 23:35:07 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 15 Sep 2026 23:35:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:35:07 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9558421f0642a8fc2fffae4dba8bb8d00c36ff0544fa5a1b0d6d040a26a404da`  
		Last Modified: Tue, 15 Sep 2026 23:35:13 GMT  
		Size: 7.4 MB (7391651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28cb73bf08b07e95a508d140951343e0296d913d92d33f2c71ce6ef36df66f51`  
		Last Modified: Tue, 15 Sep 2026 23:35:13 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27c980caf4c0ac4e22e8cc6d0075fdc1ec64a29f3a4ac27abe5619ae543495e`  
		Last Modified: Tue, 15 Sep 2026 23:35:14 GMT  
		Size: 18.8 MB (18778769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44bb25b1c7cd6fe06c20896e317827a914dda70eb17856b1b7f9b73f2bda3a20`  
		Last Modified: Tue, 15 Sep 2026 23:35:14 GMT  
		Size: 21.7 MB (21655085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab2b901b629c132b7b70b9dbd29486ce7dbd61ad34c6e9d534593652dde288dd`  
		Last Modified: Tue, 15 Sep 2026 23:35:14 GMT  
		Size: 10.6 MB (10610434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9573e693243e1bae41595b3e819b882ba79ab8837fae6780fbc7b25f11e30fd3`  
		Last Modified: Tue, 15 Sep 2026 23:35:14 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b88f5b75d14fa09dd016d6d858ce997b0b44e45d3df85ace109c07e82ae7b8db`  
		Last Modified: Tue, 15 Sep 2026 23:35:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfdf1ed9700bdf33d8ac47d2701ff46fd7658143456c5af7c15fec9d071bc1d`  
		Last Modified: Tue, 15 Sep 2026 23:35:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:e8a802be47484183b75cea13fde7e378c4e4aea24d7000a19b37a068dee1315a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d968a4d3cfcd627ce82d03aeda31799bae701343d40b7438e7c73cbfd346aa`

```dockerfile
```

-	Layers:
	-	`sha256:57a321961fa6700985419f5c3ae50a8d8e3700e2220ac2728af0969d2eac95fa`  
		Last Modified: Tue, 15 Sep 2026 23:35:13 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cb8d42f18cc5c490e2d355b04052f9e212b951c9238a1a01f4245b10b87668d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62144030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6a257d4767719b3b1d7b59b543fa11f0fdea5284a79aa999da9fffc0b595d06`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 23:34:59 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 15 Sep 2026 23:34:59 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 15 Sep 2026 23:35:00 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 15 Sep 2026 23:35:02 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:35:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 15 Sep 2026 23:35:02 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:35:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 15 Sep 2026 23:35:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:35:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 15 Sep 2026 23:35:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 15 Sep 2026 23:35:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:35:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 15 Sep 2026 23:35:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 15 Sep 2026 23:35:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 23:35:04 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9ac8badc4fc888936d80707312965c1f51b0da9ac14096fd89075c2dd96e3f`  
		Last Modified: Tue, 15 Sep 2026 23:35:10 GMT  
		Size: 8.3 MB (8258911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a83e80290f098e6065983e2a4f917dd95672cbdefe45c670c8993f85c9ed0b0`  
		Last Modified: Tue, 15 Sep 2026 23:35:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5dbd41dcdfc49fbc4a099993777e9fcae2ab99d98722eb605ed51d77b1ddd19`  
		Last Modified: Tue, 15 Sep 2026 23:35:11 GMT  
		Size: 18.6 MB (18635431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729dd1b5c0616ca0b8e8846c1f19bc572290635f753b1dbc3d7e94e7d68cd0d6`  
		Last Modified: Tue, 15 Sep 2026 23:35:11 GMT  
		Size: 20.9 MB (20882252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b37a07fef5ba72a4262fcaa938bd18777ab3a6c7cba5373bbd814473176da5f`  
		Last Modified: Tue, 15 Sep 2026 23:35:11 GMT  
		Size: 10.2 MB (10182244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb753c41aca3ee1a9b535545c508b81cdfdd548207924411bebea849fb7a106e`  
		Last Modified: Tue, 15 Sep 2026 23:35:11 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c047215e4715c8abe326776de8e1d49d583395b17d6fbcc48b06c9d29c4c8f`  
		Last Modified: Tue, 15 Sep 2026 23:35:12 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43525cc1fc678a2ebc414b71bf99306b0d6c93188d4c483c6274ae07d13692f1`  
		Last Modified: Tue, 15 Sep 2026 23:35:12 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:0e487d4551c37de6a0c906b29853ac0be9a7fa107fd877fff04d7b1fd0b97e30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825476302620a8815c53382f2eb36a51cff3f0ab057801171f3746e4ab38e14b`

```dockerfile
```

-	Layers:
	-	`sha256:8f9b576e1bb3005920a5a31ec100e10fa75953d597f5868e66c56131138a9a14`  
		Last Modified: Tue, 15 Sep 2026 23:35:09 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json
