## `docker:latest`

```console
$ docker pull docker@sha256:9e79b879b177fbd72c34376a3dd3d91747da5db49e1f560f76aea59561471977
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

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:97545b7bab66319a476800a85b008b25c06681733d484909e2a776281e41574f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (122006157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a5d43f7d02971b15763b4b88d0e44cfaa858ec8a04b2fd84057b03c6f0e0f96`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Wed, 21 Oct 2026 23:23:14 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 23:23:15 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 23:23:15 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 23:23:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 23:23:18 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 23:23:18 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 23:23:18 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:23:18 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 23:23:18 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 23:23:18 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 23:23:18 GMT
CMD []
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
	-	`sha256:d42cfa6127b3b8086154d09ef8f3db7a0fa4c613c2d0d6f65f8054642621d92b`  
		Last Modified: Wed, 21 Oct 2026 23:23:27 GMT  
		Size: 1.5 MB (1497363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a55a75a1a2afdbf660056feb476d9c71ab74cf432d0554f52a8cace30f8576d`  
		Last Modified: Wed, 21 Oct 2026 23:23:27 GMT  
		Size: 81.0 KB (81049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc42f9148672f16d61df1d1cb91a875037bdbbfaf0a71a2cec5035bec97e5b05`  
		Last Modified: Wed, 21 Oct 2026 23:23:27 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33883f23fecac1b82ba9b2047e4742d134cc0fd0d71ecfe59e39017f6d034321`  
		Last Modified: Wed, 21 Oct 2026 23:23:29 GMT  
		Size: 52.9 MB (52945010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fccb65b60fa570fb57495df30a32ce5b07368abe6bac5d07eccbe3c2d1d054b1`  
		Last Modified: Wed, 21 Oct 2026 23:23:28 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08baed64d192dec04c7d925959c3cdfe064529d03f145ec54947fd67bcbfd782`  
		Last Modified: Wed, 21 Oct 2026 23:23:29 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:21c50ae1d3e88d3c80c18c6fc8e06a539b1125e3702bbf52d289184fd1abf4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b52475e0df3af5c61cb0461a059edb2838faa1c5be429273f17fcae196419f2`

```dockerfile
```

-	Layers:
	-	`sha256:bbed03d96fc94264d007506a8e7d664aa0dfd10bdf097eba9f2ab475b827ab59`  
		Last Modified: Wed, 21 Oct 2026 23:23:27 GMT  
		Size: 34.4 KB (34424 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:6d0c14d074def5297f768b7695a5d650fcd5929fd03ffc88a854fde10e7b8003
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114729789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e84e5e13b66536689656faca80829088f6e31a38af2d025b8fbb43aee3bf2561`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 22 Oct 2026 00:11:57 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 22 Oct 2026 00:11:58 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 22 Oct 2026 00:11:58 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 22 Oct 2026 00:12:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 22 Oct 2026 00:12:02 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 22 Oct 2026 00:12:02 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 22 Oct 2026 00:12:02 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 00:12:02 GMT
VOLUME [/var/lib/docker]
# Thu, 22 Oct 2026 00:12:02 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 22 Oct 2026 00:12:02 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 22 Oct 2026 00:12:02 GMT
CMD []
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
	-	`sha256:96ab7017ff5d92cc027adf6e3008a37fec575dfd2c4122f9a597fe8ffbd91363`  
		Last Modified: Thu, 22 Oct 2026 00:12:11 GMT  
		Size: 1.5 MB (1498761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03dfb4e9e74ebd0979cea83165a6809c138be5141c9d0a92d47b78e614b2014`  
		Last Modified: Thu, 22 Oct 2026 00:12:10 GMT  
		Size: 79.7 KB (79746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a56ba100e433892061c772540adee747c829cd94655ca2f7db4dd804767134fd`  
		Last Modified: Thu, 22 Oct 2026 00:12:11 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4019a45c2e71fdc97aa8ba386dd2c0f1db3ecb6462a2c160877fce5d7984f415`  
		Last Modified: Thu, 22 Oct 2026 00:12:12 GMT  
		Size: 49.5 MB (49525682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78a0c6e1aab9049534b9d6df790559bd55b214c2ee31ce9ac689c320836432e`  
		Last Modified: Thu, 22 Oct 2026 00:12:12 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbaf9db14e0f26acab84adbb586d5a833e96b0e1467c9773e9d98c2e5916570`  
		Last Modified: Thu, 22 Oct 2026 00:12:12 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:216296f11051a60e5fa4ecdbb77421b1a60b9b181b23d8d3d009007602837f89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c87b2322ad70e0258a93debfddaef6fcb91f9abd4bd2b6bb37b6c1114d56182`

```dockerfile
```

-	Layers:
	-	`sha256:cf732cc3b69de20ed457db9115e9fa450cf7f6d37bfb7adaf4cd8d3cefb446b2`  
		Last Modified: Thu, 22 Oct 2026 00:12:10 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:8680d2029b47e754f045711421d57266e1c4957c485c009a9ca2cbd1a5db31ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113416424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e148d70311d7e94133fd54107375613c1f96886d5891c16a2d1804d5fedb8e8`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 22 Oct 2026 00:19:40 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 22 Oct 2026 00:19:40 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 22 Oct 2026 00:19:40 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 22 Oct 2026 00:19:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 22 Oct 2026 00:19:44 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 22 Oct 2026 00:19:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 22 Oct 2026 00:19:44 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 00:19:44 GMT
VOLUME [/var/lib/docker]
# Thu, 22 Oct 2026 00:19:44 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 22 Oct 2026 00:19:44 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 22 Oct 2026 00:19:44 GMT
CMD []
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
	-	`sha256:f7395aa8573fb6946b99b571d4d6de5d1444923cfe1fdf3f4196a31cf9a69a31`  
		Last Modified: Thu, 22 Oct 2026 00:19:52 GMT  
		Size: 1.4 MB (1384221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b451ad5451ff59db494a7b8992c6fd42aae3b2fcafe25155b34ee6c1f0c1a67`  
		Last Modified: Thu, 22 Oct 2026 00:19:52 GMT  
		Size: 76.1 KB (76118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:349c006b7c4b56a712df6faad488be80ebca1c07d8a56e8759b8479a5b760cc3`  
		Last Modified: Thu, 22 Oct 2026 00:19:52 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85de8447b109b49ef889cdaa502067be30b8ed9a1200a9f713b8e0b3d48a4828`  
		Last Modified: Thu, 22 Oct 2026 00:19:54 GMT  
		Size: 49.4 MB (49370978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f339306fa63914ffb0c650857393894960871f9a5d4007d55cfae88745e79cb`  
		Last Modified: Thu, 22 Oct 2026 00:19:54 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cebc5a271316e4a24b47a647f82758245b94db3a4eb4cb40ad7652bf91f7bd42`  
		Last Modified: Thu, 22 Oct 2026 00:19:54 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:679b697ad6d6d09104f57bc19534137f13caca6785bec7490bfbab9b83d7ab7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a602c707fef62b1c84015904f23c15e5fc80dfba4d4f30e324d170021415e605`

```dockerfile
```

-	Layers:
	-	`sha256:b252223b40efa323349e501f31d1c4c6d97d6cd19ebda0564ab9109685ea64bc`  
		Last Modified: Thu, 22 Oct 2026 00:19:52 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cb160a57fcb936668f8ab8e4a9d73c66b7975226aa87e466233734edbcd83ccc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112834996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf57822adc8ffa163e9bde0c3f854957785e201b043528cc36e98c2c3533944`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Thu, 22 Oct 2026 00:16:52 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 22 Oct 2026 00:16:52 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 22 Oct 2026 00:16:53 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 22 Oct 2026 00:16:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 22 Oct 2026 00:16:56 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 22 Oct 2026 00:16:56 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 22 Oct 2026 00:16:56 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 00:16:56 GMT
VOLUME [/var/lib/docker]
# Thu, 22 Oct 2026 00:16:56 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 22 Oct 2026 00:16:56 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 22 Oct 2026 00:16:56 GMT
CMD []
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
	-	`sha256:a96bffce6c38d552c6b5e2f9ca2b8868c826dee328d3c2ee5aedd0ee81be148d`  
		Last Modified: Thu, 22 Oct 2026 00:17:04 GMT  
		Size: 1.7 MB (1744502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b382108e49e6222d8aa4738d27f20fb156443a58bb5f7a1ff29ec721ad58325f`  
		Last Modified: Thu, 22 Oct 2026 00:17:04 GMT  
		Size: 90.4 KB (90352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc345138e05c4930c95964c1274732c1f9fd2dc2a75c66f4110667cccd7ff46c`  
		Last Modified: Thu, 22 Oct 2026 00:17:04 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb02c9e184dcf891ced825fd7cd22fe5ad7023301bfee809be9a36c80a886074`  
		Last Modified: Thu, 22 Oct 2026 00:17:05 GMT  
		Size: 48.0 MB (48012436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dab0eedb503a4aac923404f8cff9bc709336129ef033a1ca9e6f233f57702e5c`  
		Last Modified: Thu, 22 Oct 2026 00:17:05 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4c05dc2e87fbbea04c2c6bb6a57e36131c260f02e15797d6b96bad810e17772`  
		Last Modified: Thu, 22 Oct 2026 00:17:05 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:7e2ea25fa6b64faaec340f3e3970fe56b51187de29f662554728103cb13eb5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b669dcc78d042a8c26abb05eb42a23cad9af9f329a0e4f3ba05dcdea67c21b27`

```dockerfile
```

-	Layers:
	-	`sha256:e41647c4dfec2420b3b234feec82362fe130817d0a4b877085d1962b5db0a9b5`  
		Last Modified: Thu, 22 Oct 2026 00:17:04 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json
