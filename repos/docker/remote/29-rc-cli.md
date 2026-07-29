## `docker:29-rc-cli`

```console
$ docker pull docker@sha256:1ca081e99054d60a108ec57d2290e1482423d28fd616d2f9e4d5e47902c84d92
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
$ docker pull docker@sha256:d1aa3bf302d1b785d4956a37f01159bd7e9f68fabee8c9c4c151a66ecf84acf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65843758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86cc7276be2af105abb1b95d03823bcb0c941e0fbddd33bcd9de3d458f00630d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:16441b740ed3f19975cf3e341ff37c9ba700ef4e13da5a6b90ea3c90fe71a57d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f95da00ed592977895b6a9bec6c46ebd305b5eb8e9665c20c8c8e8e989e6f405`

```dockerfile
```

-	Layers:
	-	`sha256:8585dc57dc8af028b1b27a85831bfa08102beb82f1ee90f18cd63fc6f43d5b0d`  
		Last Modified: Tue, 16 Jun 2026 00:12:20 GMT  
		Size: 37.8 KB (37847 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-rc-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:8f17970b21cdaa11bba68a34571d71ac4dec24e5b670d8820154a9d9c485521e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62133282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df67efb0bd2941b7dc4894eb40096a08adc7d25d87c4508fe37d6bd76fe2202e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:e9e2a9fe208747dba97f6e8903cbd14205b4f41e5252504be21eb70ac0b34938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 KB (38005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ec01d259de429cea8ef34704a85ae4357af325223dee62711c08f41295925e4`

```dockerfile
```

-	Layers:
	-	`sha256:2a877129f68e78c5e16983a8163062023ebc369364f53e914a0d14bb55457915`  
		Last Modified: Tue, 16 Jun 2026 00:10:15 GMT  
		Size: 38.0 KB (38005 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-rc-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:510f003f6ab8fbe8a6ade18ebfdf22a7a07cfff878dc813e0f778ba22dcaf706
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61095523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945b281e24cd49dcfab83f04a31f402e91db7fa851dc96339efc7c0ee6bb7671`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:051c3cf1ed203c2b43b6f013f41ccb2aa25a1f233ba6998ab0bae2822996c8d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 KB (38005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edfff10ca9344ee13c4e6a9b90a93912c3a0e52c4c42565a0dd341dfbc9836ad`

```dockerfile
```

-	Layers:
	-	`sha256:959faea0e0f3f1baba8f30745d882a9982bc62aef7d26f823d45bee6ff52c5e4`  
		Last Modified: Tue, 16 Jun 2026 00:12:43 GMT  
		Size: 38.0 KB (38005 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-rc-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b1853afb496a044c468a51bb8ab4d8ee945b876cbc79c83b75536a55b4a329df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61482492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7a5b339f5c9ac19a7d6ee7c3a2c2a124ceb331254b71facfc2f27d4bee29e14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:0c9e4c3b9f6c727cc801b444290d430a2a99a87e1b2fa96cd209c6cf8670979e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 KB (38040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c955014b443e75f038dd69c9929306681aa0d8386e8ad9fa574f86e44cf34d6`

```dockerfile
```

-	Layers:
	-	`sha256:c1a01201d6a38d2d576f3649a2ba9ee209090069ee5f23b41f47cd312ef44fde`  
		Last Modified: Tue, 16 Jun 2026 00:13:11 GMT  
		Size: 38.0 KB (38040 bytes)  
		MIME: application/vnd.in-toto+json
