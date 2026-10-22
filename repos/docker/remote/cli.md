## `docker:cli`

```console
$ docker pull docker@sha256:5e6baf67325a79f64ed3bed6863954d5e05d0f3d4e57cbdb14809346814bbfdb
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

### `docker:cli` - linux; amd64

```console
$ docker pull docker@sha256:98776017a505b6d89c0adff8c63b0d8701ca10280c41315dbb0638fe3b5cf6e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.5 MB (67476731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7691a001d1bf70d960395ef367f9f008db5f8d7d18556b2b88303596a4384d51`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:45:34 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 22:45:34 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 22:45:34 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 22:45:37 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 22:45:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 22:45:37 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 22:45:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 22:45:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 22:45:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 22:45:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 22:45:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:45:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 22:45:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 22:45:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:45:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71b0c095ee8f31ff0a9447309e85f808367b1122c75e0356ff231a722d87655`  
		Last Modified: Wed, 21 Oct 2026 22:45:47 GMT  
		Size: 8.2 MB (8199971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cffe68be57c630fbaa214ba63287e4d95925608af1f8135029c889faba1fd4f9`  
		Last Modified: Wed, 21 Oct 2026 22:45:47 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335f14bb4f7daee1feb8e7e8cfe9df0f5a40f77513d6d250f91b1c2e14ad495f`  
		Last Modified: Wed, 21 Oct 2026 22:45:48 GMT  
		Size: 20.3 MB (20288202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552fcdedd26330070ccaa40f0323894f649d8243ac86ced87ccbb5740be54c88`  
		Last Modified: Wed, 21 Oct 2026 22:45:48 GMT  
		Size: 23.8 MB (23824472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d07dfa8df4d19a6df163cb82622dcd15c33380a9453936fed2450ebbd1234d06`  
		Last Modified: Wed, 21 Oct 2026 22:45:48 GMT  
		Size: 11.3 MB (11308822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b815a471d8d9c1447a7b722f089fb5637da5551fac7f77ff6d77fade03f9c68`  
		Last Modified: Wed, 21 Oct 2026 22:45:49 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee498a1860a58ca22c70842c8452e40a4a17054dca5632cf144c188f39bf42cf`  
		Last Modified: Wed, 21 Oct 2026 22:45:49 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd4566122f6780524803d9c99f3972356f9f4376af28b34ed139882644e0bd52`  
		Last Modified: Wed, 21 Oct 2026 22:45:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:b6b735ee83fffe3e6fd8dd0d4f0c0700d1bacccf9d7cc8ebac3166b8f6f34a92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03354da415e60ced8dc305aa0d597ee3e98ebe124fc9e1db07fc1b2b9b69a3ae`

```dockerfile
```

-	Layers:
	-	`sha256:85cd179776cecb54a871460acbf1b458bba50659e1e8ed5920595f429f74da42`  
		Last Modified: Wed, 21 Oct 2026 22:45:46 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:81a2d2aff815052269a89c772f0a83d822d561fe4a790b9dd820aea42cfc67dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.6 MB (63619592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50125cdb19cda115612b57095d137b6c513ecde49196745683a576e64ee25ab7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:10:26 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 23:10:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 23:10:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 23:10:31 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 23:10:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 23:10:31 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 23:10:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 23:10:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 23:10:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 23:10:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 23:10:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:10:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 23:10:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 23:10:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:10:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71dc6effddd4fbfede1abdf6d72ce46eb7f00bf0593d55109f87afe70c016dc1`  
		Last Modified: Wed, 21 Oct 2026 23:10:41 GMT  
		Size: 8.1 MB (8100358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb279b3f0bc0f9fa78b440704034ed8c0e1a9cd6665a680c665a7533eb758d5b`  
		Last Modified: Wed, 21 Oct 2026 23:10:40 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1fc00dcea022caf7c87eaa6a47d2fbbadd225a40cfd455e3a93bdb9dbf524a`  
		Last Modified: Wed, 21 Oct 2026 23:10:41 GMT  
		Size: 18.8 MB (18835723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02d2b08f5fd77d1daafa954547ccc4e7dd8450e1c942bffe0527e0c5e135926b`  
		Last Modified: Wed, 21 Oct 2026 23:10:41 GMT  
		Size: 22.4 MB (22395669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2453ab9cf92e2a9dd688875084416df8c2d3116507790f6c492cd5aee2878f81`  
		Last Modified: Wed, 21 Oct 2026 23:10:42 GMT  
		Size: 10.7 MB (10727396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29261bd0b82b6c48195345fbecbe9664e6f2d1a12e6da4390ba87d71ae6edb4e`  
		Last Modified: Wed, 21 Oct 2026 23:10:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bd6fe0db1cdb8806735d0a44298f143520efa875ca5cb4456ce0411f6710d12`  
		Last Modified: Wed, 21 Oct 2026 23:10:43 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c5a7067f72530952f7dff5ba8bd9294b9b1f43178135a975ce5095d3fa032d`  
		Last Modified: Wed, 21 Oct 2026 23:10:43 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:3fee0ece66ba16279120e443bbbf74c2da7c97106967cd1a7cc9bb3424ee2ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a982b765703f16906dfe6ba8dc3860241b4cab86606b8fb5da8770e03b6a60`

```dockerfile
```

-	Layers:
	-	`sha256:0f70dc2055c2287ab1285dbc05dbe7211f299538fbf0078437f55894f3372dd5`  
		Last Modified: Wed, 21 Oct 2026 23:10:40 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:98e4237d38398f5a93ca36aaf00944148ed59b8414e991bba8e3293b5febfaf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 MB (62579101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d738b1cafec53a7b89297a557dacda708728b1fc7a78b9ccbfc6bb01ff47d2b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:14:03 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 23:14:03 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 23:14:03 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 23:14:08 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 23:14:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 23:14:08 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 23:14:10 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 23:14:10 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 23:14:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 23:14:11 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 23:14:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:14:11 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 23:14:11 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 23:14:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:14:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11cc3670027fbd56ceaf8cc7564e6a191b201c12520f70d73fc15ea57f37d288`  
		Last Modified: Wed, 21 Oct 2026 23:14:17 GMT  
		Size: 7.4 MB (7392961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9f7ea612572bf6c5da561305cdc9ee8718c499a558fc19fbaed04e9fc6efa5`  
		Last Modified: Wed, 21 Oct 2026 23:14:17 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb294ad0038a2977d2525edebf88b1fd8bfea80d79d8b24fa1bf129862fc542a`  
		Last Modified: Wed, 21 Oct 2026 23:14:18 GMT  
		Size: 18.8 MB (18824904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5a43e1e6828fa2e37ecc093a4f94afd1fa1b37e596b9725ec4c4ad55fae3f3`  
		Last Modified: Wed, 21 Oct 2026 23:14:18 GMT  
		Size: 22.4 MB (22376468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79e58b809ecaceeb68c2fe8e693889d42b5bf700b3c2620f90061d4326032140`  
		Last Modified: Wed, 21 Oct 2026 23:14:18 GMT  
		Size: 10.7 MB (10715952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:350b27618656a4a4d0b0d450342534d06412b8f021c655db44a995cadb893510`  
		Last Modified: Wed, 21 Oct 2026 23:14:19 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c54c4c9c9d9456e7372acf946d2dee0bd5fd81f46525c1f99859a1dfbd23b17a`  
		Last Modified: Wed, 21 Oct 2026 23:14:19 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78827e4dca46f531abb96e0ef3002d43b5d6e89ef7c49b4b9e08fc571b641b45`  
		Last Modified: Wed, 21 Oct 2026 23:14:19 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:dcf243db458ceeac8b3f92472e74cfd9ce132cd261e2dd82e1eabeb1781e0586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3924fb3a1e76c9f4a09f2774039c48ba593c73ed1298b36fbd8386b09f36c8c`

```dockerfile
```

-	Layers:
	-	`sha256:67a8b0a00afdd87f8490681872153c8e3e069e9940803d74d973afc437ea3a26`  
		Last Modified: Wed, 21 Oct 2026 23:14:17 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d54eb9ef0f4cbcd82bfb87c6f8d8951c04ce5a01daf38682f3f57ed6a03acd6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62981697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b36450843da1d4e9477dd07f20e63bfbcfaba25ca79664ac154ae82fae0f67`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:13 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 23:12:13 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 23:12:14 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 23:12:16 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 23:12:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 23:12:16 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 23:12:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 23:12:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 23:12:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 23:12:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 23:12:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:12:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 23:12:18 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 23:12:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:12:18 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250627d8c012ac494a926fc1ed0bd3792f5ae36bd5852d8e642b7ee7bb495d1e`  
		Last Modified: Wed, 21 Oct 2026 23:12:24 GMT  
		Size: 8.3 MB (8258912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e03c50592fc34331739cea5ee78f65bb5056c7b46bb32c7cce8c73aacafb39`  
		Last Modified: Wed, 21 Oct 2026 23:12:23 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189e736d95c8020a97ca6a4ca6791e0a638f45db491875ecaeced8d1491e9a63`  
		Last Modified: Wed, 21 Oct 2026 23:12:24 GMT  
		Size: 18.7 MB (18674884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e17af739909bebee436b0031f4c5e6ce7b36005b917643a62b3ff6b36a34217`  
		Last Modified: Wed, 21 Oct 2026 23:12:24 GMT  
		Size: 21.6 MB (21574399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ff200f185da8a444ed3d44595dd787207a60f70fda2ccdbf87d3a1eb945dd7`  
		Last Modified: Wed, 21 Oct 2026 23:12:25 GMT  
		Size: 10.3 MB (10280860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a9e20a1b0f9372003a1da559ff215361f05dec7ac820150e193887c92b200d`  
		Last Modified: Wed, 21 Oct 2026 23:12:25 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b845bf8973f8a9b963a09f14ef16c9dc88f4affb1f54f89582b8f21087374c5`  
		Last Modified: Wed, 21 Oct 2026 23:12:26 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6139c9221e4099dd20e5e054de0ba0bd3c226a542cee3ac05b6f6579874c44`  
		Last Modified: Wed, 21 Oct 2026 23:12:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:874a32b45c52b75fd3492402b9106db787d3ded7223d8a646efc4fd0c8ccd62f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b67a64dba08aca40e6030fc9bda73cb166943f2878223a8c440d33bd792756e8`

```dockerfile
```

-	Layers:
	-	`sha256:12b280ac05cdab2f18e1087222fb380d3dc430a7160a6f91c909a63cb7e416c1`  
		Last Modified: Wed, 21 Oct 2026 23:12:23 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json
