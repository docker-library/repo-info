## `docker:rc-cli`

```console
$ docker pull docker@sha256:70c603c89f492df714dbe60953d38fd69443f3af6ba824d7c998758186af22fb
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

### `docker:rc-cli` - linux; amd64

```console
$ docker pull docker@sha256:bc5232a68f1281b47bc75d1c5ae1f21f0aea24744ad759a6406aea866514b6a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66582001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85043a0823d664ae42d748b709ee98db7a178d38e47e42eb9a530a7a7b0f4386`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 22:13:41 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 01 Oct 2026 22:13:41 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 01 Oct 2026 22:13:41 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 01 Oct 2026 22:13:43 GMT
ENV DOCKER_VERSION=29.9.0-rc.1
# Thu, 01 Oct 2026 22:13:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.9.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.9.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.9.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.9.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 01 Oct 2026 22:13:43 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 01 Oct 2026 22:13:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 01 Oct 2026 22:13:44 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 01 Oct 2026 22:13:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 01 Oct 2026 22:13:45 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 01 Oct 2026 22:13:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 22:13:45 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 01 Oct 2026 22:13:45 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 01 Oct 2026 22:13:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Oct 2026 22:13:45 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343e9e3d71a397c3789489618b8e61bb024a20c1c28b8ccfc4ac77f78261d395`  
		Last Modified: Thu, 01 Oct 2026 22:13:52 GMT  
		Size: 8.2 MB (8200465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575a407a6b3d75db893dea198b6b423b75068b1a82d2c42cd0d2c5efa05a0a0b`  
		Last Modified: Thu, 01 Oct 2026 22:13:52 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108bc642c07fc7f08179303831b20fc2ca5cff87eab819afdcd5d0c87c5e600a`  
		Last Modified: Thu, 01 Oct 2026 22:13:53 GMT  
		Size: 20.3 MB (20270416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75648afa6413887675c9435673a169caedef801bc74264d808f5f79664291ff`  
		Last Modified: Thu, 01 Oct 2026 22:13:53 GMT  
		Size: 23.1 MB (23059645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fafc76946520dfe0f3bf98b16df6f4334eb56d87e68c6ff8ed619a200b7f4d5`  
		Last Modified: Thu, 01 Oct 2026 22:13:53 GMT  
		Size: 11.2 MB (11199581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf893bc9b6970c449c55cdddba6b813b89b1446590e879f96152b1ce5700b04c`  
		Last Modified: Thu, 01 Oct 2026 22:13:53 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702872e8cfc8a185fdd6381808b3db3d03cdea5d8f027de4ee8a8803f455ea19`  
		Last Modified: Thu, 01 Oct 2026 22:13:54 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c759f97a9ddb78d0502a0e58a46ac7325940d36393585f7b16dbb9442415d7be`  
		Last Modified: Thu, 01 Oct 2026 22:13:54 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:824c3b5e3973fbafc6b4d36c23ad00fccfd109d30152336203e261187696638b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3a943974b7c803c4acd98fef8e84a0f20754ad3e8321b96645eda9913d83aa8`

```dockerfile
```

-	Layers:
	-	`sha256:4fa0561649b8b128be61aba9bfff2f013f44db847ec86d2822719bb8c2652986`  
		Last Modified: Thu, 01 Oct 2026 22:13:52 GMT  
		Size: 37.8 KB (37846 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:6a65f3b462cd36ec3177006184a6198f448e8baaa64eb1b4d66700ec3cc19ee5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62775235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c716c91d9bf957a04dc911bbb5beb530a6cbb0080bc2adda256b86520511578`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 22:33:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 01 Oct 2026 22:33:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 01 Oct 2026 22:33:52 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 01 Oct 2026 22:33:56 GMT
ENV DOCKER_VERSION=29.9.0-rc.1
# Thu, 01 Oct 2026 22:33:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.9.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.9.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.9.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.9.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 01 Oct 2026 22:33:56 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 01 Oct 2026 22:33:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 01 Oct 2026 22:33:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 01 Oct 2026 22:33:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 01 Oct 2026 22:34:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 01 Oct 2026 22:34:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 22:34:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 01 Oct 2026 22:34:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 01 Oct 2026 22:34:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Oct 2026 22:34:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e103ac625b63f570902b99feea8a823aa6842a916b7b090d2737deafe78b867`  
		Last Modified: Thu, 01 Oct 2026 22:34:06 GMT  
		Size: 8.1 MB (8100275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3fcc4886415bd6b63dc333566dcca2dbd210448c4eb58e789c7d0b08a6db8e`  
		Last Modified: Thu, 01 Oct 2026 22:34:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85b5284bfffd68ea994d31579d12d9860de12bd084ae7edc12cf0fc8b0a4292`  
		Last Modified: Thu, 01 Oct 2026 22:34:06 GMT  
		Size: 18.8 MB (18820766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd474e37196dc81cb98a93998c0e381b920ef237dfe8c8f3fdfc2eddfb25c7cf`  
		Last Modified: Thu, 01 Oct 2026 22:34:06 GMT  
		Size: 21.7 MB (21674142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b52f6098068f8522fed8874238291c3c2d1e33a733a544fccba7038ea93fe79`  
		Last Modified: Thu, 01 Oct 2026 22:34:07 GMT  
		Size: 10.6 MB (10622785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795deb9be717692fdbf747138568bd3832dbf89ed35102964965b3623436d860`  
		Last Modified: Thu, 01 Oct 2026 22:34:07 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b1aefe5e7de98d0ef7d37a43e7d68b8309ce4f771b46c2ef9e76619477e241`  
		Last Modified: Thu, 01 Oct 2026 22:34:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90419d0ff1c594ef220d41a218351509d55792753b45a2d01ccdc44c65d898f5`  
		Last Modified: Thu, 01 Oct 2026 22:34:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:bd8f2d64924fd5ee5d4e7afe8ff6db3f98375e662b62996a2983227bb47a9144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 KB (38005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d164707d976f6c71cf8a1e5af059839c00c91d8396d3c91a7826546e1ffe35d3`

```dockerfile
```

-	Layers:
	-	`sha256:766810febc039177c3291ffd3804c1bf429e0bcbec9d831739b44557ff531581`  
		Last Modified: Thu, 01 Oct 2026 22:34:05 GMT  
		Size: 38.0 KB (38005 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:bd4f9c0092c078bd6ef5d21611560cd62ecc6c0cfe075854d4fc127ad5f1aa29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61737211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd324751183072eeb1763ea2c6c2d2aaad2751d44a6366bde51269f02a296c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 22:39:58 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 01 Oct 2026 22:39:58 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 01 Oct 2026 22:39:58 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 01 Oct 2026 22:40:03 GMT
ENV DOCKER_VERSION=29.9.0-rc.1
# Thu, 01 Oct 2026 22:40:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.9.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.9.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.9.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.9.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 01 Oct 2026 22:40:03 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 01 Oct 2026 22:40:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 01 Oct 2026 22:40:05 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 01 Oct 2026 22:40:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 01 Oct 2026 22:40:06 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 01 Oct 2026 22:40:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 22:40:06 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 01 Oct 2026 22:40:06 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 01 Oct 2026 22:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Oct 2026 22:40:06 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a75a8818c12134208bf410df804be72c9c899f3cb033db9f489cb33b296485`  
		Last Modified: Thu, 01 Oct 2026 22:40:12 GMT  
		Size: 7.4 MB (7395007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e1d8659a2f4dc5bff151d1f41c7687ea168e4b67267b977c41f6ebfe1c63c6`  
		Last Modified: Thu, 01 Oct 2026 22:40:12 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dae304e60fe4cf3fa4a311bf886cddc30a9eee7b2278a93d37c5762d11e1977`  
		Last Modified: Thu, 01 Oct 2026 22:40:13 GMT  
		Size: 18.8 MB (18805578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4fea03f1196af3cf6d5932b215c6d2e784204bfdc2361a4e14d681ff970a75`  
		Last Modified: Thu, 01 Oct 2026 22:40:13 GMT  
		Size: 21.7 MB (21658828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4857655a06c66602918073f7bd1bbd1a9307870e9be2c61ff6f6f40658e95ab`  
		Last Modified: Thu, 01 Oct 2026 22:40:13 GMT  
		Size: 10.6 MB (10610436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c70c03dc9fb8c9fcb99678654ade81eb056a662aff42352055781c6268700dc`  
		Last Modified: Thu, 01 Oct 2026 22:40:14 GMT  
		Size: 543.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb1d9a539d0ecb078d336750d5d34dd14e8224bd646e1a25d42a1519f85e888`  
		Last Modified: Thu, 01 Oct 2026 22:40:14 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebda614b3d960430b0f58aef224043e3bab638a6658b15b724d9b149f13b6f10`  
		Last Modified: Thu, 01 Oct 2026 22:40:15 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:00245c171c06f14a88a31847886c2a4c56586549e9cf2694189fa2ee006d79c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 KB (38005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd56dba0ec5b9b849683243f4334b2f56a94a0aa51d7a5d34f8041f91688fb9`

```dockerfile
```

-	Layers:
	-	`sha256:0b5166a447971b370b0fa8b60bfc37a6b33c298fb73f215ebcbcdd3d9f2bcf30`  
		Last Modified: Thu, 01 Oct 2026 22:40:12 GMT  
		Size: 38.0 KB (38005 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:13149197e63ff9fad4616f393bda31840634acbd2a0e49547babe3beca97ee0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62179088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beeac193f935481514c2e0905becf72e6d270c74a44123bdd614afe1efaf8130`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 22:12:46 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 01 Oct 2026 22:12:46 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 01 Oct 2026 22:12:46 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 01 Oct 2026 22:12:50 GMT
ENV DOCKER_VERSION=29.9.0-rc.1
# Thu, 01 Oct 2026 22:12:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.9.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.9.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.9.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.9.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 01 Oct 2026 22:12:50 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 01 Oct 2026 22:12:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 01 Oct 2026 22:12:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 01 Oct 2026 22:12:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 01 Oct 2026 22:12:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 01 Oct 2026 22:12:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 22:12:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 01 Oct 2026 22:12:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 01 Oct 2026 22:12:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Oct 2026 22:12:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6573b9f1fc0507dde0ff51482675cef2ed347755c6ee8951e2abff330f43f8f`  
		Last Modified: Thu, 01 Oct 2026 22:12:57 GMT  
		Size: 8.3 MB (8261688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a1fbe20a27d8fec4ad1f2f3003a73ee61f41e6f4da40b41cbe7f85a5fc360`  
		Last Modified: Thu, 01 Oct 2026 22:12:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae680fc70b05cc9c4a27c5f25fc57903c0d3427e82e4020f853fa89e626b58b2`  
		Last Modified: Thu, 01 Oct 2026 22:12:58 GMT  
		Size: 18.7 MB (18659414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe77a888584a653dbcd451f420b68394057355d16b97b5ac5bf0b7a915e65704`  
		Last Modified: Thu, 01 Oct 2026 22:12:58 GMT  
		Size: 20.9 MB (20885940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c630c34fb4535bf4e8f759e25e203b8ae45c564b1c251d9c20cfa0d94b0e80`  
		Last Modified: Thu, 01 Oct 2026 22:12:58 GMT  
		Size: 10.2 MB (10182242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd45fd24fcb1e6b5eb9253bd243dc637c4bb01afcfedd3c4a1425f1c0b783b10`  
		Last Modified: Thu, 01 Oct 2026 22:12:58 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21f660fcf90e32d4f112a5d4fc3697ef70c264599b13a5d436d4e527f830c6b5`  
		Last Modified: Thu, 01 Oct 2026 22:12:59 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1aa0a331833fccb852c06e89c3bb9992e19b89d2a29e4abb541744f5943e66f`  
		Last Modified: Thu, 01 Oct 2026 22:12:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-cli` - unknown; unknown

```console
$ docker pull docker@sha256:8e1e0e932dae53c28b66164ee60a4c05721580807730865c37f2de12ca9589b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 KB (38041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f634916ce6a8a9464613335663cd047e6da37c5bbb2ea72b8f0e0877dc03c7`

```dockerfile
```

-	Layers:
	-	`sha256:25958095cd07f2fe2b01c8f4fb773e66e67f6b907227dbae1ecab69c4f6cfb17`  
		Last Modified: Thu, 01 Oct 2026 22:12:57 GMT  
		Size: 38.0 KB (38041 bytes)  
		MIME: application/vnd.in-toto+json
