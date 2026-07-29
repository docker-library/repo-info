## `docker:rc`

```console
$ docker pull docker@sha256:9d7c4093e9bff1b254d2bf56f4f1c5b91941384d6206a026f101e11b64915269
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

### `docker:rc` - linux; amd64

```console
$ docker pull docker@sha256:bcb68d040d3c8be21e4db13b899a4809350a20b6abaca9ce4803b5bf6d90ede3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (141972143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d38f5fddbfa804d863c7f2ab875327bbedd5ee3356152f20ba13296b66126d3`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 16 Jun 2026 00:12:09 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 16 Jun 2026 00:12:10 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 16 Jun 2026 00:12:10 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 16 Jun 2026 00:12:12 GMT
ENV DOCKER_VERSION=29.6.0-rc.1
# Tue, 16 Jun 2026 00:12:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.6.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.6.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.6.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.6.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 16 Jun 2026 00:12:12 GMT
ENV DOCKER_BUILDX_VERSION=0.34.1
# Tue, 16 Jun 2026 00:12:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-amd64'; 			sha256='f1332ddb9010bd0b72628266c3a906d9a6979848033df4c8d9bd2cd113bae12b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm-v6'; 			sha256='1f6c8a082281706a0b9e24b64b9210ca0df5273ceaf600536012e7a62d790538'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm-v7'; 			sha256='ad4e0938c94638ac882641b924f6eff6889cc59a11f062e733cf337458aa6f35'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm64'; 			sha256='c34e32dd6ea2653d960d6c099c9f09b9077e4a37504d2d31e5066eccc3904231'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-ppc64le'; 			sha256='a509dc17005a4eee3568336d9e2479642e53b31110e039a8f5b4e6079744d0e2'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-riscv64'; 			sha256='c2cf15773a0610e6de34a04e9191b07915d0ea2afb381a37ac87f0dcb213b85a'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-s390x'; 			sha256='edb0e83d5a2fa8913d0af46385b648408b4776ee3241b4c15f92fcadbc72b550'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 16 Jun 2026 00:12:14 GMT
ENV DOCKER_COMPOSE_VERSION=5.1.4
# Tue, 16 Jun 2026 00:12:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-x86_64'; 			sha256='33b208d7e76639db742fae84b966cc01dacae58ca3fc4dabbc907045aefdf0c4'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-armv6'; 			sha256='38c8b500e75de30707024db9d135af979f4fdf6b9bae82b7a854b17eddad1205'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-armv7'; 			sha256='5cce4229012b8b18067fba078c9ec4e2a5dd47cb4cb3a0cc3d431f6fc429060f'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-aarch64'; 			sha256='d4fb48b72857810314d3ee77123c89954101844efa4788031221f4c370495946'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-ppc64le'; 			sha256='044a5a6eac8ba3b686e5ad74d529293372eb6d8553685738fe93ae6a6fd92790'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-riscv64'; 			sha256='03565cf8e16b3afa6fd6555d697b3237ea2d4dbd5547ab6835bc90fa7e5e00bb'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-s390x'; 			sha256='5bd0db672b07bb86272e84bbddd286f42fe9b84080e4d47ad3a91a84bd8c2c3d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 16 Jun 2026 00:12:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 16 Jun 2026 00:12:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 16 Jun 2026 00:12:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 16 Jun 2026 00:12:14 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 16 Jun 2026 00:12:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Jun 2026 00:12:14 GMT
CMD ["sh"]
# Tue, 16 Jun 2026 01:12:14 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 16 Jun 2026 01:12:15 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 16 Jun 2026 01:12:15 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 16 Jun 2026 01:12:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.6.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.6.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.6.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.6.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 16 Jun 2026 01:12:18 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 16 Jun 2026 01:12:18 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 16 Jun 2026 01:12:18 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 16 Jun 2026 01:12:18 GMT
VOLUME [/var/lib/docker]
# Tue, 16 Jun 2026 01:12:18 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 16 Jun 2026 01:12:18 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 16 Jun 2026 01:12:18 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3d2c4fe08f5070dcc1b7d1aeb3f870270c72426703337d90b6fb2c3dd4a54e`  
		Last Modified: Tue, 16 Jun 2026 00:12:21 GMT  
		Size: 8.2 MB (8170577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3f4aad85f80b4d1c7b41fff369b68679279ecf1ee2d503b45cfe1617c6599b`  
		Last Modified: Tue, 16 Jun 2026 00:12:21 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85491ce02403d1271fdc7df371ac98a033cb356431de26a62c621ebcd374b33d`  
		Last Modified: Tue, 16 Jun 2026 00:12:22 GMT  
		Size: 19.4 MB (19439785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a19fa01b90a24a6000d1d978f3f226ca8a0f1963d8abc5c478a6f8ea3c93a7d`  
		Last Modified: Tue, 16 Jun 2026 00:12:22 GMT  
		Size: 23.0 MB (22988914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f83a25c22a1caef1887cb95fa05f641b01d33a0426c1b222e6789bd06e0bc7f`  
		Last Modified: Tue, 16 Jun 2026 00:12:22 GMT  
		Size: 11.4 MB (11395945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9463009f11a6a6390b19e8e8000c4763d2b281bfcf1e1bde3b7bb05c8d3afb57`  
		Last Modified: Tue, 16 Jun 2026 00:12:23 GMT  
		Size: 534.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5daec25d55139c26e0086d59b347807d6615a46070a3a54f2df76ceab1d857a`  
		Last Modified: Tue, 16 Jun 2026 00:12:23 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bfaffc4511a2405ff5750b580bde87b13e5dc8b89d537fed7012717df60fe04`  
		Last Modified: Tue, 16 Jun 2026 00:12:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebb867c90ea88b2fea61ed862db123817583c33d64180419761ed797e709c52`  
		Last Modified: Tue, 16 Jun 2026 01:12:30 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad8393280d0f9e0ed85a1c2b3bd9ed050cead853279ef1916f282cbb9a53a3c8`  
		Last Modified: Tue, 16 Jun 2026 01:12:29 GMT  
		Size: 91.3 KB (91321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d9383bfdda01c968317e33876838474cc1d4dbf54be54929ebf16d66b2c2601`  
		Last Modified: Tue, 16 Jun 2026 01:12:29 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170232ff4a44ba33b705be68c09be9029d6e98f86a6313043a1b9a40e0baad3c`  
		Last Modified: Tue, 16 Jun 2026 01:12:32 GMT  
		Size: 69.1 MB (69065833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311669bf22f82dd7a34c697da4a0b9f9e1d033156fbd8ee0c0d6f885245e0562`  
		Last Modified: Tue, 16 Jun 2026 01:12:31 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d18387077e56756c3b2d9aad2d807fa9ed3564c8744c953260fca5e225bda6`  
		Last Modified: Tue, 16 Jun 2026 01:12:31 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc` - unknown; unknown

```console
$ docker pull docker@sha256:daed0053ded14ea2146224f309dd7f7d023451d574d87518fc6ae33869c2f717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 KB (34067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:018062aa7d44e667f53526832ac28ed9e4bb74729b1184123e7ddf9b98a847be`

```dockerfile
```

-	Layers:
	-	`sha256:9c80f9f554ba406f042840dc872bf56e97cc519461d3f1fa9961c71c3ed4c706`  
		Last Modified: Tue, 16 Jun 2026 01:12:29 GMT  
		Size: 34.1 KB (34067 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc` - linux; arm variant v6

```console
$ docker pull docker@sha256:6360bca2b5c451597f57f8318591be7991c15bb140a13cd6b1e73a398f776bc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133861200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea2646815cdd3d2709f8d5e5002b3577954d32387332392c5bc7e711ca5440e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 16 Jun 2026 00:09:59 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 16 Jun 2026 00:09:59 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 16 Jun 2026 00:09:59 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 16 Jun 2026 00:10:04 GMT
ENV DOCKER_VERSION=29.6.0-rc.1
# Tue, 16 Jun 2026 00:10:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.6.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.6.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.6.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.6.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 16 Jun 2026 00:10:04 GMT
ENV DOCKER_BUILDX_VERSION=0.34.1
# Tue, 16 Jun 2026 00:10:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-amd64'; 			sha256='f1332ddb9010bd0b72628266c3a906d9a6979848033df4c8d9bd2cd113bae12b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm-v6'; 			sha256='1f6c8a082281706a0b9e24b64b9210ca0df5273ceaf600536012e7a62d790538'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm-v7'; 			sha256='ad4e0938c94638ac882641b924f6eff6889cc59a11f062e733cf337458aa6f35'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm64'; 			sha256='c34e32dd6ea2653d960d6c099c9f09b9077e4a37504d2d31e5066eccc3904231'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-ppc64le'; 			sha256='a509dc17005a4eee3568336d9e2479642e53b31110e039a8f5b4e6079744d0e2'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-riscv64'; 			sha256='c2cf15773a0610e6de34a04e9191b07915d0ea2afb381a37ac87f0dcb213b85a'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-s390x'; 			sha256='edb0e83d5a2fa8913d0af46385b648408b4776ee3241b4c15f92fcadbc72b550'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 16 Jun 2026 00:10:07 GMT
ENV DOCKER_COMPOSE_VERSION=5.1.4
# Tue, 16 Jun 2026 00:10:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-x86_64'; 			sha256='33b208d7e76639db742fae84b966cc01dacae58ca3fc4dabbc907045aefdf0c4'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-armv6'; 			sha256='38c8b500e75de30707024db9d135af979f4fdf6b9bae82b7a854b17eddad1205'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-armv7'; 			sha256='5cce4229012b8b18067fba078c9ec4e2a5dd47cb4cb3a0cc3d431f6fc429060f'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-aarch64'; 			sha256='d4fb48b72857810314d3ee77123c89954101844efa4788031221f4c370495946'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-ppc64le'; 			sha256='044a5a6eac8ba3b686e5ad74d529293372eb6d8553685738fe93ae6a6fd92790'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-riscv64'; 			sha256='03565cf8e16b3afa6fd6555d697b3237ea2d4dbd5547ab6835bc90fa7e5e00bb'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-s390x'; 			sha256='5bd0db672b07bb86272e84bbddd286f42fe9b84080e4d47ad3a91a84bd8c2c3d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 16 Jun 2026 00:10:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 16 Jun 2026 00:10:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 16 Jun 2026 00:10:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 16 Jun 2026 00:10:09 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 16 Jun 2026 00:10:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Jun 2026 00:10:09 GMT
CMD ["sh"]
# Tue, 16 Jun 2026 01:10:36 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 16 Jun 2026 01:10:37 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 16 Jun 2026 01:10:37 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 16 Jun 2026 01:10:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.6.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.6.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.6.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.6.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 16 Jun 2026 01:10:40 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 16 Jun 2026 01:10:40 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 16 Jun 2026 01:10:40 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 16 Jun 2026 01:10:40 GMT
VOLUME [/var/lib/docker]
# Tue, 16 Jun 2026 01:10:40 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 16 Jun 2026 01:10:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 16 Jun 2026 01:10:40 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8f5f279a6200964e15410ac7c666973b43eaae55ef7a79e5778f60b8551611`  
		Last Modified: Tue, 16 Jun 2026 00:10:15 GMT  
		Size: 8.1 MB (8070162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1965e4a7d61528b847329127748b4a861b5f4ee0a639e8dfbcd5be5fbf3b277a`  
		Last Modified: Tue, 16 Jun 2026 00:10:15 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8968203fd3210e53ee747dab0d964b0e459f149fefad4514941ca468e067bc`  
		Last Modified: Tue, 16 Jun 2026 00:10:15 GMT  
		Size: 18.1 MB (18080309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5518f9a9b95c74ba4b434a7be52226d64c2c31aa78e2afd8d6462cc55be7acd`  
		Last Modified: Tue, 16 Jun 2026 00:10:16 GMT  
		Size: 21.6 MB (21614595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012f7f966fab24253817cd39ec5ae4210c2b29d3bb6592b522da7a53d9f2b151`  
		Last Modified: Tue, 16 Jun 2026 00:10:16 GMT  
		Size: 10.8 MB (10812610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc33384ba431c030ee4a0ce49bce3bbc7096b9ce2934da7be8dc2e893db8d1e3`  
		Last Modified: Tue, 16 Jun 2026 00:10:17 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3109caa5ace3cde219d72b884a613b684d0317a187bf96975f61a60eb4021aa`  
		Last Modified: Tue, 16 Jun 2026 00:10:17 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9e67ed3df8c7bc5e177f97c5d6292abbfd672503c92fff6fd9d047dd911e6e`  
		Last Modified: Tue, 16 Jun 2026 00:10:17 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf754af05f04e270f2392fe36ec700c0e140fe26e222ae912fd6d8aee142f4cb`  
		Last Modified: Tue, 16 Jun 2026 01:10:51 GMT  
		Size: 7.3 MB (7304089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d6ae2afe67e2248e90de0dbff03b1413ce924bf2e9b3cfd41a508584eaee24`  
		Last Modified: Tue, 16 Jun 2026 01:10:50 GMT  
		Size: 90.7 KB (90711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c946a4a7f7902271ab27b4569518a5ad395326cbb083f0f1a4778c76862e1`  
		Last Modified: Tue, 16 Jun 2026 01:10:50 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6138b0bf292ff65ad8d9d3b9797aa3b1c6e4595c7d5db8ae68f9430f2d692da0`  
		Last Modified: Tue, 16 Jun 2026 01:10:52 GMT  
		Size: 64.3 MB (64327117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84f91e67274a08fb71df0e349c9c8f2c907fa0e0e1d3932fe506db8636d961f`  
		Last Modified: Tue, 16 Jun 2026 01:10:52 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8933ebf3ae843773c7e0c6bd8a7a9f992c3eed1ef8595ecf26f0f0a8554187`  
		Last Modified: Tue, 16 Jun 2026 01:10:52 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc` - unknown; unknown

```console
$ docker pull docker@sha256:a1d88a0fbf55d5219538b56ce64a8cdcaf747d5b36e79512b7b4e8bdb3cb3b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9472cd899076cd2b95a092e4723c6fa39845243fcd01cd82a0c66e0f8f9283d`

```dockerfile
```

-	Layers:
	-	`sha256:451e06e61254fe9f89e3a0fe97a580cd55333d480e070258439d2dd25ca4d72c`  
		Last Modified: Tue, 16 Jun 2026 01:10:50 GMT  
		Size: 34.2 KB (34231 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc` - linux; arm variant v7

```console
$ docker pull docker@sha256:518a7c34f548c4747046113cd4b92503ae15d8d7b6c764a2e0478f5fae2dd1c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131937052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:937c82b17146172d5c1e135716adee0aba7785715208a8b6b52d58199ffd4df8`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 16 Jun 2026 00:12:27 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 16 Jun 2026 00:12:27 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 16 Jun 2026 00:12:27 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 16 Jun 2026 00:12:33 GMT
ENV DOCKER_VERSION=29.6.0-rc.1
# Tue, 16 Jun 2026 00:12:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.6.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.6.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.6.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.6.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 16 Jun 2026 00:12:33 GMT
ENV DOCKER_BUILDX_VERSION=0.34.1
# Tue, 16 Jun 2026 00:12:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-amd64'; 			sha256='f1332ddb9010bd0b72628266c3a906d9a6979848033df4c8d9bd2cd113bae12b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm-v6'; 			sha256='1f6c8a082281706a0b9e24b64b9210ca0df5273ceaf600536012e7a62d790538'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm-v7'; 			sha256='ad4e0938c94638ac882641b924f6eff6889cc59a11f062e733cf337458aa6f35'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm64'; 			sha256='c34e32dd6ea2653d960d6c099c9f09b9077e4a37504d2d31e5066eccc3904231'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-ppc64le'; 			sha256='a509dc17005a4eee3568336d9e2479642e53b31110e039a8f5b4e6079744d0e2'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-riscv64'; 			sha256='c2cf15773a0610e6de34a04e9191b07915d0ea2afb381a37ac87f0dcb213b85a'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-s390x'; 			sha256='edb0e83d5a2fa8913d0af46385b648408b4776ee3241b4c15f92fcadbc72b550'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 16 Jun 2026 00:12:35 GMT
ENV DOCKER_COMPOSE_VERSION=5.1.4
# Tue, 16 Jun 2026 00:12:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-x86_64'; 			sha256='33b208d7e76639db742fae84b966cc01dacae58ca3fc4dabbc907045aefdf0c4'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-armv6'; 			sha256='38c8b500e75de30707024db9d135af979f4fdf6b9bae82b7a854b17eddad1205'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-armv7'; 			sha256='5cce4229012b8b18067fba078c9ec4e2a5dd47cb4cb3a0cc3d431f6fc429060f'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-aarch64'; 			sha256='d4fb48b72857810314d3ee77123c89954101844efa4788031221f4c370495946'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-ppc64le'; 			sha256='044a5a6eac8ba3b686e5ad74d529293372eb6d8553685738fe93ae6a6fd92790'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-riscv64'; 			sha256='03565cf8e16b3afa6fd6555d697b3237ea2d4dbd5547ab6835bc90fa7e5e00bb'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-s390x'; 			sha256='5bd0db672b07bb86272e84bbddd286f42fe9b84080e4d47ad3a91a84bd8c2c3d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 16 Jun 2026 00:12:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 16 Jun 2026 00:12:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 16 Jun 2026 00:12:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 16 Jun 2026 00:12:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 16 Jun 2026 00:12:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Jun 2026 00:12:37 GMT
CMD ["sh"]
# Tue, 16 Jun 2026 01:10:32 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 16 Jun 2026 01:10:32 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 16 Jun 2026 01:10:32 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 16 Jun 2026 01:10:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.6.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.6.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.6.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.6.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 16 Jun 2026 01:10:36 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 16 Jun 2026 01:10:36 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 16 Jun 2026 01:10:36 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 16 Jun 2026 01:10:36 GMT
VOLUME [/var/lib/docker]
# Tue, 16 Jun 2026 01:10:36 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 16 Jun 2026 01:10:36 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 16 Jun 2026 01:10:36 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae9a6728c10c54dd6bffc807ec2c4539a917fece693d9c0d685044cc9227463e`  
		Last Modified: Tue, 16 Jun 2026 00:12:43 GMT  
		Size: 7.4 MB (7371144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6558b48129de515cf74d229cdf1f87d85dc471ccb945619f0c90fb25bb7796e5`  
		Last Modified: Tue, 16 Jun 2026 00:12:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa0d6bd68e35650e14e5339995ea0830b03605b42d1ff97273a62759e37fa33f`  
		Last Modified: Tue, 16 Jun 2026 00:12:44 GMT  
		Size: 18.1 MB (18061302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd69ed48b65d7959b1abb7dbb5804c60727796b2d186f48e1adb48edfbbf9227`  
		Last Modified: Tue, 16 Jun 2026 00:12:44 GMT  
		Size: 21.6 MB (21600712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afec1fa2380f7ba2a88561a57887b639b2530051861da13590109e2cbfc4da60`  
		Last Modified: Tue, 16 Jun 2026 00:12:44 GMT  
		Size: 10.8 MB (10799595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d4f10661c8de923ab0dde03897ca40beed083c4332bcc4ee35b76a95cbfecac`  
		Last Modified: Tue, 16 Jun 2026 00:12:45 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bb60bc084f92df0dc7c1f8cba4910d48ff3cf2a0e3bd98b52767b37adb2d82`  
		Last Modified: Tue, 16 Jun 2026 00:12:45 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc204d38f756fbc9602479833b5f8734021ebde27483a06046c9ca4b94d479aa`  
		Last Modified: Tue, 16 Jun 2026 00:12:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2e69c0e7387043ba21f6f2fa4ed49a64bcf7a265fc2c5fd970e06030ec3e988`  
		Last Modified: Tue, 16 Jun 2026 01:10:46 GMT  
		Size: 6.6 MB (6598785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7169f45cd5521256e58c7433e3a9fac51aa4fdc1ed6c9b350d1d93b2127e346`  
		Last Modified: Tue, 16 Jun 2026 01:10:46 GMT  
		Size: 87.0 KB (86967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab561b2a8b52c3faa145ff4410ce3e24b68a7d405c1842fc81533fd1fa9bf3d1`  
		Last Modified: Tue, 16 Jun 2026 01:10:46 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1eccc1bc913ca140c73d036ef82267ad170d62166cd319743d05e3d8902962a`  
		Last Modified: Tue, 16 Jun 2026 01:10:48 GMT  
		Size: 64.1 MB (64149777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdeb24691207f1d852a495e89e2bef89869de98aa9b40b37206c78e9b522737`  
		Last Modified: Tue, 16 Jun 2026 01:10:48 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ae07c3e8743ae8845dfccfe48775d40332bfa8f47814fe3aa88bcd063b61cd`  
		Last Modified: Tue, 16 Jun 2026 01:10:48 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc` - unknown; unknown

```console
$ docker pull docker@sha256:1a12bfb7ba4aeba35df2b1d10c364420e65f663177a62e3c7f334acbb6b53b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90409c3a08bbd9aea165ac4237e754b2865be74e44543bc9ea4c3560c06fb7bb`

```dockerfile
```

-	Layers:
	-	`sha256:2b5e6b359a14678cfe06231e1b1e9bd88bcd7d1dd7e1c81ff3cd20364387b66e`  
		Last Modified: Tue, 16 Jun 2026 01:10:46 GMT  
		Size: 34.2 KB (34231 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:163c954089c912ac7f8b037ed0a6f105638431ca895e78029fad622ef27e8160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131326583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66b9948a173846557c2edef14777df698c5a69391e70eb9be28f570ab133f939`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 16 Jun 2026 00:12:59 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 16 Jun 2026 00:12:59 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 16 Jun 2026 00:12:59 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 16 Jun 2026 00:13:04 GMT
ENV DOCKER_VERSION=29.6.0-rc.1
# Tue, 16 Jun 2026 00:13:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.6.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.6.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.6.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.6.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 16 Jun 2026 00:13:04 GMT
ENV DOCKER_BUILDX_VERSION=0.34.1
# Tue, 16 Jun 2026 00:13:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-amd64'; 			sha256='f1332ddb9010bd0b72628266c3a906d9a6979848033df4c8d9bd2cd113bae12b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm-v6'; 			sha256='1f6c8a082281706a0b9e24b64b9210ca0df5273ceaf600536012e7a62d790538'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm-v7'; 			sha256='ad4e0938c94638ac882641b924f6eff6889cc59a11f062e733cf337458aa6f35'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm64'; 			sha256='c34e32dd6ea2653d960d6c099c9f09b9077e4a37504d2d31e5066eccc3904231'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-ppc64le'; 			sha256='a509dc17005a4eee3568336d9e2479642e53b31110e039a8f5b4e6079744d0e2'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-riscv64'; 			sha256='c2cf15773a0610e6de34a04e9191b07915d0ea2afb381a37ac87f0dcb213b85a'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-s390x'; 			sha256='edb0e83d5a2fa8913d0af46385b648408b4776ee3241b4c15f92fcadbc72b550'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 16 Jun 2026 00:13:04 GMT
ENV DOCKER_COMPOSE_VERSION=5.1.4
# Tue, 16 Jun 2026 00:13:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-x86_64'; 			sha256='33b208d7e76639db742fae84b966cc01dacae58ca3fc4dabbc907045aefdf0c4'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-armv6'; 			sha256='38c8b500e75de30707024db9d135af979f4fdf6b9bae82b7a854b17eddad1205'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-armv7'; 			sha256='5cce4229012b8b18067fba078c9ec4e2a5dd47cb4cb3a0cc3d431f6fc429060f'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-aarch64'; 			sha256='d4fb48b72857810314d3ee77123c89954101844efa4788031221f4c370495946'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-ppc64le'; 			sha256='044a5a6eac8ba3b686e5ad74d529293372eb6d8553685738fe93ae6a6fd92790'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-riscv64'; 			sha256='03565cf8e16b3afa6fd6555d697b3237ea2d4dbd5547ab6835bc90fa7e5e00bb'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-s390x'; 			sha256='5bd0db672b07bb86272e84bbddd286f42fe9b84080e4d47ad3a91a84bd8c2c3d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 16 Jun 2026 00:13:05 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 16 Jun 2026 00:13:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 16 Jun 2026 00:13:05 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 16 Jun 2026 00:13:05 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 16 Jun 2026 00:13:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Jun 2026 00:13:05 GMT
CMD ["sh"]
# Tue, 16 Jun 2026 01:14:02 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 16 Jun 2026 01:14:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 16 Jun 2026 01:14:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 16 Jun 2026 01:14:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.6.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.6.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.6.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.6.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 16 Jun 2026 01:14:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 16 Jun 2026 01:14:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 16 Jun 2026 01:14:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 16 Jun 2026 01:14:06 GMT
VOLUME [/var/lib/docker]
# Tue, 16 Jun 2026 01:14:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 16 Jun 2026 01:14:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 16 Jun 2026 01:14:06 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8a75a7427b6acf5564fcdda5c9c679df4cf5321fce8ed72f34c1173c2971bcd`  
		Last Modified: Tue, 16 Jun 2026 00:13:12 GMT  
		Size: 8.2 MB (8231704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0a7054803000cdae759c45ca22282851e1b0a9b7881a1a4ca01f80314b3f88`  
		Last Modified: Tue, 16 Jun 2026 00:13:11 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfb5c9e70e853c0a54886f15e7d7d91b67a6e1a391689565e0eda739cd9e249`  
		Last Modified: Tue, 16 Jun 2026 00:13:12 GMT  
		Size: 17.9 MB (17889762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9498b726ca6e2d502c6780ec3ef7eaee4d792e111a9dd18d83aa53ea132361`  
		Last Modified: Tue, 16 Jun 2026 00:13:13 GMT  
		Size: 20.8 MB (20815965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee59de277308123638c8995a5e7d857ce998ba63dc902ae885547842a5e9f5f`  
		Last Modified: Tue, 16 Jun 2026 00:13:14 GMT  
		Size: 10.4 MB (10359870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb1453e911209759d572872cdae248c2e12c5ef56720d6af135cb51a1265de9`  
		Last Modified: Tue, 16 Jun 2026 00:13:14 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4692759c5c4f20096250bd98d2b9eeca48e8b4b21ffd607e20999cefd32487f5`  
		Last Modified: Tue, 16 Jun 2026 00:13:14 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbfae388c4671784746fa3253f9ec6ec28eca0bf1e02a18f1654193fc1d85451`  
		Last Modified: Tue, 16 Jun 2026 00:13:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b7aaaed1b746f115655d29d8752586ece2a85164f649f842b9250b3c5fc218`  
		Last Modified: Tue, 16 Jun 2026 01:14:16 GMT  
		Size: 7.2 MB (7239972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684a34766d901344a4640ebec3397026e40c21f8d018e74a8db56db0f579a6c`  
		Last Modified: Tue, 16 Jun 2026 01:14:16 GMT  
		Size: 99.9 KB (99937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d70db30e97726cddd9c77eb47445649ab70ef8d8ba3b531cade2231150491d59`  
		Last Modified: Tue, 16 Jun 2026 01:14:17 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5fea9d26e2c08004ff2c7de76b91642134cabdfc1854e03dd79dd538463db7`  
		Last Modified: Tue, 16 Jun 2026 01:14:18 GMT  
		Size: 62.5 MB (62498182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6ac72497a2c5ff322e9e4a20b7c0e484090888b8cdfe18f954a90a53a37cab`  
		Last Modified: Tue, 16 Jun 2026 01:14:18 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a6a44bf108bc8bb57ec83419c706f4d525a0a58bccb9c8d1a768c12fae4d9d`  
		Last Modified: Tue, 16 Jun 2026 01:14:18 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc` - unknown; unknown

```console
$ docker pull docker@sha256:c143dd8c8ef86933cccda7ddf6001a512d40bd2655449baf968e17caedf59bcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 KB (34278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f8e5de40bda3c973ed4f45f7b46e359494283d0a0e615083507f11da1b370f`

```dockerfile
```

-	Layers:
	-	`sha256:738574b8cac61e6238782d998641f759f120779ded594a5fac40526a026cecab`  
		Last Modified: Tue, 16 Jun 2026 01:14:16 GMT  
		Size: 34.3 KB (34278 bytes)  
		MIME: application/vnd.in-toto+json
