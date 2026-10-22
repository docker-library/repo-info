<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:29`](#docker29)
-	[`docker:29-cli`](#docker29-cli)
-	[`docker:29-dind`](#docker29-dind)
-	[`docker:29-dind-rootless`](#docker29-dind-rootless)
-	[`docker:29-windowsservercore`](#docker29-windowsservercore)
-	[`docker:29-windowsservercore-ltsc2022`](#docker29-windowsservercore-ltsc2022)
-	[`docker:29-windowsservercore-ltsc2025`](#docker29-windowsservercore-ltsc2025)
-	[`docker:29.9`](#docker299)
-	[`docker:29.9-cli`](#docker299-cli)
-	[`docker:29.9-dind`](#docker299-dind)
-	[`docker:29.9-dind-rootless`](#docker299-dind-rootless)
-	[`docker:29.9-windowsservercore`](#docker299-windowsservercore)
-	[`docker:29.9-windowsservercore-ltsc2022`](#docker299-windowsservercore-ltsc2022)
-	[`docker:29.9-windowsservercore-ltsc2025`](#docker299-windowsservercore-ltsc2025)
-	[`docker:29.9.2`](#docker2992)
-	[`docker:29.9.2-alpine3.24`](#docker2992-alpine324)
-	[`docker:29.9.2-cli`](#docker2992-cli)
-	[`docker:29.9.2-cli-alpine3.24`](#docker2992-cli-alpine324)
-	[`docker:29.9.2-dind`](#docker2992-dind)
-	[`docker:29.9.2-dind-alpine3.24`](#docker2992-dind-alpine324)
-	[`docker:29.9.2-dind-rootless`](#docker2992-dind-rootless)
-	[`docker:29.9.2-windowsservercore`](#docker2992-windowsservercore)
-	[`docker:29.9.2-windowsservercore-ltsc2022`](#docker2992-windowsservercore-ltsc2022)
-	[`docker:29.9.2-windowsservercore-ltsc2025`](#docker2992-windowsservercore-ltsc2025)
-	[`docker:cli`](#dockercli)
-	[`docker:dind`](#dockerdind)
-	[`docker:dind-rootless`](#dockerdind-rootless)
-	[`docker:latest`](#dockerlatest)
-	[`docker:windowsservercore`](#dockerwindowsservercore)
-	[`docker:windowsservercore-ltsc2022`](#dockerwindowsservercore-ltsc2022)
-	[`docker:windowsservercore-ltsc2025`](#dockerwindowsservercore-ltsc2025)

## `docker:29`

```console
$ docker pull docker@sha256:e486f5f730f413505b97a713fbeccb7ab327a3b259474c7c1155e0c3915c27fe
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

### `docker:29` - linux; amd64

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

### `docker:29` - unknown; unknown

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

### `docker:29` - linux; arm variant v6

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

### `docker:29` - unknown; unknown

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

### `docker:29` - linux; arm variant v7

```console
$ docker pull docker@sha256:7fe085d0ce4abde8807cddb2c61d07acb688f76c4e8e04b89c7ca52e8b4d3b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115467831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7177d395f1d7d17be904a4e9010f0512855fe973e4e3d66d93622c76bb643970`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:10:42 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:10:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:10:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:10:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:10:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:10:52 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:09:42 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:09:46 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:09:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:09:46 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5015b013ff131a9d8cf3319801a9bf4092df938168f56dd345a414eb9bced0`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 7.4 MB (7391383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b777a61c2d75e01c2e4d5d2843cff6bd9df65480293931d898847e0748796d8e`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20dc6a34bec1bd3dba87c221c296f5f18aff9bb840f91d224b44a2d5a3249ce`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 18.8 MB (18824896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b23af587d2c47d1b4fbe395b475317239a2f77bde94984f0f6f0c55ef12dbe`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 22.4 MB (22376476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027c95b21b05721b637b826ae6aa9fd6dc23f8a494a01887b55e8cc6545b69d4`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 10.7 MB (10715962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573d3e5390ac1553258dbba2ac57ac453d00072dacfdb035fe92cde1465d7e0c`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7bf8cddafab4bd8dd7dba691e0b505471346c37ec7563219bfdb5334d889af`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262b0283fa55feb1bfa4c1f3e98bebd6e168975e81badfa65a7558d366655e17`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582f56f20d25064ae980bddf5fc357958864ad567541e92ec3115ccc992c2583`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 3.4 MB (3438576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11b03fcb1a6d9a9f8331df2bce1c79f3f9e7ba37e4949fd1f39772858d81353`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 76.2 KB (76195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86db20fa39e353953544706b8ec482bac5794a897c246a3c69e5a8276c1f3a7c`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fbbc846cc0c4fa61ed043ea5fc684f67a4313ffe996b0fa6ffe42f26b769f6`  
		Last Modified: Wed, 21 Oct 2026 13:09:57 GMT  
		Size: 49.4 MB (49370981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8246ff94cd4debc55428be43a89e473ee56675bb408bfc08a8d67f5e12c24c8`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f7bd029eafe579134c2fbcc04e89fcc39e6df505d13db652892802e08f5332e`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:9b79f5203e902480c3feb69b31b4e1e03fb5216066b1d92dd829b9ada95ab04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b335ac5d5f5886ba9ea561971e43d64b0e6402a2fabe4ed6f2e6bd8b57a72d9`

```dockerfile
```

-	Layers:
	-	`sha256:9c86331c2a76062d7b2371612cf7bc0a8e1d1892eea667632fa96604173da71b`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0c49e05a4b2a45dbfc4b5254c47e57ea05eb492f364df6bb8e9756c1f9eeb27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115712365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1d4f2477f0f2c347dfd12b16d8fd7b809286bc438d484ad182b75381d67259`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:27:08 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:27:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:27:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:27:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:27:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:27:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:27:13 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:08:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:08:49 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef63590b461b3dc6f5c2dc50256d67877549d4ac743ab34c214f95da8100e4e`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 8.3 MB (8258866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f76f8a08fefc947930e0171d547df5c725c1451de40b54e20ab10b8ca5fcfb4`  
		Last Modified: Wed, 21 Oct 2026 12:27:19 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8a42ba736eeac46f90734f552432a9a1c4f8826c9a00b36b50d78c12e39bd`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 18.7 MB (18674885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b982c7e88aa9c2ae124d4893b6853c14aa54cf3b4b750eba4438867ad05b7`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 21.6 MB (21574391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc445e8b84267516627d1fff7016f952f7aa821052f75fead4031b8fcca9dc3`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 10.3 MB (10280864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fc373241347335a46db60ec5a65c058684f589129ed44d7595882b605cd96d`  
		Last Modified: Wed, 21 Oct 2026 12:27:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09ceca05c4adedc887ff1d041c65f00d39403119ea27afbf983648943633a9`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1dcd3999028209666424b80a0a5a249dea415896b724da780c58a9190d31`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50da2a27ff9de9cd16b66eb373fe35ff976e78c65ea0547818ef3f3165d4de62`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 4.6 MB (4624672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb903c3aa174b3c53e18c5fa0ab3069b509e991d01149ca8cc60ed8c4d15ce5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 90.4 KB (90426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9033831ce93c76892e7ca429ee1d63b07ac92c5246a0ea619195a69d3d583d21`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f710114875cec805f72aba5fb381a259e4d98895fa11a13028f137fb2622275`  
		Last Modified: Wed, 21 Oct 2026 13:08:59 GMT  
		Size: 48.0 MB (48012435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a5966808314e624916452777a1022384c42614c2921bcfe18c943a5d1543e2`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe537586fb6ceaaee0e25c00d81b861ce5aae588c9e6de8d5348a0291be8dbb`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:06c68ef9ab5d54fb98082c85ec0ea02d8f714f0c39cf90bf4807df8498207579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ecd3a9ba10db7ba87e06d9e1d51c98ec4aa15663ed0719cb774cc8fe249eb2`

```dockerfile
```

-	Layers:
	-	`sha256:1c2533752431914563176bdfd8ab2b1c9fe3087fce7a02f032015cec36019cf5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-cli`

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

### `docker:29-cli` - linux; amd64

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

### `docker:29-cli` - unknown; unknown

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

### `docker:29-cli` - linux; arm variant v6

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

### `docker:29-cli` - unknown; unknown

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

### `docker:29-cli` - linux; arm variant v7

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

### `docker:29-cli` - unknown; unknown

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

### `docker:29-cli` - linux; arm64 variant v8

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

### `docker:29-cli` - unknown; unknown

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

## `docker:29-dind`

```console
$ docker pull docker@sha256:e486f5f730f413505b97a713fbeccb7ab327a3b259474c7c1155e0c3915c27fe
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

### `docker:29-dind` - linux; amd64

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

### `docker:29-dind` - unknown; unknown

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

### `docker:29-dind` - linux; arm variant v6

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

### `docker:29-dind` - unknown; unknown

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

### `docker:29-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:7fe085d0ce4abde8807cddb2c61d07acb688f76c4e8e04b89c7ca52e8b4d3b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115467831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7177d395f1d7d17be904a4e9010f0512855fe973e4e3d66d93622c76bb643970`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:10:42 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:10:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:10:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:10:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:10:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:10:52 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:09:42 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:09:46 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:09:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:09:46 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5015b013ff131a9d8cf3319801a9bf4092df938168f56dd345a414eb9bced0`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 7.4 MB (7391383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b777a61c2d75e01c2e4d5d2843cff6bd9df65480293931d898847e0748796d8e`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20dc6a34bec1bd3dba87c221c296f5f18aff9bb840f91d224b44a2d5a3249ce`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 18.8 MB (18824896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b23af587d2c47d1b4fbe395b475317239a2f77bde94984f0f6f0c55ef12dbe`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 22.4 MB (22376476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027c95b21b05721b637b826ae6aa9fd6dc23f8a494a01887b55e8cc6545b69d4`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 10.7 MB (10715962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573d3e5390ac1553258dbba2ac57ac453d00072dacfdb035fe92cde1465d7e0c`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7bf8cddafab4bd8dd7dba691e0b505471346c37ec7563219bfdb5334d889af`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262b0283fa55feb1bfa4c1f3e98bebd6e168975e81badfa65a7558d366655e17`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582f56f20d25064ae980bddf5fc357958864ad567541e92ec3115ccc992c2583`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 3.4 MB (3438576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11b03fcb1a6d9a9f8331df2bce1c79f3f9e7ba37e4949fd1f39772858d81353`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 76.2 KB (76195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86db20fa39e353953544706b8ec482bac5794a897c246a3c69e5a8276c1f3a7c`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fbbc846cc0c4fa61ed043ea5fc684f67a4313ffe996b0fa6ffe42f26b769f6`  
		Last Modified: Wed, 21 Oct 2026 13:09:57 GMT  
		Size: 49.4 MB (49370981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8246ff94cd4debc55428be43a89e473ee56675bb408bfc08a8d67f5e12c24c8`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f7bd029eafe579134c2fbcc04e89fcc39e6df505d13db652892802e08f5332e`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:9b79f5203e902480c3feb69b31b4e1e03fb5216066b1d92dd829b9ada95ab04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b335ac5d5f5886ba9ea561971e43d64b0e6402a2fabe4ed6f2e6bd8b57a72d9`

```dockerfile
```

-	Layers:
	-	`sha256:9c86331c2a76062d7b2371612cf7bc0a8e1d1892eea667632fa96604173da71b`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0c49e05a4b2a45dbfc4b5254c47e57ea05eb492f364df6bb8e9756c1f9eeb27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115712365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1d4f2477f0f2c347dfd12b16d8fd7b809286bc438d484ad182b75381d67259`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:27:08 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:27:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:27:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:27:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:27:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:27:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:27:13 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:08:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:08:49 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef63590b461b3dc6f5c2dc50256d67877549d4ac743ab34c214f95da8100e4e`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 8.3 MB (8258866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f76f8a08fefc947930e0171d547df5c725c1451de40b54e20ab10b8ca5fcfb4`  
		Last Modified: Wed, 21 Oct 2026 12:27:19 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8a42ba736eeac46f90734f552432a9a1c4f8826c9a00b36b50d78c12e39bd`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 18.7 MB (18674885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b982c7e88aa9c2ae124d4893b6853c14aa54cf3b4b750eba4438867ad05b7`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 21.6 MB (21574391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc445e8b84267516627d1fff7016f952f7aa821052f75fead4031b8fcca9dc3`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 10.3 MB (10280864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fc373241347335a46db60ec5a65c058684f589129ed44d7595882b605cd96d`  
		Last Modified: Wed, 21 Oct 2026 12:27:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09ceca05c4adedc887ff1d041c65f00d39403119ea27afbf983648943633a9`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1dcd3999028209666424b80a0a5a249dea415896b724da780c58a9190d31`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50da2a27ff9de9cd16b66eb373fe35ff976e78c65ea0547818ef3f3165d4de62`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 4.6 MB (4624672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb903c3aa174b3c53e18c5fa0ab3069b509e991d01149ca8cc60ed8c4d15ce5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 90.4 KB (90426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9033831ce93c76892e7ca429ee1d63b07ac92c5246a0ea619195a69d3d583d21`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f710114875cec805f72aba5fb381a259e4d98895fa11a13028f137fb2622275`  
		Last Modified: Wed, 21 Oct 2026 13:08:59 GMT  
		Size: 48.0 MB (48012435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a5966808314e624916452777a1022384c42614c2921bcfe18c943a5d1543e2`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe537586fb6ceaaee0e25c00d81b861ce5aae588c9e6de8d5348a0291be8dbb`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:06c68ef9ab5d54fb98082c85ec0ea02d8f714f0c39cf90bf4807df8498207579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ecd3a9ba10db7ba87e06d9e1d51c98ec4aa15663ed0719cb774cc8fe249eb2`

```dockerfile
```

-	Layers:
	-	`sha256:1c2533752431914563176bdfd8ab2b1c9fe3087fce7a02f032015cec36019cf5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:4a1ff6e6733b687db4ce99bf7e908b2a991c3ca1affc6d79a511c27537599df1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:e1c31ace384338f30fa76546f70e824f0bf39c31d1844d7908e0efa4f69af8e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137756536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a497e4771c7f4b43bb1f87d435e5f9a03a08cfcd847ec278197250379681285`
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
# Thu, 22 Oct 2026 00:13:19 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 22 Oct 2026 00:13:19 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 22 Oct 2026 00:13:20 GMT
USER rootless
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
	-	`sha256:d793a6d1c37f02dc5b7fab91eb83f211c65d80ce35a248cdd43190f21146ce22`  
		Last Modified: Thu, 22 Oct 2026 00:13:26 GMT  
		Size: 3.6 MB (3626247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf25a778d350a7b4672a56d70bd320f6b34ca1c66cfc5a2c4c71ef4bc349af5`  
		Last Modified: Thu, 22 Oct 2026 00:13:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f82eadf8cd2d7586260d310b44b5a0dd5820174cda83b8844a0e2cd9fcf01e`  
		Last Modified: Thu, 22 Oct 2026 00:13:25 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc7843a0e59831bc9aec4c8b69bb3283c338885573188cf5302ae30509e9f07`  
		Last Modified: Thu, 22 Oct 2026 00:13:26 GMT  
		Size: 12.1 MB (12122791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ee0346bf5d981f277616d1aeaf407784e1c200b0d038eab0b49ac7c2fc1218`  
		Last Modified: Thu, 22 Oct 2026 00:13:27 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:811538cb9ab282846babdd925a82036e111520f49f756b47b234778dab53e874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a3f58263c430bb2c52bce3e94610c53b72b2d391790bb23b8cbadd7820b100e`

```dockerfile
```

-	Layers:
	-	`sha256:e40abc0b31bee4d430826a985bb8402aa8aa637f6f8c8b7908f2be817c2ded86`  
		Last Modified: Thu, 22 Oct 2026 00:13:25 GMT  
		Size: 30.5 KB (30492 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab0f299ee64d2b1cf953acc9f4ab7e04ff82972d83918e1d34e7f9e53263307a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130580572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da4d903f226545958d36ed07610dc219212641fa416033a4d5267bbeb99a5859`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:27:08 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:27:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:27:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:27:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:27:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:27:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:27:13 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:08:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:08:49 GMT
CMD []
# Wed, 21 Oct 2026 14:10:11 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 21 Oct 2026 14:10:11 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 21 Oct 2026 14:10:11 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 14:10:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 21 Oct 2026 14:10:13 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 21 Oct 2026 14:10:13 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 21 Oct 2026 14:10:13 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef63590b461b3dc6f5c2dc50256d67877549d4ac743ab34c214f95da8100e4e`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 8.3 MB (8258866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f76f8a08fefc947930e0171d547df5c725c1451de40b54e20ab10b8ca5fcfb4`  
		Last Modified: Wed, 21 Oct 2026 12:27:19 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8a42ba736eeac46f90734f552432a9a1c4f8826c9a00b36b50d78c12e39bd`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 18.7 MB (18674885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b982c7e88aa9c2ae124d4893b6853c14aa54cf3b4b750eba4438867ad05b7`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 21.6 MB (21574391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc445e8b84267516627d1fff7016f952f7aa821052f75fead4031b8fcca9dc3`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 10.3 MB (10280864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fc373241347335a46db60ec5a65c058684f589129ed44d7595882b605cd96d`  
		Last Modified: Wed, 21 Oct 2026 12:27:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09ceca05c4adedc887ff1d041c65f00d39403119ea27afbf983648943633a9`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1dcd3999028209666424b80a0a5a249dea415896b724da780c58a9190d31`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50da2a27ff9de9cd16b66eb373fe35ff976e78c65ea0547818ef3f3165d4de62`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 4.6 MB (4624672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb903c3aa174b3c53e18c5fa0ab3069b509e991d01149ca8cc60ed8c4d15ce5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 90.4 KB (90426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9033831ce93c76892e7ca429ee1d63b07ac92c5246a0ea619195a69d3d583d21`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f710114875cec805f72aba5fb381a259e4d98895fa11a13028f137fb2622275`  
		Last Modified: Wed, 21 Oct 2026 13:08:59 GMT  
		Size: 48.0 MB (48012435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a5966808314e624916452777a1022384c42614c2921bcfe18c943a5d1543e2`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe537586fb6ceaaee0e25c00d81b861ce5aae588c9e6de8d5348a0291be8dbb`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa91dced94752f894d9b70b0ebee6991baae423df9229fcea57b09ea096652c2`  
		Last Modified: Wed, 21 Oct 2026 14:10:19 GMT  
		Size: 3.6 MB (3611320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f05b3bee5a16867a49fe216680c826959a1e6b29112df054feb30d9d3710a1f`  
		Last Modified: Wed, 21 Oct 2026 14:10:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f2a1e01753bc879b60d199e5b827c6979881693f2b74734e9ae39de588126d`  
		Last Modified: Wed, 21 Oct 2026 14:10:18 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf5ec45094ca049f45163844b046941f1f59e38ac13c10fed66f5f3fd1d0a33`  
		Last Modified: Wed, 21 Oct 2026 14:10:19 GMT  
		Size: 11.3 MB (11255543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc26a39a30971dfcc76361a27ccccd694dab434b66a62a28da89c03f57ed11a`  
		Last Modified: Wed, 21 Oct 2026 14:10:20 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:32cea58fdea507f33ea3c1e53124b43c1b234d654476f77ebbbda4d2a8797d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a4bc175d12f23bf92afce3027a8d177f574098c94690f1c9da1364813671fa`

```dockerfile
```

-	Layers:
	-	`sha256:e448bc44f86fc497ccb149b97d6a290d254cce7734a5477e403971c7de8d83ee`  
		Last Modified: Wed, 21 Oct 2026 14:10:18 GMT  
		Size: 30.7 KB (30656 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:cca7c5b43b775ba812bb2f8194d9ebcc2e5d6113c8391718178af0888bde2fed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:f873d91f751c4b8c2bdc04b7f574dadc9e96ad2b07527f3d27eca94468702680
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450124067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f158ef850b8834854465c2cf30b505c188ff940e1eb09cc0aea471c1c80541cb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Wed, 21 Oct 2026 11:58:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 11:59:03 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 11:59:04 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 11:59:06 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 11:59:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:23 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 11:59:24 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 11:59:25 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 11:59:34 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:35 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 11:59:36 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 11:59:37 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 11:59:45 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d02cd4e532ee5c9760e03d91d1d6fc285f16f6d550586142bf814316c614a83`  
		Last Modified: Wed, 21 Oct 2026 11:59:56 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa4eee4df889faf920b38a869ed7c19025a10b9efcd8c19ad2b211c054699d6`  
		Last Modified: Wed, 21 Oct 2026 11:59:55 GMT  
		Size: 374.4 KB (374365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f39cf86839852c6a2eba5ef78e62b1c8b70c98d32c8780d05a3ea0e0da39a8`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d804d3bbdc00a6053bb841c384290d81517ab37a5cddfda23e765d53a575ec6`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf2a0cc4335f2beee537f8e631430b955d4f56058ad073d7ae4b8fb038f351d`  
		Last Modified: Wed, 21 Oct 2026 11:59:57 GMT  
		Size: 21.0 MB (20969503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554160afc142152c068a5ca5f54d244459a4247ce909b4838976f80ceaa80672`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afa7171cbd5aebafd111ff3f1435c10b4527d1e7c28ba3bf1a0d9e439b1a557`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b477eca107b130a107edec7f6150c399011aba77be51e7a9cfd440179d2e1c6`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee95a0e7d8b671031a7c1ddc50d0fd58ceac8e26de9e6baaa7bb5a718236c57`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 24.8 MB (24786221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6fb57a22c974d18bb6fa7a512339f105bc32205b411bd206513377e93d6a54`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ded1bccfdf83b6cfcb56580f22392a0f69b07df686cec66d47d0d0159b80aa`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a1f61bdcb619288acea57e77a5e385a2c6b274feb534d7ccb0acd4b0bfedac`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ee578d0c517a3beef27b2ec6582418ad2b8cd955b388f40be5aae8e2eec4f8`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 12.0 MB (11988145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull docker@sha256:ff4b98d72eefaa5a2072b76da6bf8a62f6221dbdbdc36478dd7fd3fba474ea1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2284223860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c675bfd2990efb3ee574e16b01ff1c282d13c111a5ea7498518022387860dd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Wed, 21 Oct 2026 12:20:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 12:21:48 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 12:21:49 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:21:51 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 12:22:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 12:22:15 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 12:22:36 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:22:37 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 12:22:38 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 12:22:53 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78e296ad63eb7d530dac2de6cf5a806bf756c7cdaf8537753d7e52d27280e34`  
		Last Modified: Wed, 21 Oct 2026 12:23:03 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82242736a13b946f3139e6a1f4f7f4c5f7df6ff91f0eec2ffedf166e5a842fa3`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 359.0 KB (359001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b8ebe36d13eff88486d09aab9e3fe2a201297a2a3e2bf49d2231f0860e168d`  
		Last Modified: Wed, 21 Oct 2026 12:23:01 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54877a833acb46604c9d9e75a2820080f608f71f86214a25e78760dc55152503`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac86c6f732dd840bbbb48604ff5d757ef750503189efcffc8fa9a14c15381b52`  
		Last Modified: Wed, 21 Oct 2026 12:23:04 GMT  
		Size: 20.9 MB (20906050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e9b69ceb92864b22b30859ab941b73b47288c8316e4109886de746c3d3b152`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4366e0558c25eb6d0991f3f76dfc482a007ce7c92e7f54a43f8487c40dd01e53`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bedd8b61e8202465916ad33154cf026eb6472138fd79ae8336a27c720c473fca`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac22f7ea324965cfc224c05b6784da9507615cabf1f8bf17c38de6ea8b6a0c8`  
		Last Modified: Wed, 21 Oct 2026 12:23:07 GMT  
		Size: 24.7 MB (24733281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b872a211df31354c4df5e20bdb722765c09f959d476538cd4a0452f5bed92c`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3204dd174c032c29f5cfe845eed5f1ec7bfec2c308abc1696514796f8e5a02da`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7484e5424f1394deee17ad81a48e72c3c7412664f2db065c781339cfd6ead112`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244c5926369c165623c8d0f16376d7aca0fdb76e4ab889e5a40475f5b00303e3`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 11.9 MB (11928287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:363a8a33a050f5927b2708f2de13c98b3835378ac4d92cd9e6eb3acaeba4f0a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull docker@sha256:ff4b98d72eefaa5a2072b76da6bf8a62f6221dbdbdc36478dd7fd3fba474ea1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2284223860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c675bfd2990efb3ee574e16b01ff1c282d13c111a5ea7498518022387860dd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Wed, 21 Oct 2026 12:20:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 12:21:48 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 12:21:49 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:21:51 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 12:22:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 12:22:15 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 12:22:36 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:22:37 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 12:22:38 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 12:22:53 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78e296ad63eb7d530dac2de6cf5a806bf756c7cdaf8537753d7e52d27280e34`  
		Last Modified: Wed, 21 Oct 2026 12:23:03 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82242736a13b946f3139e6a1f4f7f4c5f7df6ff91f0eec2ffedf166e5a842fa3`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 359.0 KB (359001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b8ebe36d13eff88486d09aab9e3fe2a201297a2a3e2bf49d2231f0860e168d`  
		Last Modified: Wed, 21 Oct 2026 12:23:01 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54877a833acb46604c9d9e75a2820080f608f71f86214a25e78760dc55152503`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac86c6f732dd840bbbb48604ff5d757ef750503189efcffc8fa9a14c15381b52`  
		Last Modified: Wed, 21 Oct 2026 12:23:04 GMT  
		Size: 20.9 MB (20906050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e9b69ceb92864b22b30859ab941b73b47288c8316e4109886de746c3d3b152`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4366e0558c25eb6d0991f3f76dfc482a007ce7c92e7f54a43f8487c40dd01e53`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bedd8b61e8202465916ad33154cf026eb6472138fd79ae8336a27c720c473fca`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac22f7ea324965cfc224c05b6784da9507615cabf1f8bf17c38de6ea8b6a0c8`  
		Last Modified: Wed, 21 Oct 2026 12:23:07 GMT  
		Size: 24.7 MB (24733281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b872a211df31354c4df5e20bdb722765c09f959d476538cd4a0452f5bed92c`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3204dd174c032c29f5cfe845eed5f1ec7bfec2c308abc1696514796f8e5a02da`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7484e5424f1394deee17ad81a48e72c3c7412664f2db065c781339cfd6ead112`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244c5926369c165623c8d0f16376d7aca0fdb76e4ab889e5a40475f5b00303e3`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 11.9 MB (11928287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:d0dc610297cf8535884c4da3e56b3fa52029e46b031e34b2c28d1a6dde163b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `docker:29-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:f873d91f751c4b8c2bdc04b7f574dadc9e96ad2b07527f3d27eca94468702680
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450124067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f158ef850b8834854465c2cf30b505c188ff940e1eb09cc0aea471c1c80541cb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Wed, 21 Oct 2026 11:58:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 11:59:03 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 11:59:04 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 11:59:06 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 11:59:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:23 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 11:59:24 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 11:59:25 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 11:59:34 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:35 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 11:59:36 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 11:59:37 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 11:59:45 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d02cd4e532ee5c9760e03d91d1d6fc285f16f6d550586142bf814316c614a83`  
		Last Modified: Wed, 21 Oct 2026 11:59:56 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa4eee4df889faf920b38a869ed7c19025a10b9efcd8c19ad2b211c054699d6`  
		Last Modified: Wed, 21 Oct 2026 11:59:55 GMT  
		Size: 374.4 KB (374365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f39cf86839852c6a2eba5ef78e62b1c8b70c98d32c8780d05a3ea0e0da39a8`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d804d3bbdc00a6053bb841c384290d81517ab37a5cddfda23e765d53a575ec6`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf2a0cc4335f2beee537f8e631430b955d4f56058ad073d7ae4b8fb038f351d`  
		Last Modified: Wed, 21 Oct 2026 11:59:57 GMT  
		Size: 21.0 MB (20969503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554160afc142152c068a5ca5f54d244459a4247ce909b4838976f80ceaa80672`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afa7171cbd5aebafd111ff3f1435c10b4527d1e7c28ba3bf1a0d9e439b1a557`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b477eca107b130a107edec7f6150c399011aba77be51e7a9cfd440179d2e1c6`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee95a0e7d8b671031a7c1ddc50d0fd58ceac8e26de9e6baaa7bb5a718236c57`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 24.8 MB (24786221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6fb57a22c974d18bb6fa7a512339f105bc32205b411bd206513377e93d6a54`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ded1bccfdf83b6cfcb56580f22392a0f69b07df686cec66d47d0d0159b80aa`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a1f61bdcb619288acea57e77a5e385a2c6b274feb534d7ccb0acd4b0bfedac`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ee578d0c517a3beef27b2ec6582418ad2b8cd955b388f40be5aae8e2eec4f8`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 12.0 MB (11988145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9`

```console
$ docker pull docker@sha256:e486f5f730f413505b97a713fbeccb7ab327a3b259474c7c1155e0c3915c27fe
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

### `docker:29.9` - linux; amd64

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

### `docker:29.9` - unknown; unknown

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

### `docker:29.9` - linux; arm variant v6

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

### `docker:29.9` - unknown; unknown

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

### `docker:29.9` - linux; arm variant v7

```console
$ docker pull docker@sha256:7fe085d0ce4abde8807cddb2c61d07acb688f76c4e8e04b89c7ca52e8b4d3b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115467831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7177d395f1d7d17be904a4e9010f0512855fe973e4e3d66d93622c76bb643970`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:10:42 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:10:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:10:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:10:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:10:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:10:52 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:09:42 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:09:46 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:09:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:09:46 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5015b013ff131a9d8cf3319801a9bf4092df938168f56dd345a414eb9bced0`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 7.4 MB (7391383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b777a61c2d75e01c2e4d5d2843cff6bd9df65480293931d898847e0748796d8e`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20dc6a34bec1bd3dba87c221c296f5f18aff9bb840f91d224b44a2d5a3249ce`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 18.8 MB (18824896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b23af587d2c47d1b4fbe395b475317239a2f77bde94984f0f6f0c55ef12dbe`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 22.4 MB (22376476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027c95b21b05721b637b826ae6aa9fd6dc23f8a494a01887b55e8cc6545b69d4`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 10.7 MB (10715962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573d3e5390ac1553258dbba2ac57ac453d00072dacfdb035fe92cde1465d7e0c`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7bf8cddafab4bd8dd7dba691e0b505471346c37ec7563219bfdb5334d889af`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262b0283fa55feb1bfa4c1f3e98bebd6e168975e81badfa65a7558d366655e17`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582f56f20d25064ae980bddf5fc357958864ad567541e92ec3115ccc992c2583`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 3.4 MB (3438576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11b03fcb1a6d9a9f8331df2bce1c79f3f9e7ba37e4949fd1f39772858d81353`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 76.2 KB (76195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86db20fa39e353953544706b8ec482bac5794a897c246a3c69e5a8276c1f3a7c`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fbbc846cc0c4fa61ed043ea5fc684f67a4313ffe996b0fa6ffe42f26b769f6`  
		Last Modified: Wed, 21 Oct 2026 13:09:57 GMT  
		Size: 49.4 MB (49370981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8246ff94cd4debc55428be43a89e473ee56675bb408bfc08a8d67f5e12c24c8`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f7bd029eafe579134c2fbcc04e89fcc39e6df505d13db652892802e08f5332e`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:9b79f5203e902480c3feb69b31b4e1e03fb5216066b1d92dd829b9ada95ab04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b335ac5d5f5886ba9ea561971e43d64b0e6402a2fabe4ed6f2e6bd8b57a72d9`

```dockerfile
```

-	Layers:
	-	`sha256:9c86331c2a76062d7b2371612cf7bc0a8e1d1892eea667632fa96604173da71b`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0c49e05a4b2a45dbfc4b5254c47e57ea05eb492f364df6bb8e9756c1f9eeb27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115712365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1d4f2477f0f2c347dfd12b16d8fd7b809286bc438d484ad182b75381d67259`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:27:08 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:27:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:27:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:27:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:27:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:27:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:27:13 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:08:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:08:49 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef63590b461b3dc6f5c2dc50256d67877549d4ac743ab34c214f95da8100e4e`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 8.3 MB (8258866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f76f8a08fefc947930e0171d547df5c725c1451de40b54e20ab10b8ca5fcfb4`  
		Last Modified: Wed, 21 Oct 2026 12:27:19 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8a42ba736eeac46f90734f552432a9a1c4f8826c9a00b36b50d78c12e39bd`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 18.7 MB (18674885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b982c7e88aa9c2ae124d4893b6853c14aa54cf3b4b750eba4438867ad05b7`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 21.6 MB (21574391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc445e8b84267516627d1fff7016f952f7aa821052f75fead4031b8fcca9dc3`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 10.3 MB (10280864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fc373241347335a46db60ec5a65c058684f589129ed44d7595882b605cd96d`  
		Last Modified: Wed, 21 Oct 2026 12:27:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09ceca05c4adedc887ff1d041c65f00d39403119ea27afbf983648943633a9`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1dcd3999028209666424b80a0a5a249dea415896b724da780c58a9190d31`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50da2a27ff9de9cd16b66eb373fe35ff976e78c65ea0547818ef3f3165d4de62`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 4.6 MB (4624672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb903c3aa174b3c53e18c5fa0ab3069b509e991d01149ca8cc60ed8c4d15ce5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 90.4 KB (90426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9033831ce93c76892e7ca429ee1d63b07ac92c5246a0ea619195a69d3d583d21`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f710114875cec805f72aba5fb381a259e4d98895fa11a13028f137fb2622275`  
		Last Modified: Wed, 21 Oct 2026 13:08:59 GMT  
		Size: 48.0 MB (48012435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a5966808314e624916452777a1022384c42614c2921bcfe18c943a5d1543e2`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe537586fb6ceaaee0e25c00d81b861ce5aae588c9e6de8d5348a0291be8dbb`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:06c68ef9ab5d54fb98082c85ec0ea02d8f714f0c39cf90bf4807df8498207579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ecd3a9ba10db7ba87e06d9e1d51c98ec4aa15663ed0719cb774cc8fe249eb2`

```dockerfile
```

-	Layers:
	-	`sha256:1c2533752431914563176bdfd8ab2b1c9fe3087fce7a02f032015cec36019cf5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-cli`

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

### `docker:29.9-cli` - linux; amd64

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

### `docker:29.9-cli` - unknown; unknown

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

### `docker:29.9-cli` - linux; arm variant v6

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

### `docker:29.9-cli` - unknown; unknown

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

### `docker:29.9-cli` - linux; arm variant v7

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

### `docker:29.9-cli` - unknown; unknown

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

### `docker:29.9-cli` - linux; arm64 variant v8

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

### `docker:29.9-cli` - unknown; unknown

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

## `docker:29.9-dind`

```console
$ docker pull docker@sha256:e486f5f730f413505b97a713fbeccb7ab327a3b259474c7c1155e0c3915c27fe
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

### `docker:29.9-dind` - linux; amd64

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

### `docker:29.9-dind` - unknown; unknown

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

### `docker:29.9-dind` - linux; arm variant v6

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

### `docker:29.9-dind` - unknown; unknown

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

### `docker:29.9-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:7fe085d0ce4abde8807cddb2c61d07acb688f76c4e8e04b89c7ca52e8b4d3b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115467831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7177d395f1d7d17be904a4e9010f0512855fe973e4e3d66d93622c76bb643970`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:10:42 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:10:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:10:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:10:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:10:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:10:52 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:09:42 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:09:46 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:09:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:09:46 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5015b013ff131a9d8cf3319801a9bf4092df938168f56dd345a414eb9bced0`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 7.4 MB (7391383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b777a61c2d75e01c2e4d5d2843cff6bd9df65480293931d898847e0748796d8e`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20dc6a34bec1bd3dba87c221c296f5f18aff9bb840f91d224b44a2d5a3249ce`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 18.8 MB (18824896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b23af587d2c47d1b4fbe395b475317239a2f77bde94984f0f6f0c55ef12dbe`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 22.4 MB (22376476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027c95b21b05721b637b826ae6aa9fd6dc23f8a494a01887b55e8cc6545b69d4`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 10.7 MB (10715962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573d3e5390ac1553258dbba2ac57ac453d00072dacfdb035fe92cde1465d7e0c`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7bf8cddafab4bd8dd7dba691e0b505471346c37ec7563219bfdb5334d889af`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262b0283fa55feb1bfa4c1f3e98bebd6e168975e81badfa65a7558d366655e17`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582f56f20d25064ae980bddf5fc357958864ad567541e92ec3115ccc992c2583`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 3.4 MB (3438576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11b03fcb1a6d9a9f8331df2bce1c79f3f9e7ba37e4949fd1f39772858d81353`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 76.2 KB (76195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86db20fa39e353953544706b8ec482bac5794a897c246a3c69e5a8276c1f3a7c`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fbbc846cc0c4fa61ed043ea5fc684f67a4313ffe996b0fa6ffe42f26b769f6`  
		Last Modified: Wed, 21 Oct 2026 13:09:57 GMT  
		Size: 49.4 MB (49370981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8246ff94cd4debc55428be43a89e473ee56675bb408bfc08a8d67f5e12c24c8`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f7bd029eafe579134c2fbcc04e89fcc39e6df505d13db652892802e08f5332e`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:9b79f5203e902480c3feb69b31b4e1e03fb5216066b1d92dd829b9ada95ab04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b335ac5d5f5886ba9ea561971e43d64b0e6402a2fabe4ed6f2e6bd8b57a72d9`

```dockerfile
```

-	Layers:
	-	`sha256:9c86331c2a76062d7b2371612cf7bc0a8e1d1892eea667632fa96604173da71b`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0c49e05a4b2a45dbfc4b5254c47e57ea05eb492f364df6bb8e9756c1f9eeb27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115712365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1d4f2477f0f2c347dfd12b16d8fd7b809286bc438d484ad182b75381d67259`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:27:08 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:27:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:27:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:27:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:27:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:27:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:27:13 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:08:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:08:49 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef63590b461b3dc6f5c2dc50256d67877549d4ac743ab34c214f95da8100e4e`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 8.3 MB (8258866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f76f8a08fefc947930e0171d547df5c725c1451de40b54e20ab10b8ca5fcfb4`  
		Last Modified: Wed, 21 Oct 2026 12:27:19 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8a42ba736eeac46f90734f552432a9a1c4f8826c9a00b36b50d78c12e39bd`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 18.7 MB (18674885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b982c7e88aa9c2ae124d4893b6853c14aa54cf3b4b750eba4438867ad05b7`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 21.6 MB (21574391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc445e8b84267516627d1fff7016f952f7aa821052f75fead4031b8fcca9dc3`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 10.3 MB (10280864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fc373241347335a46db60ec5a65c058684f589129ed44d7595882b605cd96d`  
		Last Modified: Wed, 21 Oct 2026 12:27:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09ceca05c4adedc887ff1d041c65f00d39403119ea27afbf983648943633a9`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1dcd3999028209666424b80a0a5a249dea415896b724da780c58a9190d31`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50da2a27ff9de9cd16b66eb373fe35ff976e78c65ea0547818ef3f3165d4de62`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 4.6 MB (4624672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb903c3aa174b3c53e18c5fa0ab3069b509e991d01149ca8cc60ed8c4d15ce5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 90.4 KB (90426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9033831ce93c76892e7ca429ee1d63b07ac92c5246a0ea619195a69d3d583d21`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f710114875cec805f72aba5fb381a259e4d98895fa11a13028f137fb2622275`  
		Last Modified: Wed, 21 Oct 2026 13:08:59 GMT  
		Size: 48.0 MB (48012435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a5966808314e624916452777a1022384c42614c2921bcfe18c943a5d1543e2`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe537586fb6ceaaee0e25c00d81b861ce5aae588c9e6de8d5348a0291be8dbb`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:06c68ef9ab5d54fb98082c85ec0ea02d8f714f0c39cf90bf4807df8498207579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ecd3a9ba10db7ba87e06d9e1d51c98ec4aa15663ed0719cb774cc8fe249eb2`

```dockerfile
```

-	Layers:
	-	`sha256:1c2533752431914563176bdfd8ab2b1c9fe3087fce7a02f032015cec36019cf5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-dind-rootless`

```console
$ docker pull docker@sha256:4a1ff6e6733b687db4ce99bf7e908b2a991c3ca1affc6d79a511c27537599df1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.9-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:e1c31ace384338f30fa76546f70e824f0bf39c31d1844d7908e0efa4f69af8e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137756536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a497e4771c7f4b43bb1f87d435e5f9a03a08cfcd847ec278197250379681285`
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
# Thu, 22 Oct 2026 00:13:19 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 22 Oct 2026 00:13:19 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 22 Oct 2026 00:13:20 GMT
USER rootless
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
	-	`sha256:d793a6d1c37f02dc5b7fab91eb83f211c65d80ce35a248cdd43190f21146ce22`  
		Last Modified: Thu, 22 Oct 2026 00:13:26 GMT  
		Size: 3.6 MB (3626247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf25a778d350a7b4672a56d70bd320f6b34ca1c66cfc5a2c4c71ef4bc349af5`  
		Last Modified: Thu, 22 Oct 2026 00:13:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f82eadf8cd2d7586260d310b44b5a0dd5820174cda83b8844a0e2cd9fcf01e`  
		Last Modified: Thu, 22 Oct 2026 00:13:25 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc7843a0e59831bc9aec4c8b69bb3283c338885573188cf5302ae30509e9f07`  
		Last Modified: Thu, 22 Oct 2026 00:13:26 GMT  
		Size: 12.1 MB (12122791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ee0346bf5d981f277616d1aeaf407784e1c200b0d038eab0b49ac7c2fc1218`  
		Last Modified: Thu, 22 Oct 2026 00:13:27 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:811538cb9ab282846babdd925a82036e111520f49f756b47b234778dab53e874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a3f58263c430bb2c52bce3e94610c53b72b2d391790bb23b8cbadd7820b100e`

```dockerfile
```

-	Layers:
	-	`sha256:e40abc0b31bee4d430826a985bb8402aa8aa637f6f8c8b7908f2be817c2ded86`  
		Last Modified: Thu, 22 Oct 2026 00:13:25 GMT  
		Size: 30.5 KB (30492 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab0f299ee64d2b1cf953acc9f4ab7e04ff82972d83918e1d34e7f9e53263307a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130580572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da4d903f226545958d36ed07610dc219212641fa416033a4d5267bbeb99a5859`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:27:08 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:27:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:27:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:27:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:27:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:27:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:27:13 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:08:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:08:49 GMT
CMD []
# Wed, 21 Oct 2026 14:10:11 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 21 Oct 2026 14:10:11 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 21 Oct 2026 14:10:11 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 14:10:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 21 Oct 2026 14:10:13 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 21 Oct 2026 14:10:13 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 21 Oct 2026 14:10:13 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef63590b461b3dc6f5c2dc50256d67877549d4ac743ab34c214f95da8100e4e`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 8.3 MB (8258866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f76f8a08fefc947930e0171d547df5c725c1451de40b54e20ab10b8ca5fcfb4`  
		Last Modified: Wed, 21 Oct 2026 12:27:19 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8a42ba736eeac46f90734f552432a9a1c4f8826c9a00b36b50d78c12e39bd`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 18.7 MB (18674885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b982c7e88aa9c2ae124d4893b6853c14aa54cf3b4b750eba4438867ad05b7`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 21.6 MB (21574391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc445e8b84267516627d1fff7016f952f7aa821052f75fead4031b8fcca9dc3`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 10.3 MB (10280864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fc373241347335a46db60ec5a65c058684f589129ed44d7595882b605cd96d`  
		Last Modified: Wed, 21 Oct 2026 12:27:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09ceca05c4adedc887ff1d041c65f00d39403119ea27afbf983648943633a9`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1dcd3999028209666424b80a0a5a249dea415896b724da780c58a9190d31`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50da2a27ff9de9cd16b66eb373fe35ff976e78c65ea0547818ef3f3165d4de62`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 4.6 MB (4624672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb903c3aa174b3c53e18c5fa0ab3069b509e991d01149ca8cc60ed8c4d15ce5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 90.4 KB (90426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9033831ce93c76892e7ca429ee1d63b07ac92c5246a0ea619195a69d3d583d21`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f710114875cec805f72aba5fb381a259e4d98895fa11a13028f137fb2622275`  
		Last Modified: Wed, 21 Oct 2026 13:08:59 GMT  
		Size: 48.0 MB (48012435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a5966808314e624916452777a1022384c42614c2921bcfe18c943a5d1543e2`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe537586fb6ceaaee0e25c00d81b861ce5aae588c9e6de8d5348a0291be8dbb`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa91dced94752f894d9b70b0ebee6991baae423df9229fcea57b09ea096652c2`  
		Last Modified: Wed, 21 Oct 2026 14:10:19 GMT  
		Size: 3.6 MB (3611320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f05b3bee5a16867a49fe216680c826959a1e6b29112df054feb30d9d3710a1f`  
		Last Modified: Wed, 21 Oct 2026 14:10:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f2a1e01753bc879b60d199e5b827c6979881693f2b74734e9ae39de588126d`  
		Last Modified: Wed, 21 Oct 2026 14:10:18 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf5ec45094ca049f45163844b046941f1f59e38ac13c10fed66f5f3fd1d0a33`  
		Last Modified: Wed, 21 Oct 2026 14:10:19 GMT  
		Size: 11.3 MB (11255543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc26a39a30971dfcc76361a27ccccd694dab434b66a62a28da89c03f57ed11a`  
		Last Modified: Wed, 21 Oct 2026 14:10:20 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:32cea58fdea507f33ea3c1e53124b43c1b234d654476f77ebbbda4d2a8797d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a4bc175d12f23bf92afce3027a8d177f574098c94690f1c9da1364813671fa`

```dockerfile
```

-	Layers:
	-	`sha256:e448bc44f86fc497ccb149b97d6a290d254cce7734a5477e403971c7de8d83ee`  
		Last Modified: Wed, 21 Oct 2026 14:10:18 GMT  
		Size: 30.7 KB (30656 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-windowsservercore`

```console
$ docker pull docker@sha256:cca7c5b43b775ba812bb2f8194d9ebcc2e5d6113c8391718178af0888bde2fed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `docker:29.9-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:f873d91f751c4b8c2bdc04b7f574dadc9e96ad2b07527f3d27eca94468702680
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450124067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f158ef850b8834854465c2cf30b505c188ff940e1eb09cc0aea471c1c80541cb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Wed, 21 Oct 2026 11:58:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 11:59:03 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 11:59:04 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 11:59:06 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 11:59:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:23 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 11:59:24 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 11:59:25 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 11:59:34 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:35 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 11:59:36 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 11:59:37 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 11:59:45 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d02cd4e532ee5c9760e03d91d1d6fc285f16f6d550586142bf814316c614a83`  
		Last Modified: Wed, 21 Oct 2026 11:59:56 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa4eee4df889faf920b38a869ed7c19025a10b9efcd8c19ad2b211c054699d6`  
		Last Modified: Wed, 21 Oct 2026 11:59:55 GMT  
		Size: 374.4 KB (374365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f39cf86839852c6a2eba5ef78e62b1c8b70c98d32c8780d05a3ea0e0da39a8`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d804d3bbdc00a6053bb841c384290d81517ab37a5cddfda23e765d53a575ec6`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf2a0cc4335f2beee537f8e631430b955d4f56058ad073d7ae4b8fb038f351d`  
		Last Modified: Wed, 21 Oct 2026 11:59:57 GMT  
		Size: 21.0 MB (20969503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554160afc142152c068a5ca5f54d244459a4247ce909b4838976f80ceaa80672`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afa7171cbd5aebafd111ff3f1435c10b4527d1e7c28ba3bf1a0d9e439b1a557`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b477eca107b130a107edec7f6150c399011aba77be51e7a9cfd440179d2e1c6`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee95a0e7d8b671031a7c1ddc50d0fd58ceac8e26de9e6baaa7bb5a718236c57`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 24.8 MB (24786221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6fb57a22c974d18bb6fa7a512339f105bc32205b411bd206513377e93d6a54`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ded1bccfdf83b6cfcb56580f22392a0f69b07df686cec66d47d0d0159b80aa`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a1f61bdcb619288acea57e77a5e385a2c6b274feb534d7ccb0acd4b0bfedac`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ee578d0c517a3beef27b2ec6582418ad2b8cd955b388f40be5aae8e2eec4f8`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 12.0 MB (11988145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.9-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull docker@sha256:ff4b98d72eefaa5a2072b76da6bf8a62f6221dbdbdc36478dd7fd3fba474ea1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2284223860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c675bfd2990efb3ee574e16b01ff1c282d13c111a5ea7498518022387860dd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Wed, 21 Oct 2026 12:20:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 12:21:48 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 12:21:49 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:21:51 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 12:22:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 12:22:15 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 12:22:36 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:22:37 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 12:22:38 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 12:22:53 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78e296ad63eb7d530dac2de6cf5a806bf756c7cdaf8537753d7e52d27280e34`  
		Last Modified: Wed, 21 Oct 2026 12:23:03 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82242736a13b946f3139e6a1f4f7f4c5f7df6ff91f0eec2ffedf166e5a842fa3`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 359.0 KB (359001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b8ebe36d13eff88486d09aab9e3fe2a201297a2a3e2bf49d2231f0860e168d`  
		Last Modified: Wed, 21 Oct 2026 12:23:01 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54877a833acb46604c9d9e75a2820080f608f71f86214a25e78760dc55152503`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac86c6f732dd840bbbb48604ff5d757ef750503189efcffc8fa9a14c15381b52`  
		Last Modified: Wed, 21 Oct 2026 12:23:04 GMT  
		Size: 20.9 MB (20906050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e9b69ceb92864b22b30859ab941b73b47288c8316e4109886de746c3d3b152`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4366e0558c25eb6d0991f3f76dfc482a007ce7c92e7f54a43f8487c40dd01e53`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bedd8b61e8202465916ad33154cf026eb6472138fd79ae8336a27c720c473fca`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac22f7ea324965cfc224c05b6784da9507615cabf1f8bf17c38de6ea8b6a0c8`  
		Last Modified: Wed, 21 Oct 2026 12:23:07 GMT  
		Size: 24.7 MB (24733281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b872a211df31354c4df5e20bdb722765c09f959d476538cd4a0452f5bed92c`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3204dd174c032c29f5cfe845eed5f1ec7bfec2c308abc1696514796f8e5a02da`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7484e5424f1394deee17ad81a48e72c3c7412664f2db065c781339cfd6ead112`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244c5926369c165623c8d0f16376d7aca0fdb76e4ab889e5a40475f5b00303e3`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 11.9 MB (11928287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:363a8a33a050f5927b2708f2de13c98b3835378ac4d92cd9e6eb3acaeba4f0a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `docker:29.9-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull docker@sha256:ff4b98d72eefaa5a2072b76da6bf8a62f6221dbdbdc36478dd7fd3fba474ea1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2284223860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c675bfd2990efb3ee574e16b01ff1c282d13c111a5ea7498518022387860dd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Wed, 21 Oct 2026 12:20:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 12:21:48 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 12:21:49 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:21:51 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 12:22:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 12:22:15 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 12:22:36 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:22:37 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 12:22:38 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 12:22:53 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78e296ad63eb7d530dac2de6cf5a806bf756c7cdaf8537753d7e52d27280e34`  
		Last Modified: Wed, 21 Oct 2026 12:23:03 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82242736a13b946f3139e6a1f4f7f4c5f7df6ff91f0eec2ffedf166e5a842fa3`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 359.0 KB (359001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b8ebe36d13eff88486d09aab9e3fe2a201297a2a3e2bf49d2231f0860e168d`  
		Last Modified: Wed, 21 Oct 2026 12:23:01 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54877a833acb46604c9d9e75a2820080f608f71f86214a25e78760dc55152503`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac86c6f732dd840bbbb48604ff5d757ef750503189efcffc8fa9a14c15381b52`  
		Last Modified: Wed, 21 Oct 2026 12:23:04 GMT  
		Size: 20.9 MB (20906050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e9b69ceb92864b22b30859ab941b73b47288c8316e4109886de746c3d3b152`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4366e0558c25eb6d0991f3f76dfc482a007ce7c92e7f54a43f8487c40dd01e53`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bedd8b61e8202465916ad33154cf026eb6472138fd79ae8336a27c720c473fca`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac22f7ea324965cfc224c05b6784da9507615cabf1f8bf17c38de6ea8b6a0c8`  
		Last Modified: Wed, 21 Oct 2026 12:23:07 GMT  
		Size: 24.7 MB (24733281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b872a211df31354c4df5e20bdb722765c09f959d476538cd4a0452f5bed92c`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3204dd174c032c29f5cfe845eed5f1ec7bfec2c308abc1696514796f8e5a02da`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7484e5424f1394deee17ad81a48e72c3c7412664f2db065c781339cfd6ead112`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244c5926369c165623c8d0f16376d7aca0fdb76e4ab889e5a40475f5b00303e3`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 11.9 MB (11928287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:d0dc610297cf8535884c4da3e56b3fa52029e46b031e34b2c28d1a6dde163b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `docker:29.9-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:f873d91f751c4b8c2bdc04b7f574dadc9e96ad2b07527f3d27eca94468702680
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450124067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f158ef850b8834854465c2cf30b505c188ff940e1eb09cc0aea471c1c80541cb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Wed, 21 Oct 2026 11:58:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 11:59:03 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 11:59:04 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 11:59:06 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 11:59:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:23 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 11:59:24 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 11:59:25 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 11:59:34 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:35 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 11:59:36 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 11:59:37 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 11:59:45 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d02cd4e532ee5c9760e03d91d1d6fc285f16f6d550586142bf814316c614a83`  
		Last Modified: Wed, 21 Oct 2026 11:59:56 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa4eee4df889faf920b38a869ed7c19025a10b9efcd8c19ad2b211c054699d6`  
		Last Modified: Wed, 21 Oct 2026 11:59:55 GMT  
		Size: 374.4 KB (374365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f39cf86839852c6a2eba5ef78e62b1c8b70c98d32c8780d05a3ea0e0da39a8`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d804d3bbdc00a6053bb841c384290d81517ab37a5cddfda23e765d53a575ec6`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf2a0cc4335f2beee537f8e631430b955d4f56058ad073d7ae4b8fb038f351d`  
		Last Modified: Wed, 21 Oct 2026 11:59:57 GMT  
		Size: 21.0 MB (20969503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554160afc142152c068a5ca5f54d244459a4247ce909b4838976f80ceaa80672`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afa7171cbd5aebafd111ff3f1435c10b4527d1e7c28ba3bf1a0d9e439b1a557`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b477eca107b130a107edec7f6150c399011aba77be51e7a9cfd440179d2e1c6`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee95a0e7d8b671031a7c1ddc50d0fd58ceac8e26de9e6baaa7bb5a718236c57`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 24.8 MB (24786221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6fb57a22c974d18bb6fa7a512339f105bc32205b411bd206513377e93d6a54`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ded1bccfdf83b6cfcb56580f22392a0f69b07df686cec66d47d0d0159b80aa`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a1f61bdcb619288acea57e77a5e385a2c6b274feb534d7ccb0acd4b0bfedac`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ee578d0c517a3beef27b2ec6582418ad2b8cd955b388f40be5aae8e2eec4f8`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 12.0 MB (11988145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9.2`

```console
$ docker pull docker@sha256:e486f5f730f413505b97a713fbeccb7ab327a3b259474c7c1155e0c3915c27fe
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

### `docker:29.9.2` - linux; amd64

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

### `docker:29.9.2` - unknown; unknown

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

### `docker:29.9.2` - linux; arm variant v6

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

### `docker:29.9.2` - unknown; unknown

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

### `docker:29.9.2` - linux; arm variant v7

```console
$ docker pull docker@sha256:7fe085d0ce4abde8807cddb2c61d07acb688f76c4e8e04b89c7ca52e8b4d3b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115467831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7177d395f1d7d17be904a4e9010f0512855fe973e4e3d66d93622c76bb643970`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:10:42 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:10:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:10:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:10:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:10:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:10:52 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:09:42 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:09:46 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:09:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:09:46 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5015b013ff131a9d8cf3319801a9bf4092df938168f56dd345a414eb9bced0`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 7.4 MB (7391383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b777a61c2d75e01c2e4d5d2843cff6bd9df65480293931d898847e0748796d8e`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20dc6a34bec1bd3dba87c221c296f5f18aff9bb840f91d224b44a2d5a3249ce`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 18.8 MB (18824896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b23af587d2c47d1b4fbe395b475317239a2f77bde94984f0f6f0c55ef12dbe`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 22.4 MB (22376476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027c95b21b05721b637b826ae6aa9fd6dc23f8a494a01887b55e8cc6545b69d4`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 10.7 MB (10715962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573d3e5390ac1553258dbba2ac57ac453d00072dacfdb035fe92cde1465d7e0c`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7bf8cddafab4bd8dd7dba691e0b505471346c37ec7563219bfdb5334d889af`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262b0283fa55feb1bfa4c1f3e98bebd6e168975e81badfa65a7558d366655e17`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582f56f20d25064ae980bddf5fc357958864ad567541e92ec3115ccc992c2583`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 3.4 MB (3438576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11b03fcb1a6d9a9f8331df2bce1c79f3f9e7ba37e4949fd1f39772858d81353`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 76.2 KB (76195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86db20fa39e353953544706b8ec482bac5794a897c246a3c69e5a8276c1f3a7c`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fbbc846cc0c4fa61ed043ea5fc684f67a4313ffe996b0fa6ffe42f26b769f6`  
		Last Modified: Wed, 21 Oct 2026 13:09:57 GMT  
		Size: 49.4 MB (49370981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8246ff94cd4debc55428be43a89e473ee56675bb408bfc08a8d67f5e12c24c8`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f7bd029eafe579134c2fbcc04e89fcc39e6df505d13db652892802e08f5332e`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.2` - unknown; unknown

```console
$ docker pull docker@sha256:9b79f5203e902480c3feb69b31b4e1e03fb5216066b1d92dd829b9ada95ab04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b335ac5d5f5886ba9ea561971e43d64b0e6402a2fabe4ed6f2e6bd8b57a72d9`

```dockerfile
```

-	Layers:
	-	`sha256:9c86331c2a76062d7b2371612cf7bc0a8e1d1892eea667632fa96604173da71b`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.2` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0c49e05a4b2a45dbfc4b5254c47e57ea05eb492f364df6bb8e9756c1f9eeb27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115712365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1d4f2477f0f2c347dfd12b16d8fd7b809286bc438d484ad182b75381d67259`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:27:08 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:27:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:27:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:27:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:27:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:27:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:27:13 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:08:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:08:49 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef63590b461b3dc6f5c2dc50256d67877549d4ac743ab34c214f95da8100e4e`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 8.3 MB (8258866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f76f8a08fefc947930e0171d547df5c725c1451de40b54e20ab10b8ca5fcfb4`  
		Last Modified: Wed, 21 Oct 2026 12:27:19 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8a42ba736eeac46f90734f552432a9a1c4f8826c9a00b36b50d78c12e39bd`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 18.7 MB (18674885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b982c7e88aa9c2ae124d4893b6853c14aa54cf3b4b750eba4438867ad05b7`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 21.6 MB (21574391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc445e8b84267516627d1fff7016f952f7aa821052f75fead4031b8fcca9dc3`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 10.3 MB (10280864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fc373241347335a46db60ec5a65c058684f589129ed44d7595882b605cd96d`  
		Last Modified: Wed, 21 Oct 2026 12:27:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09ceca05c4adedc887ff1d041c65f00d39403119ea27afbf983648943633a9`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1dcd3999028209666424b80a0a5a249dea415896b724da780c58a9190d31`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50da2a27ff9de9cd16b66eb373fe35ff976e78c65ea0547818ef3f3165d4de62`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 4.6 MB (4624672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb903c3aa174b3c53e18c5fa0ab3069b509e991d01149ca8cc60ed8c4d15ce5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 90.4 KB (90426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9033831ce93c76892e7ca429ee1d63b07ac92c5246a0ea619195a69d3d583d21`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f710114875cec805f72aba5fb381a259e4d98895fa11a13028f137fb2622275`  
		Last Modified: Wed, 21 Oct 2026 13:08:59 GMT  
		Size: 48.0 MB (48012435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a5966808314e624916452777a1022384c42614c2921bcfe18c943a5d1543e2`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe537586fb6ceaaee0e25c00d81b861ce5aae588c9e6de8d5348a0291be8dbb`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.2` - unknown; unknown

```console
$ docker pull docker@sha256:06c68ef9ab5d54fb98082c85ec0ea02d8f714f0c39cf90bf4807df8498207579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ecd3a9ba10db7ba87e06d9e1d51c98ec4aa15663ed0719cb774cc8fe249eb2`

```dockerfile
```

-	Layers:
	-	`sha256:1c2533752431914563176bdfd8ab2b1c9fe3087fce7a02f032015cec36019cf5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.2-alpine3.24`

```console
$ docker pull docker@sha256:e486f5f730f413505b97a713fbeccb7ab327a3b259474c7c1155e0c3915c27fe
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

### `docker:29.9.2-alpine3.24` - linux; amd64

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

### `docker:29.9.2-alpine3.24` - unknown; unknown

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

### `docker:29.9.2-alpine3.24` - linux; arm variant v6

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

### `docker:29.9.2-alpine3.24` - unknown; unknown

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

### `docker:29.9.2-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:7fe085d0ce4abde8807cddb2c61d07acb688f76c4e8e04b89c7ca52e8b4d3b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115467831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7177d395f1d7d17be904a4e9010f0512855fe973e4e3d66d93622c76bb643970`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:10:42 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:10:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:10:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:10:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:10:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:10:52 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:09:42 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:09:46 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:09:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:09:46 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5015b013ff131a9d8cf3319801a9bf4092df938168f56dd345a414eb9bced0`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 7.4 MB (7391383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b777a61c2d75e01c2e4d5d2843cff6bd9df65480293931d898847e0748796d8e`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20dc6a34bec1bd3dba87c221c296f5f18aff9bb840f91d224b44a2d5a3249ce`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 18.8 MB (18824896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b23af587d2c47d1b4fbe395b475317239a2f77bde94984f0f6f0c55ef12dbe`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 22.4 MB (22376476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027c95b21b05721b637b826ae6aa9fd6dc23f8a494a01887b55e8cc6545b69d4`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 10.7 MB (10715962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573d3e5390ac1553258dbba2ac57ac453d00072dacfdb035fe92cde1465d7e0c`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7bf8cddafab4bd8dd7dba691e0b505471346c37ec7563219bfdb5334d889af`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262b0283fa55feb1bfa4c1f3e98bebd6e168975e81badfa65a7558d366655e17`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582f56f20d25064ae980bddf5fc357958864ad567541e92ec3115ccc992c2583`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 3.4 MB (3438576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11b03fcb1a6d9a9f8331df2bce1c79f3f9e7ba37e4949fd1f39772858d81353`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 76.2 KB (76195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86db20fa39e353953544706b8ec482bac5794a897c246a3c69e5a8276c1f3a7c`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fbbc846cc0c4fa61ed043ea5fc684f67a4313ffe996b0fa6ffe42f26b769f6`  
		Last Modified: Wed, 21 Oct 2026 13:09:57 GMT  
		Size: 49.4 MB (49370981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8246ff94cd4debc55428be43a89e473ee56675bb408bfc08a8d67f5e12c24c8`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f7bd029eafe579134c2fbcc04e89fcc39e6df505d13db652892802e08f5332e`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.2-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:9b79f5203e902480c3feb69b31b4e1e03fb5216066b1d92dd829b9ada95ab04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b335ac5d5f5886ba9ea561971e43d64b0e6402a2fabe4ed6f2e6bd8b57a72d9`

```dockerfile
```

-	Layers:
	-	`sha256:9c86331c2a76062d7b2371612cf7bc0a8e1d1892eea667632fa96604173da71b`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.2-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0c49e05a4b2a45dbfc4b5254c47e57ea05eb492f364df6bb8e9756c1f9eeb27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115712365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1d4f2477f0f2c347dfd12b16d8fd7b809286bc438d484ad182b75381d67259`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:27:08 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:27:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:27:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:27:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:27:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:27:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:27:13 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:08:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:08:49 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef63590b461b3dc6f5c2dc50256d67877549d4ac743ab34c214f95da8100e4e`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 8.3 MB (8258866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f76f8a08fefc947930e0171d547df5c725c1451de40b54e20ab10b8ca5fcfb4`  
		Last Modified: Wed, 21 Oct 2026 12:27:19 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8a42ba736eeac46f90734f552432a9a1c4f8826c9a00b36b50d78c12e39bd`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 18.7 MB (18674885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b982c7e88aa9c2ae124d4893b6853c14aa54cf3b4b750eba4438867ad05b7`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 21.6 MB (21574391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc445e8b84267516627d1fff7016f952f7aa821052f75fead4031b8fcca9dc3`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 10.3 MB (10280864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fc373241347335a46db60ec5a65c058684f589129ed44d7595882b605cd96d`  
		Last Modified: Wed, 21 Oct 2026 12:27:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09ceca05c4adedc887ff1d041c65f00d39403119ea27afbf983648943633a9`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1dcd3999028209666424b80a0a5a249dea415896b724da780c58a9190d31`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50da2a27ff9de9cd16b66eb373fe35ff976e78c65ea0547818ef3f3165d4de62`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 4.6 MB (4624672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb903c3aa174b3c53e18c5fa0ab3069b509e991d01149ca8cc60ed8c4d15ce5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 90.4 KB (90426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9033831ce93c76892e7ca429ee1d63b07ac92c5246a0ea619195a69d3d583d21`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f710114875cec805f72aba5fb381a259e4d98895fa11a13028f137fb2622275`  
		Last Modified: Wed, 21 Oct 2026 13:08:59 GMT  
		Size: 48.0 MB (48012435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a5966808314e624916452777a1022384c42614c2921bcfe18c943a5d1543e2`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe537586fb6ceaaee0e25c00d81b861ce5aae588c9e6de8d5348a0291be8dbb`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.2-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:06c68ef9ab5d54fb98082c85ec0ea02d8f714f0c39cf90bf4807df8498207579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ecd3a9ba10db7ba87e06d9e1d51c98ec4aa15663ed0719cb774cc8fe249eb2`

```dockerfile
```

-	Layers:
	-	`sha256:1c2533752431914563176bdfd8ab2b1c9fe3087fce7a02f032015cec36019cf5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.2-cli`

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

### `docker:29.9.2-cli` - linux; amd64

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

### `docker:29.9.2-cli` - unknown; unknown

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

### `docker:29.9.2-cli` - linux; arm variant v6

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

### `docker:29.9.2-cli` - unknown; unknown

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

### `docker:29.9.2-cli` - linux; arm variant v7

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

### `docker:29.9.2-cli` - unknown; unknown

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

### `docker:29.9.2-cli` - linux; arm64 variant v8

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

### `docker:29.9.2-cli` - unknown; unknown

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

## `docker:29.9.2-cli-alpine3.24`

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

### `docker:29.9.2-cli-alpine3.24` - linux; amd64

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

### `docker:29.9.2-cli-alpine3.24` - unknown; unknown

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

### `docker:29.9.2-cli-alpine3.24` - linux; arm variant v6

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

### `docker:29.9.2-cli-alpine3.24` - unknown; unknown

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

### `docker:29.9.2-cli-alpine3.24` - linux; arm variant v7

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

### `docker:29.9.2-cli-alpine3.24` - unknown; unknown

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

### `docker:29.9.2-cli-alpine3.24` - linux; arm64 variant v8

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

### `docker:29.9.2-cli-alpine3.24` - unknown; unknown

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

## `docker:29.9.2-dind`

```console
$ docker pull docker@sha256:e486f5f730f413505b97a713fbeccb7ab327a3b259474c7c1155e0c3915c27fe
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

### `docker:29.9.2-dind` - linux; amd64

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

### `docker:29.9.2-dind` - unknown; unknown

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

### `docker:29.9.2-dind` - linux; arm variant v6

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

### `docker:29.9.2-dind` - unknown; unknown

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

### `docker:29.9.2-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:7fe085d0ce4abde8807cddb2c61d07acb688f76c4e8e04b89c7ca52e8b4d3b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115467831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7177d395f1d7d17be904a4e9010f0512855fe973e4e3d66d93622c76bb643970`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:10:42 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:10:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:10:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:10:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:10:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:10:52 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:09:42 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:09:46 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:09:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:09:46 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5015b013ff131a9d8cf3319801a9bf4092df938168f56dd345a414eb9bced0`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 7.4 MB (7391383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b777a61c2d75e01c2e4d5d2843cff6bd9df65480293931d898847e0748796d8e`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20dc6a34bec1bd3dba87c221c296f5f18aff9bb840f91d224b44a2d5a3249ce`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 18.8 MB (18824896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b23af587d2c47d1b4fbe395b475317239a2f77bde94984f0f6f0c55ef12dbe`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 22.4 MB (22376476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027c95b21b05721b637b826ae6aa9fd6dc23f8a494a01887b55e8cc6545b69d4`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 10.7 MB (10715962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573d3e5390ac1553258dbba2ac57ac453d00072dacfdb035fe92cde1465d7e0c`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7bf8cddafab4bd8dd7dba691e0b505471346c37ec7563219bfdb5334d889af`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262b0283fa55feb1bfa4c1f3e98bebd6e168975e81badfa65a7558d366655e17`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582f56f20d25064ae980bddf5fc357958864ad567541e92ec3115ccc992c2583`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 3.4 MB (3438576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11b03fcb1a6d9a9f8331df2bce1c79f3f9e7ba37e4949fd1f39772858d81353`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 76.2 KB (76195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86db20fa39e353953544706b8ec482bac5794a897c246a3c69e5a8276c1f3a7c`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fbbc846cc0c4fa61ed043ea5fc684f67a4313ffe996b0fa6ffe42f26b769f6`  
		Last Modified: Wed, 21 Oct 2026 13:09:57 GMT  
		Size: 49.4 MB (49370981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8246ff94cd4debc55428be43a89e473ee56675bb408bfc08a8d67f5e12c24c8`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f7bd029eafe579134c2fbcc04e89fcc39e6df505d13db652892802e08f5332e`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.2-dind` - unknown; unknown

```console
$ docker pull docker@sha256:9b79f5203e902480c3feb69b31b4e1e03fb5216066b1d92dd829b9ada95ab04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b335ac5d5f5886ba9ea561971e43d64b0e6402a2fabe4ed6f2e6bd8b57a72d9`

```dockerfile
```

-	Layers:
	-	`sha256:9c86331c2a76062d7b2371612cf7bc0a8e1d1892eea667632fa96604173da71b`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.2-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0c49e05a4b2a45dbfc4b5254c47e57ea05eb492f364df6bb8e9756c1f9eeb27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115712365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1d4f2477f0f2c347dfd12b16d8fd7b809286bc438d484ad182b75381d67259`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:27:08 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:27:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:27:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:27:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:27:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:27:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:27:13 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:08:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:08:49 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef63590b461b3dc6f5c2dc50256d67877549d4ac743ab34c214f95da8100e4e`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 8.3 MB (8258866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f76f8a08fefc947930e0171d547df5c725c1451de40b54e20ab10b8ca5fcfb4`  
		Last Modified: Wed, 21 Oct 2026 12:27:19 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8a42ba736eeac46f90734f552432a9a1c4f8826c9a00b36b50d78c12e39bd`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 18.7 MB (18674885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b982c7e88aa9c2ae124d4893b6853c14aa54cf3b4b750eba4438867ad05b7`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 21.6 MB (21574391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc445e8b84267516627d1fff7016f952f7aa821052f75fead4031b8fcca9dc3`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 10.3 MB (10280864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fc373241347335a46db60ec5a65c058684f589129ed44d7595882b605cd96d`  
		Last Modified: Wed, 21 Oct 2026 12:27:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09ceca05c4adedc887ff1d041c65f00d39403119ea27afbf983648943633a9`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1dcd3999028209666424b80a0a5a249dea415896b724da780c58a9190d31`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50da2a27ff9de9cd16b66eb373fe35ff976e78c65ea0547818ef3f3165d4de62`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 4.6 MB (4624672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb903c3aa174b3c53e18c5fa0ab3069b509e991d01149ca8cc60ed8c4d15ce5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 90.4 KB (90426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9033831ce93c76892e7ca429ee1d63b07ac92c5246a0ea619195a69d3d583d21`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f710114875cec805f72aba5fb381a259e4d98895fa11a13028f137fb2622275`  
		Last Modified: Wed, 21 Oct 2026 13:08:59 GMT  
		Size: 48.0 MB (48012435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a5966808314e624916452777a1022384c42614c2921bcfe18c943a5d1543e2`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe537586fb6ceaaee0e25c00d81b861ce5aae588c9e6de8d5348a0291be8dbb`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.2-dind` - unknown; unknown

```console
$ docker pull docker@sha256:06c68ef9ab5d54fb98082c85ec0ea02d8f714f0c39cf90bf4807df8498207579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ecd3a9ba10db7ba87e06d9e1d51c98ec4aa15663ed0719cb774cc8fe249eb2`

```dockerfile
```

-	Layers:
	-	`sha256:1c2533752431914563176bdfd8ab2b1c9fe3087fce7a02f032015cec36019cf5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.2-dind-alpine3.24`

```console
$ docker pull docker@sha256:e486f5f730f413505b97a713fbeccb7ab327a3b259474c7c1155e0c3915c27fe
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

### `docker:29.9.2-dind-alpine3.24` - linux; amd64

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

### `docker:29.9.2-dind-alpine3.24` - unknown; unknown

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

### `docker:29.9.2-dind-alpine3.24` - linux; arm variant v6

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

### `docker:29.9.2-dind-alpine3.24` - unknown; unknown

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

### `docker:29.9.2-dind-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:7fe085d0ce4abde8807cddb2c61d07acb688f76c4e8e04b89c7ca52e8b4d3b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115467831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7177d395f1d7d17be904a4e9010f0512855fe973e4e3d66d93622c76bb643970`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:10:42 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:10:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:10:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:10:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:10:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:10:52 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:09:42 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:09:46 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:09:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:09:46 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5015b013ff131a9d8cf3319801a9bf4092df938168f56dd345a414eb9bced0`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 7.4 MB (7391383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b777a61c2d75e01c2e4d5d2843cff6bd9df65480293931d898847e0748796d8e`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20dc6a34bec1bd3dba87c221c296f5f18aff9bb840f91d224b44a2d5a3249ce`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 18.8 MB (18824896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b23af587d2c47d1b4fbe395b475317239a2f77bde94984f0f6f0c55ef12dbe`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 22.4 MB (22376476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027c95b21b05721b637b826ae6aa9fd6dc23f8a494a01887b55e8cc6545b69d4`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 10.7 MB (10715962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573d3e5390ac1553258dbba2ac57ac453d00072dacfdb035fe92cde1465d7e0c`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7bf8cddafab4bd8dd7dba691e0b505471346c37ec7563219bfdb5334d889af`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262b0283fa55feb1bfa4c1f3e98bebd6e168975e81badfa65a7558d366655e17`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582f56f20d25064ae980bddf5fc357958864ad567541e92ec3115ccc992c2583`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 3.4 MB (3438576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11b03fcb1a6d9a9f8331df2bce1c79f3f9e7ba37e4949fd1f39772858d81353`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 76.2 KB (76195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86db20fa39e353953544706b8ec482bac5794a897c246a3c69e5a8276c1f3a7c`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fbbc846cc0c4fa61ed043ea5fc684f67a4313ffe996b0fa6ffe42f26b769f6`  
		Last Modified: Wed, 21 Oct 2026 13:09:57 GMT  
		Size: 49.4 MB (49370981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8246ff94cd4debc55428be43a89e473ee56675bb408bfc08a8d67f5e12c24c8`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f7bd029eafe579134c2fbcc04e89fcc39e6df505d13db652892802e08f5332e`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.2-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:9b79f5203e902480c3feb69b31b4e1e03fb5216066b1d92dd829b9ada95ab04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b335ac5d5f5886ba9ea561971e43d64b0e6402a2fabe4ed6f2e6bd8b57a72d9`

```dockerfile
```

-	Layers:
	-	`sha256:9c86331c2a76062d7b2371612cf7bc0a8e1d1892eea667632fa96604173da71b`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.2-dind-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0c49e05a4b2a45dbfc4b5254c47e57ea05eb492f364df6bb8e9756c1f9eeb27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115712365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1d4f2477f0f2c347dfd12b16d8fd7b809286bc438d484ad182b75381d67259`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:27:08 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:27:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:27:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:27:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:27:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:27:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:27:13 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:08:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:08:49 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef63590b461b3dc6f5c2dc50256d67877549d4ac743ab34c214f95da8100e4e`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 8.3 MB (8258866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f76f8a08fefc947930e0171d547df5c725c1451de40b54e20ab10b8ca5fcfb4`  
		Last Modified: Wed, 21 Oct 2026 12:27:19 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8a42ba736eeac46f90734f552432a9a1c4f8826c9a00b36b50d78c12e39bd`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 18.7 MB (18674885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b982c7e88aa9c2ae124d4893b6853c14aa54cf3b4b750eba4438867ad05b7`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 21.6 MB (21574391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc445e8b84267516627d1fff7016f952f7aa821052f75fead4031b8fcca9dc3`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 10.3 MB (10280864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fc373241347335a46db60ec5a65c058684f589129ed44d7595882b605cd96d`  
		Last Modified: Wed, 21 Oct 2026 12:27:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09ceca05c4adedc887ff1d041c65f00d39403119ea27afbf983648943633a9`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1dcd3999028209666424b80a0a5a249dea415896b724da780c58a9190d31`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50da2a27ff9de9cd16b66eb373fe35ff976e78c65ea0547818ef3f3165d4de62`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 4.6 MB (4624672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb903c3aa174b3c53e18c5fa0ab3069b509e991d01149ca8cc60ed8c4d15ce5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 90.4 KB (90426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9033831ce93c76892e7ca429ee1d63b07ac92c5246a0ea619195a69d3d583d21`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f710114875cec805f72aba5fb381a259e4d98895fa11a13028f137fb2622275`  
		Last Modified: Wed, 21 Oct 2026 13:08:59 GMT  
		Size: 48.0 MB (48012435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a5966808314e624916452777a1022384c42614c2921bcfe18c943a5d1543e2`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe537586fb6ceaaee0e25c00d81b861ce5aae588c9e6de8d5348a0291be8dbb`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.2-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:06c68ef9ab5d54fb98082c85ec0ea02d8f714f0c39cf90bf4807df8498207579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ecd3a9ba10db7ba87e06d9e1d51c98ec4aa15663ed0719cb774cc8fe249eb2`

```dockerfile
```

-	Layers:
	-	`sha256:1c2533752431914563176bdfd8ab2b1c9fe3087fce7a02f032015cec36019cf5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.2-dind-rootless`

```console
$ docker pull docker@sha256:4a1ff6e6733b687db4ce99bf7e908b2a991c3ca1affc6d79a511c27537599df1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.9.2-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:e1c31ace384338f30fa76546f70e824f0bf39c31d1844d7908e0efa4f69af8e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137756536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a497e4771c7f4b43bb1f87d435e5f9a03a08cfcd847ec278197250379681285`
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
# Thu, 22 Oct 2026 00:13:19 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 22 Oct 2026 00:13:19 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 22 Oct 2026 00:13:20 GMT
USER rootless
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
	-	`sha256:d793a6d1c37f02dc5b7fab91eb83f211c65d80ce35a248cdd43190f21146ce22`  
		Last Modified: Thu, 22 Oct 2026 00:13:26 GMT  
		Size: 3.6 MB (3626247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf25a778d350a7b4672a56d70bd320f6b34ca1c66cfc5a2c4c71ef4bc349af5`  
		Last Modified: Thu, 22 Oct 2026 00:13:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f82eadf8cd2d7586260d310b44b5a0dd5820174cda83b8844a0e2cd9fcf01e`  
		Last Modified: Thu, 22 Oct 2026 00:13:25 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc7843a0e59831bc9aec4c8b69bb3283c338885573188cf5302ae30509e9f07`  
		Last Modified: Thu, 22 Oct 2026 00:13:26 GMT  
		Size: 12.1 MB (12122791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ee0346bf5d981f277616d1aeaf407784e1c200b0d038eab0b49ac7c2fc1218`  
		Last Modified: Thu, 22 Oct 2026 00:13:27 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.2-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:811538cb9ab282846babdd925a82036e111520f49f756b47b234778dab53e874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a3f58263c430bb2c52bce3e94610c53b72b2d391790bb23b8cbadd7820b100e`

```dockerfile
```

-	Layers:
	-	`sha256:e40abc0b31bee4d430826a985bb8402aa8aa637f6f8c8b7908f2be817c2ded86`  
		Last Modified: Thu, 22 Oct 2026 00:13:25 GMT  
		Size: 30.5 KB (30492 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.2-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab0f299ee64d2b1cf953acc9f4ab7e04ff82972d83918e1d34e7f9e53263307a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130580572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da4d903f226545958d36ed07610dc219212641fa416033a4d5267bbeb99a5859`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:27:08 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:27:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:27:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:27:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:27:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:27:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:27:13 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:08:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:08:49 GMT
CMD []
# Wed, 21 Oct 2026 14:10:11 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 21 Oct 2026 14:10:11 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 21 Oct 2026 14:10:11 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 14:10:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 21 Oct 2026 14:10:13 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 21 Oct 2026 14:10:13 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 21 Oct 2026 14:10:13 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef63590b461b3dc6f5c2dc50256d67877549d4ac743ab34c214f95da8100e4e`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 8.3 MB (8258866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f76f8a08fefc947930e0171d547df5c725c1451de40b54e20ab10b8ca5fcfb4`  
		Last Modified: Wed, 21 Oct 2026 12:27:19 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8a42ba736eeac46f90734f552432a9a1c4f8826c9a00b36b50d78c12e39bd`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 18.7 MB (18674885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b982c7e88aa9c2ae124d4893b6853c14aa54cf3b4b750eba4438867ad05b7`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 21.6 MB (21574391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc445e8b84267516627d1fff7016f952f7aa821052f75fead4031b8fcca9dc3`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 10.3 MB (10280864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fc373241347335a46db60ec5a65c058684f589129ed44d7595882b605cd96d`  
		Last Modified: Wed, 21 Oct 2026 12:27:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09ceca05c4adedc887ff1d041c65f00d39403119ea27afbf983648943633a9`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1dcd3999028209666424b80a0a5a249dea415896b724da780c58a9190d31`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50da2a27ff9de9cd16b66eb373fe35ff976e78c65ea0547818ef3f3165d4de62`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 4.6 MB (4624672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb903c3aa174b3c53e18c5fa0ab3069b509e991d01149ca8cc60ed8c4d15ce5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 90.4 KB (90426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9033831ce93c76892e7ca429ee1d63b07ac92c5246a0ea619195a69d3d583d21`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f710114875cec805f72aba5fb381a259e4d98895fa11a13028f137fb2622275`  
		Last Modified: Wed, 21 Oct 2026 13:08:59 GMT  
		Size: 48.0 MB (48012435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a5966808314e624916452777a1022384c42614c2921bcfe18c943a5d1543e2`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe537586fb6ceaaee0e25c00d81b861ce5aae588c9e6de8d5348a0291be8dbb`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa91dced94752f894d9b70b0ebee6991baae423df9229fcea57b09ea096652c2`  
		Last Modified: Wed, 21 Oct 2026 14:10:19 GMT  
		Size: 3.6 MB (3611320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f05b3bee5a16867a49fe216680c826959a1e6b29112df054feb30d9d3710a1f`  
		Last Modified: Wed, 21 Oct 2026 14:10:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f2a1e01753bc879b60d199e5b827c6979881693f2b74734e9ae39de588126d`  
		Last Modified: Wed, 21 Oct 2026 14:10:18 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf5ec45094ca049f45163844b046941f1f59e38ac13c10fed66f5f3fd1d0a33`  
		Last Modified: Wed, 21 Oct 2026 14:10:19 GMT  
		Size: 11.3 MB (11255543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc26a39a30971dfcc76361a27ccccd694dab434b66a62a28da89c03f57ed11a`  
		Last Modified: Wed, 21 Oct 2026 14:10:20 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.2-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:32cea58fdea507f33ea3c1e53124b43c1b234d654476f77ebbbda4d2a8797d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a4bc175d12f23bf92afce3027a8d177f574098c94690f1c9da1364813671fa`

```dockerfile
```

-	Layers:
	-	`sha256:e448bc44f86fc497ccb149b97d6a290d254cce7734a5477e403971c7de8d83ee`  
		Last Modified: Wed, 21 Oct 2026 14:10:18 GMT  
		Size: 30.7 KB (30656 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.2-windowsservercore`

```console
$ docker pull docker@sha256:cca7c5b43b775ba812bb2f8194d9ebcc2e5d6113c8391718178af0888bde2fed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `docker:29.9.2-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:f873d91f751c4b8c2bdc04b7f574dadc9e96ad2b07527f3d27eca94468702680
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450124067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f158ef850b8834854465c2cf30b505c188ff940e1eb09cc0aea471c1c80541cb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Wed, 21 Oct 2026 11:58:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 11:59:03 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 11:59:04 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 11:59:06 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 11:59:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:23 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 11:59:24 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 11:59:25 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 11:59:34 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:35 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 11:59:36 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 11:59:37 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 11:59:45 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d02cd4e532ee5c9760e03d91d1d6fc285f16f6d550586142bf814316c614a83`  
		Last Modified: Wed, 21 Oct 2026 11:59:56 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa4eee4df889faf920b38a869ed7c19025a10b9efcd8c19ad2b211c054699d6`  
		Last Modified: Wed, 21 Oct 2026 11:59:55 GMT  
		Size: 374.4 KB (374365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f39cf86839852c6a2eba5ef78e62b1c8b70c98d32c8780d05a3ea0e0da39a8`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d804d3bbdc00a6053bb841c384290d81517ab37a5cddfda23e765d53a575ec6`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf2a0cc4335f2beee537f8e631430b955d4f56058ad073d7ae4b8fb038f351d`  
		Last Modified: Wed, 21 Oct 2026 11:59:57 GMT  
		Size: 21.0 MB (20969503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554160afc142152c068a5ca5f54d244459a4247ce909b4838976f80ceaa80672`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afa7171cbd5aebafd111ff3f1435c10b4527d1e7c28ba3bf1a0d9e439b1a557`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b477eca107b130a107edec7f6150c399011aba77be51e7a9cfd440179d2e1c6`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee95a0e7d8b671031a7c1ddc50d0fd58ceac8e26de9e6baaa7bb5a718236c57`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 24.8 MB (24786221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6fb57a22c974d18bb6fa7a512339f105bc32205b411bd206513377e93d6a54`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ded1bccfdf83b6cfcb56580f22392a0f69b07df686cec66d47d0d0159b80aa`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a1f61bdcb619288acea57e77a5e385a2c6b274feb534d7ccb0acd4b0bfedac`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ee578d0c517a3beef27b2ec6582418ad2b8cd955b388f40be5aae8e2eec4f8`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 12.0 MB (11988145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.9.2-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull docker@sha256:ff4b98d72eefaa5a2072b76da6bf8a62f6221dbdbdc36478dd7fd3fba474ea1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2284223860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c675bfd2990efb3ee574e16b01ff1c282d13c111a5ea7498518022387860dd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Wed, 21 Oct 2026 12:20:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 12:21:48 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 12:21:49 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:21:51 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 12:22:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 12:22:15 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 12:22:36 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:22:37 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 12:22:38 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 12:22:53 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78e296ad63eb7d530dac2de6cf5a806bf756c7cdaf8537753d7e52d27280e34`  
		Last Modified: Wed, 21 Oct 2026 12:23:03 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82242736a13b946f3139e6a1f4f7f4c5f7df6ff91f0eec2ffedf166e5a842fa3`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 359.0 KB (359001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b8ebe36d13eff88486d09aab9e3fe2a201297a2a3e2bf49d2231f0860e168d`  
		Last Modified: Wed, 21 Oct 2026 12:23:01 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54877a833acb46604c9d9e75a2820080f608f71f86214a25e78760dc55152503`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac86c6f732dd840bbbb48604ff5d757ef750503189efcffc8fa9a14c15381b52`  
		Last Modified: Wed, 21 Oct 2026 12:23:04 GMT  
		Size: 20.9 MB (20906050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e9b69ceb92864b22b30859ab941b73b47288c8316e4109886de746c3d3b152`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4366e0558c25eb6d0991f3f76dfc482a007ce7c92e7f54a43f8487c40dd01e53`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bedd8b61e8202465916ad33154cf026eb6472138fd79ae8336a27c720c473fca`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac22f7ea324965cfc224c05b6784da9507615cabf1f8bf17c38de6ea8b6a0c8`  
		Last Modified: Wed, 21 Oct 2026 12:23:07 GMT  
		Size: 24.7 MB (24733281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b872a211df31354c4df5e20bdb722765c09f959d476538cd4a0452f5bed92c`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3204dd174c032c29f5cfe845eed5f1ec7bfec2c308abc1696514796f8e5a02da`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7484e5424f1394deee17ad81a48e72c3c7412664f2db065c781339cfd6ead112`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244c5926369c165623c8d0f16376d7aca0fdb76e4ab889e5a40475f5b00303e3`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 11.9 MB (11928287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9.2-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:363a8a33a050f5927b2708f2de13c98b3835378ac4d92cd9e6eb3acaeba4f0a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `docker:29.9.2-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull docker@sha256:ff4b98d72eefaa5a2072b76da6bf8a62f6221dbdbdc36478dd7fd3fba474ea1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2284223860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c675bfd2990efb3ee574e16b01ff1c282d13c111a5ea7498518022387860dd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Wed, 21 Oct 2026 12:20:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 12:21:48 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 12:21:49 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:21:51 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 12:22:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 12:22:15 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 12:22:36 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:22:37 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 12:22:38 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 12:22:53 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78e296ad63eb7d530dac2de6cf5a806bf756c7cdaf8537753d7e52d27280e34`  
		Last Modified: Wed, 21 Oct 2026 12:23:03 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82242736a13b946f3139e6a1f4f7f4c5f7df6ff91f0eec2ffedf166e5a842fa3`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 359.0 KB (359001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b8ebe36d13eff88486d09aab9e3fe2a201297a2a3e2bf49d2231f0860e168d`  
		Last Modified: Wed, 21 Oct 2026 12:23:01 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54877a833acb46604c9d9e75a2820080f608f71f86214a25e78760dc55152503`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac86c6f732dd840bbbb48604ff5d757ef750503189efcffc8fa9a14c15381b52`  
		Last Modified: Wed, 21 Oct 2026 12:23:04 GMT  
		Size: 20.9 MB (20906050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e9b69ceb92864b22b30859ab941b73b47288c8316e4109886de746c3d3b152`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4366e0558c25eb6d0991f3f76dfc482a007ce7c92e7f54a43f8487c40dd01e53`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bedd8b61e8202465916ad33154cf026eb6472138fd79ae8336a27c720c473fca`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac22f7ea324965cfc224c05b6784da9507615cabf1f8bf17c38de6ea8b6a0c8`  
		Last Modified: Wed, 21 Oct 2026 12:23:07 GMT  
		Size: 24.7 MB (24733281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b872a211df31354c4df5e20bdb722765c09f959d476538cd4a0452f5bed92c`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3204dd174c032c29f5cfe845eed5f1ec7bfec2c308abc1696514796f8e5a02da`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7484e5424f1394deee17ad81a48e72c3c7412664f2db065c781339cfd6ead112`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244c5926369c165623c8d0f16376d7aca0fdb76e4ab889e5a40475f5b00303e3`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 11.9 MB (11928287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9.2-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:d0dc610297cf8535884c4da3e56b3fa52029e46b031e34b2c28d1a6dde163b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `docker:29.9.2-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:f873d91f751c4b8c2bdc04b7f574dadc9e96ad2b07527f3d27eca94468702680
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450124067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f158ef850b8834854465c2cf30b505c188ff940e1eb09cc0aea471c1c80541cb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Wed, 21 Oct 2026 11:58:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 11:59:03 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 11:59:04 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 11:59:06 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 11:59:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:23 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 11:59:24 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 11:59:25 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 11:59:34 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:35 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 11:59:36 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 11:59:37 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 11:59:45 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d02cd4e532ee5c9760e03d91d1d6fc285f16f6d550586142bf814316c614a83`  
		Last Modified: Wed, 21 Oct 2026 11:59:56 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa4eee4df889faf920b38a869ed7c19025a10b9efcd8c19ad2b211c054699d6`  
		Last Modified: Wed, 21 Oct 2026 11:59:55 GMT  
		Size: 374.4 KB (374365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f39cf86839852c6a2eba5ef78e62b1c8b70c98d32c8780d05a3ea0e0da39a8`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d804d3bbdc00a6053bb841c384290d81517ab37a5cddfda23e765d53a575ec6`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf2a0cc4335f2beee537f8e631430b955d4f56058ad073d7ae4b8fb038f351d`  
		Last Modified: Wed, 21 Oct 2026 11:59:57 GMT  
		Size: 21.0 MB (20969503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554160afc142152c068a5ca5f54d244459a4247ce909b4838976f80ceaa80672`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afa7171cbd5aebafd111ff3f1435c10b4527d1e7c28ba3bf1a0d9e439b1a557`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b477eca107b130a107edec7f6150c399011aba77be51e7a9cfd440179d2e1c6`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee95a0e7d8b671031a7c1ddc50d0fd58ceac8e26de9e6baaa7bb5a718236c57`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 24.8 MB (24786221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6fb57a22c974d18bb6fa7a512339f105bc32205b411bd206513377e93d6a54`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ded1bccfdf83b6cfcb56580f22392a0f69b07df686cec66d47d0d0159b80aa`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a1f61bdcb619288acea57e77a5e385a2c6b274feb534d7ccb0acd4b0bfedac`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ee578d0c517a3beef27b2ec6582418ad2b8cd955b388f40be5aae8e2eec4f8`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 12.0 MB (11988145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `docker:dind`

```console
$ docker pull docker@sha256:e486f5f730f413505b97a713fbeccb7ab327a3b259474c7c1155e0c3915c27fe
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

### `docker:dind` - unknown; unknown

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

### `docker:dind` - linux; arm variant v6

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

### `docker:dind` - unknown; unknown

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

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:7fe085d0ce4abde8807cddb2c61d07acb688f76c4e8e04b89c7ca52e8b4d3b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115467831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7177d395f1d7d17be904a4e9010f0512855fe973e4e3d66d93622c76bb643970`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:10:42 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:10:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:10:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:10:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:10:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:10:52 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:09:42 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:09:46 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:09:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:09:46 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5015b013ff131a9d8cf3319801a9bf4092df938168f56dd345a414eb9bced0`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 7.4 MB (7391383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b777a61c2d75e01c2e4d5d2843cff6bd9df65480293931d898847e0748796d8e`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20dc6a34bec1bd3dba87c221c296f5f18aff9bb840f91d224b44a2d5a3249ce`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 18.8 MB (18824896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b23af587d2c47d1b4fbe395b475317239a2f77bde94984f0f6f0c55ef12dbe`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 22.4 MB (22376476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027c95b21b05721b637b826ae6aa9fd6dc23f8a494a01887b55e8cc6545b69d4`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 10.7 MB (10715962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573d3e5390ac1553258dbba2ac57ac453d00072dacfdb035fe92cde1465d7e0c`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7bf8cddafab4bd8dd7dba691e0b505471346c37ec7563219bfdb5334d889af`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262b0283fa55feb1bfa4c1f3e98bebd6e168975e81badfa65a7558d366655e17`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582f56f20d25064ae980bddf5fc357958864ad567541e92ec3115ccc992c2583`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 3.4 MB (3438576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11b03fcb1a6d9a9f8331df2bce1c79f3f9e7ba37e4949fd1f39772858d81353`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 76.2 KB (76195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86db20fa39e353953544706b8ec482bac5794a897c246a3c69e5a8276c1f3a7c`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fbbc846cc0c4fa61ed043ea5fc684f67a4313ffe996b0fa6ffe42f26b769f6`  
		Last Modified: Wed, 21 Oct 2026 13:09:57 GMT  
		Size: 49.4 MB (49370981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8246ff94cd4debc55428be43a89e473ee56675bb408bfc08a8d67f5e12c24c8`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f7bd029eafe579134c2fbcc04e89fcc39e6df505d13db652892802e08f5332e`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:9b79f5203e902480c3feb69b31b4e1e03fb5216066b1d92dd829b9ada95ab04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b335ac5d5f5886ba9ea561971e43d64b0e6402a2fabe4ed6f2e6bd8b57a72d9`

```dockerfile
```

-	Layers:
	-	`sha256:9c86331c2a76062d7b2371612cf7bc0a8e1d1892eea667632fa96604173da71b`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0c49e05a4b2a45dbfc4b5254c47e57ea05eb492f364df6bb8e9756c1f9eeb27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115712365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1d4f2477f0f2c347dfd12b16d8fd7b809286bc438d484ad182b75381d67259`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:27:08 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:27:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:27:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:27:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:27:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:27:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:27:13 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:08:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:08:49 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef63590b461b3dc6f5c2dc50256d67877549d4ac743ab34c214f95da8100e4e`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 8.3 MB (8258866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f76f8a08fefc947930e0171d547df5c725c1451de40b54e20ab10b8ca5fcfb4`  
		Last Modified: Wed, 21 Oct 2026 12:27:19 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8a42ba736eeac46f90734f552432a9a1c4f8826c9a00b36b50d78c12e39bd`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 18.7 MB (18674885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b982c7e88aa9c2ae124d4893b6853c14aa54cf3b4b750eba4438867ad05b7`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 21.6 MB (21574391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc445e8b84267516627d1fff7016f952f7aa821052f75fead4031b8fcca9dc3`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 10.3 MB (10280864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fc373241347335a46db60ec5a65c058684f589129ed44d7595882b605cd96d`  
		Last Modified: Wed, 21 Oct 2026 12:27:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09ceca05c4adedc887ff1d041c65f00d39403119ea27afbf983648943633a9`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1dcd3999028209666424b80a0a5a249dea415896b724da780c58a9190d31`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50da2a27ff9de9cd16b66eb373fe35ff976e78c65ea0547818ef3f3165d4de62`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 4.6 MB (4624672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb903c3aa174b3c53e18c5fa0ab3069b509e991d01149ca8cc60ed8c4d15ce5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 90.4 KB (90426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9033831ce93c76892e7ca429ee1d63b07ac92c5246a0ea619195a69d3d583d21`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f710114875cec805f72aba5fb381a259e4d98895fa11a13028f137fb2622275`  
		Last Modified: Wed, 21 Oct 2026 13:08:59 GMT  
		Size: 48.0 MB (48012435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a5966808314e624916452777a1022384c42614c2921bcfe18c943a5d1543e2`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe537586fb6ceaaee0e25c00d81b861ce5aae588c9e6de8d5348a0291be8dbb`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:06c68ef9ab5d54fb98082c85ec0ea02d8f714f0c39cf90bf4807df8498207579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ecd3a9ba10db7ba87e06d9e1d51c98ec4aa15663ed0719cb774cc8fe249eb2`

```dockerfile
```

-	Layers:
	-	`sha256:1c2533752431914563176bdfd8ab2b1c9fe3087fce7a02f032015cec36019cf5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind-rootless`

```console
$ docker pull docker@sha256:4a1ff6e6733b687db4ce99bf7e908b2a991c3ca1affc6d79a511c27537599df1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:e1c31ace384338f30fa76546f70e824f0bf39c31d1844d7908e0efa4f69af8e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137756536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a497e4771c7f4b43bb1f87d435e5f9a03a08cfcd847ec278197250379681285`
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
# Thu, 22 Oct 2026 00:13:19 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 22 Oct 2026 00:13:19 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 22 Oct 2026 00:13:20 GMT
USER rootless
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
	-	`sha256:d793a6d1c37f02dc5b7fab91eb83f211c65d80ce35a248cdd43190f21146ce22`  
		Last Modified: Thu, 22 Oct 2026 00:13:26 GMT  
		Size: 3.6 MB (3626247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf25a778d350a7b4672a56d70bd320f6b34ca1c66cfc5a2c4c71ef4bc349af5`  
		Last Modified: Thu, 22 Oct 2026 00:13:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f82eadf8cd2d7586260d310b44b5a0dd5820174cda83b8844a0e2cd9fcf01e`  
		Last Modified: Thu, 22 Oct 2026 00:13:25 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc7843a0e59831bc9aec4c8b69bb3283c338885573188cf5302ae30509e9f07`  
		Last Modified: Thu, 22 Oct 2026 00:13:26 GMT  
		Size: 12.1 MB (12122791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ee0346bf5d981f277616d1aeaf407784e1c200b0d038eab0b49ac7c2fc1218`  
		Last Modified: Thu, 22 Oct 2026 00:13:27 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:811538cb9ab282846babdd925a82036e111520f49f756b47b234778dab53e874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a3f58263c430bb2c52bce3e94610c53b72b2d391790bb23b8cbadd7820b100e`

```dockerfile
```

-	Layers:
	-	`sha256:e40abc0b31bee4d430826a985bb8402aa8aa637f6f8c8b7908f2be817c2ded86`  
		Last Modified: Thu, 22 Oct 2026 00:13:25 GMT  
		Size: 30.5 KB (30492 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab0f299ee64d2b1cf953acc9f4ab7e04ff82972d83918e1d34e7f9e53263307a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130580572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da4d903f226545958d36ed07610dc219212641fa416033a4d5267bbeb99a5859`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:27:08 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:27:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:27:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:27:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:27:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:27:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:27:13 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:08:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:08:49 GMT
CMD []
# Wed, 21 Oct 2026 14:10:11 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 21 Oct 2026 14:10:11 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 21 Oct 2026 14:10:11 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 14:10:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 21 Oct 2026 14:10:13 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 21 Oct 2026 14:10:13 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 21 Oct 2026 14:10:13 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef63590b461b3dc6f5c2dc50256d67877549d4ac743ab34c214f95da8100e4e`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 8.3 MB (8258866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f76f8a08fefc947930e0171d547df5c725c1451de40b54e20ab10b8ca5fcfb4`  
		Last Modified: Wed, 21 Oct 2026 12:27:19 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8a42ba736eeac46f90734f552432a9a1c4f8826c9a00b36b50d78c12e39bd`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 18.7 MB (18674885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b982c7e88aa9c2ae124d4893b6853c14aa54cf3b4b750eba4438867ad05b7`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 21.6 MB (21574391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc445e8b84267516627d1fff7016f952f7aa821052f75fead4031b8fcca9dc3`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 10.3 MB (10280864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fc373241347335a46db60ec5a65c058684f589129ed44d7595882b605cd96d`  
		Last Modified: Wed, 21 Oct 2026 12:27:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09ceca05c4adedc887ff1d041c65f00d39403119ea27afbf983648943633a9`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1dcd3999028209666424b80a0a5a249dea415896b724da780c58a9190d31`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50da2a27ff9de9cd16b66eb373fe35ff976e78c65ea0547818ef3f3165d4de62`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 4.6 MB (4624672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb903c3aa174b3c53e18c5fa0ab3069b509e991d01149ca8cc60ed8c4d15ce5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 90.4 KB (90426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9033831ce93c76892e7ca429ee1d63b07ac92c5246a0ea619195a69d3d583d21`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f710114875cec805f72aba5fb381a259e4d98895fa11a13028f137fb2622275`  
		Last Modified: Wed, 21 Oct 2026 13:08:59 GMT  
		Size: 48.0 MB (48012435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a5966808314e624916452777a1022384c42614c2921bcfe18c943a5d1543e2`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe537586fb6ceaaee0e25c00d81b861ce5aae588c9e6de8d5348a0291be8dbb`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa91dced94752f894d9b70b0ebee6991baae423df9229fcea57b09ea096652c2`  
		Last Modified: Wed, 21 Oct 2026 14:10:19 GMT  
		Size: 3.6 MB (3611320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f05b3bee5a16867a49fe216680c826959a1e6b29112df054feb30d9d3710a1f`  
		Last Modified: Wed, 21 Oct 2026 14:10:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f2a1e01753bc879b60d199e5b827c6979881693f2b74734e9ae39de588126d`  
		Last Modified: Wed, 21 Oct 2026 14:10:18 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf5ec45094ca049f45163844b046941f1f59e38ac13c10fed66f5f3fd1d0a33`  
		Last Modified: Wed, 21 Oct 2026 14:10:19 GMT  
		Size: 11.3 MB (11255543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc26a39a30971dfcc76361a27ccccd694dab434b66a62a28da89c03f57ed11a`  
		Last Modified: Wed, 21 Oct 2026 14:10:20 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:32cea58fdea507f33ea3c1e53124b43c1b234d654476f77ebbbda4d2a8797d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a4bc175d12f23bf92afce3027a8d177f574098c94690f1c9da1364813671fa`

```dockerfile
```

-	Layers:
	-	`sha256:e448bc44f86fc497ccb149b97d6a290d254cce7734a5477e403971c7de8d83ee`  
		Last Modified: Wed, 21 Oct 2026 14:10:18 GMT  
		Size: 30.7 KB (30656 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:latest`

```console
$ docker pull docker@sha256:e486f5f730f413505b97a713fbeccb7ab327a3b259474c7c1155e0c3915c27fe
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
$ docker pull docker@sha256:7fe085d0ce4abde8807cddb2c61d07acb688f76c4e8e04b89c7ca52e8b4d3b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115467831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7177d395f1d7d17be904a4e9010f0512855fe973e4e3d66d93622c76bb643970`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:10:42 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:10:42 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:10:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:10:47 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:10:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:10:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:10:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:10:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:10:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:10:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:10:52 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:09:42 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:09:43 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:09:46 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:09:46 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:09:46 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:09:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:09:46 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5015b013ff131a9d8cf3319801a9bf4092df938168f56dd345a414eb9bced0`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 7.4 MB (7391383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b777a61c2d75e01c2e4d5d2843cff6bd9df65480293931d898847e0748796d8e`  
		Last Modified: Wed, 21 Oct 2026 12:10:58 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20dc6a34bec1bd3dba87c221c296f5f18aff9bb840f91d224b44a2d5a3249ce`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 18.8 MB (18824896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b23af587d2c47d1b4fbe395b475317239a2f77bde94984f0f6f0c55ef12dbe`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 22.4 MB (22376476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027c95b21b05721b637b826ae6aa9fd6dc23f8a494a01887b55e8cc6545b69d4`  
		Last Modified: Wed, 21 Oct 2026 12:10:59 GMT  
		Size: 10.7 MB (10715962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573d3e5390ac1553258dbba2ac57ac453d00072dacfdb035fe92cde1465d7e0c`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7bf8cddafab4bd8dd7dba691e0b505471346c37ec7563219bfdb5334d889af`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262b0283fa55feb1bfa4c1f3e98bebd6e168975e81badfa65a7558d366655e17`  
		Last Modified: Wed, 21 Oct 2026 12:11:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582f56f20d25064ae980bddf5fc357958864ad567541e92ec3115ccc992c2583`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 3.4 MB (3438576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11b03fcb1a6d9a9f8331df2bce1c79f3f9e7ba37e4949fd1f39772858d81353`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 76.2 KB (76195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86db20fa39e353953544706b8ec482bac5794a897c246a3c69e5a8276c1f3a7c`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fbbc846cc0c4fa61ed043ea5fc684f67a4313ffe996b0fa6ffe42f26b769f6`  
		Last Modified: Wed, 21 Oct 2026 13:09:57 GMT  
		Size: 49.4 MB (49370981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8246ff94cd4debc55428be43a89e473ee56675bb408bfc08a8d67f5e12c24c8`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f7bd029eafe579134c2fbcc04e89fcc39e6df505d13db652892802e08f5332e`  
		Last Modified: Wed, 21 Oct 2026 13:09:56 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:9b79f5203e902480c3feb69b31b4e1e03fb5216066b1d92dd829b9ada95ab04b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b335ac5d5f5886ba9ea561971e43d64b0e6402a2fabe4ed6f2e6bd8b57a72d9`

```dockerfile
```

-	Layers:
	-	`sha256:9c86331c2a76062d7b2371612cf7bc0a8e1d1892eea667632fa96604173da71b`  
		Last Modified: Wed, 21 Oct 2026 13:09:55 GMT  
		Size: 34.6 KB (34605 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0c49e05a4b2a45dbfc4b5254c47e57ea05eb492f364df6bb8e9756c1f9eeb27e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.7 MB (115712365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1d4f2477f0f2c347dfd12b16d8fd7b809286bc438d484ad182b75381d67259`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:27:08 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:27:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:27:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:27:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:27:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:27:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:27:13 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:08:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:08:49 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef63590b461b3dc6f5c2dc50256d67877549d4ac743ab34c214f95da8100e4e`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 8.3 MB (8258866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f76f8a08fefc947930e0171d547df5c725c1451de40b54e20ab10b8ca5fcfb4`  
		Last Modified: Wed, 21 Oct 2026 12:27:19 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8a42ba736eeac46f90734f552432a9a1c4f8826c9a00b36b50d78c12e39bd`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 18.7 MB (18674885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b982c7e88aa9c2ae124d4893b6853c14aa54cf3b4b750eba4438867ad05b7`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 21.6 MB (21574391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc445e8b84267516627d1fff7016f952f7aa821052f75fead4031b8fcca9dc3`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 10.3 MB (10280864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fc373241347335a46db60ec5a65c058684f589129ed44d7595882b605cd96d`  
		Last Modified: Wed, 21 Oct 2026 12:27:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09ceca05c4adedc887ff1d041c65f00d39403119ea27afbf983648943633a9`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1dcd3999028209666424b80a0a5a249dea415896b724da780c58a9190d31`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50da2a27ff9de9cd16b66eb373fe35ff976e78c65ea0547818ef3f3165d4de62`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 4.6 MB (4624672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb903c3aa174b3c53e18c5fa0ab3069b509e991d01149ca8cc60ed8c4d15ce5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 90.4 KB (90426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9033831ce93c76892e7ca429ee1d63b07ac92c5246a0ea619195a69d3d583d21`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f710114875cec805f72aba5fb381a259e4d98895fa11a13028f137fb2622275`  
		Last Modified: Wed, 21 Oct 2026 13:08:59 GMT  
		Size: 48.0 MB (48012435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a5966808314e624916452777a1022384c42614c2921bcfe18c943a5d1543e2`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe537586fb6ceaaee0e25c00d81b861ce5aae588c9e6de8d5348a0291be8dbb`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:06c68ef9ab5d54fb98082c85ec0ea02d8f714f0c39cf90bf4807df8498207579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ecd3a9ba10db7ba87e06d9e1d51c98ec4aa15663ed0719cb774cc8fe249eb2`

```dockerfile
```

-	Layers:
	-	`sha256:1c2533752431914563176bdfd8ab2b1c9fe3087fce7a02f032015cec36019cf5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 34.7 KB (34661 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:windowsservercore`

```console
$ docker pull docker@sha256:cca7c5b43b775ba812bb2f8194d9ebcc2e5d6113c8391718178af0888bde2fed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:f873d91f751c4b8c2bdc04b7f574dadc9e96ad2b07527f3d27eca94468702680
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450124067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f158ef850b8834854465c2cf30b505c188ff940e1eb09cc0aea471c1c80541cb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Wed, 21 Oct 2026 11:58:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 11:59:03 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 11:59:04 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 11:59:06 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 11:59:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:23 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 11:59:24 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 11:59:25 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 11:59:34 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:35 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 11:59:36 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 11:59:37 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 11:59:45 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d02cd4e532ee5c9760e03d91d1d6fc285f16f6d550586142bf814316c614a83`  
		Last Modified: Wed, 21 Oct 2026 11:59:56 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa4eee4df889faf920b38a869ed7c19025a10b9efcd8c19ad2b211c054699d6`  
		Last Modified: Wed, 21 Oct 2026 11:59:55 GMT  
		Size: 374.4 KB (374365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f39cf86839852c6a2eba5ef78e62b1c8b70c98d32c8780d05a3ea0e0da39a8`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d804d3bbdc00a6053bb841c384290d81517ab37a5cddfda23e765d53a575ec6`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf2a0cc4335f2beee537f8e631430b955d4f56058ad073d7ae4b8fb038f351d`  
		Last Modified: Wed, 21 Oct 2026 11:59:57 GMT  
		Size: 21.0 MB (20969503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554160afc142152c068a5ca5f54d244459a4247ce909b4838976f80ceaa80672`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afa7171cbd5aebafd111ff3f1435c10b4527d1e7c28ba3bf1a0d9e439b1a557`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b477eca107b130a107edec7f6150c399011aba77be51e7a9cfd440179d2e1c6`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee95a0e7d8b671031a7c1ddc50d0fd58ceac8e26de9e6baaa7bb5a718236c57`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 24.8 MB (24786221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6fb57a22c974d18bb6fa7a512339f105bc32205b411bd206513377e93d6a54`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ded1bccfdf83b6cfcb56580f22392a0f69b07df686cec66d47d0d0159b80aa`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a1f61bdcb619288acea57e77a5e385a2c6b274feb534d7ccb0acd4b0bfedac`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ee578d0c517a3beef27b2ec6582418ad2b8cd955b388f40be5aae8e2eec4f8`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 12.0 MB (11988145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull docker@sha256:ff4b98d72eefaa5a2072b76da6bf8a62f6221dbdbdc36478dd7fd3fba474ea1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2284223860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c675bfd2990efb3ee574e16b01ff1c282d13c111a5ea7498518022387860dd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Wed, 21 Oct 2026 12:20:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 12:21:48 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 12:21:49 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:21:51 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 12:22:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 12:22:15 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 12:22:36 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:22:37 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 12:22:38 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 12:22:53 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78e296ad63eb7d530dac2de6cf5a806bf756c7cdaf8537753d7e52d27280e34`  
		Last Modified: Wed, 21 Oct 2026 12:23:03 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82242736a13b946f3139e6a1f4f7f4c5f7df6ff91f0eec2ffedf166e5a842fa3`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 359.0 KB (359001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b8ebe36d13eff88486d09aab9e3fe2a201297a2a3e2bf49d2231f0860e168d`  
		Last Modified: Wed, 21 Oct 2026 12:23:01 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54877a833acb46604c9d9e75a2820080f608f71f86214a25e78760dc55152503`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac86c6f732dd840bbbb48604ff5d757ef750503189efcffc8fa9a14c15381b52`  
		Last Modified: Wed, 21 Oct 2026 12:23:04 GMT  
		Size: 20.9 MB (20906050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e9b69ceb92864b22b30859ab941b73b47288c8316e4109886de746c3d3b152`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4366e0558c25eb6d0991f3f76dfc482a007ce7c92e7f54a43f8487c40dd01e53`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bedd8b61e8202465916ad33154cf026eb6472138fd79ae8336a27c720c473fca`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac22f7ea324965cfc224c05b6784da9507615cabf1f8bf17c38de6ea8b6a0c8`  
		Last Modified: Wed, 21 Oct 2026 12:23:07 GMT  
		Size: 24.7 MB (24733281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b872a211df31354c4df5e20bdb722765c09f959d476538cd4a0452f5bed92c`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3204dd174c032c29f5cfe845eed5f1ec7bfec2c308abc1696514796f8e5a02da`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7484e5424f1394deee17ad81a48e72c3c7412664f2db065c781339cfd6ead112`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244c5926369c165623c8d0f16376d7aca0fdb76e4ab889e5a40475f5b00303e3`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 11.9 MB (11928287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:363a8a33a050f5927b2708f2de13c98b3835378ac4d92cd9e6eb3acaeba4f0a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull docker@sha256:ff4b98d72eefaa5a2072b76da6bf8a62f6221dbdbdc36478dd7fd3fba474ea1f
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2284223860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c675bfd2990efb3ee574e16b01ff1c282d13c111a5ea7498518022387860dd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Wed, 21 Oct 2026 12:20:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 12:21:48 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 12:21:49 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:21:51 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 12:22:13 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:22:14 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 12:22:15 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 12:22:36 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 12:22:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:22:37 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 12:22:38 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 12:22:53 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78e296ad63eb7d530dac2de6cf5a806bf756c7cdaf8537753d7e52d27280e34`  
		Last Modified: Wed, 21 Oct 2026 12:23:03 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82242736a13b946f3139e6a1f4f7f4c5f7df6ff91f0eec2ffedf166e5a842fa3`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 359.0 KB (359001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b8ebe36d13eff88486d09aab9e3fe2a201297a2a3e2bf49d2231f0860e168d`  
		Last Modified: Wed, 21 Oct 2026 12:23:01 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54877a833acb46604c9d9e75a2820080f608f71f86214a25e78760dc55152503`  
		Last Modified: Wed, 21 Oct 2026 12:23:02 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac86c6f732dd840bbbb48604ff5d757ef750503189efcffc8fa9a14c15381b52`  
		Last Modified: Wed, 21 Oct 2026 12:23:04 GMT  
		Size: 20.9 MB (20906050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e9b69ceb92864b22b30859ab941b73b47288c8316e4109886de746c3d3b152`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4366e0558c25eb6d0991f3f76dfc482a007ce7c92e7f54a43f8487c40dd01e53`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bedd8b61e8202465916ad33154cf026eb6472138fd79ae8336a27c720c473fca`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac22f7ea324965cfc224c05b6784da9507615cabf1f8bf17c38de6ea8b6a0c8`  
		Last Modified: Wed, 21 Oct 2026 12:23:07 GMT  
		Size: 24.7 MB (24733281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b872a211df31354c4df5e20bdb722765c09f959d476538cd4a0452f5bed92c`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3204dd174c032c29f5cfe845eed5f1ec7bfec2c308abc1696514796f8e5a02da`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7484e5424f1394deee17ad81a48e72c3c7412664f2db065c781339cfd6ead112`  
		Last Modified: Wed, 21 Oct 2026 12:22:58 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244c5926369c165623c8d0f16376d7aca0fdb76e4ab889e5a40475f5b00303e3`  
		Last Modified: Wed, 21 Oct 2026 12:23:00 GMT  
		Size: 11.9 MB (11928287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:d0dc610297cf8535884c4da3e56b3fa52029e46b031e34b2c28d1a6dde163b94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull docker@sha256:f873d91f751c4b8c2bdc04b7f574dadc9e96ad2b07527f3d27eca94468702680
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450124067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f158ef850b8834854465c2cf30b505c188ff940e1eb09cc0aea471c1c80541cb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Wed, 21 Oct 2026 11:58:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 11:59:03 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 21 Oct 2026 11:59:04 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 11:59:06 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.2.zip
# Wed, 21 Oct 2026 11:59:23 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:23 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 11:59:24 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.windows-amd64.exe
# Wed, 21 Oct 2026 11:59:25 GMT
ENV DOCKER_BUILDX_SHA256=fd2e18501910dd535ea3aa7f69010b3cfdfba0f47aa27674124554386dfa26f3
# Wed, 21 Oct 2026 11:59:34 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 21 Oct 2026 11:59:35 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 11:59:36 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-windows-x86_64.exe
# Wed, 21 Oct 2026 11:59:37 GMT
ENV DOCKER_COMPOSE_SHA256=91b1492f0a923427651e2b955739d732ac36b8191193bf4799e62f3e3525c4cd
# Wed, 21 Oct 2026 11:59:45 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d02cd4e532ee5c9760e03d91d1d6fc285f16f6d550586142bf814316c614a83`  
		Last Modified: Wed, 21 Oct 2026 11:59:56 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa4eee4df889faf920b38a869ed7c19025a10b9efcd8c19ad2b211c054699d6`  
		Last Modified: Wed, 21 Oct 2026 11:59:55 GMT  
		Size: 374.4 KB (374365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f39cf86839852c6a2eba5ef78e62b1c8b70c98d32c8780d05a3ea0e0da39a8`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d804d3bbdc00a6053bb841c384290d81517ab37a5cddfda23e765d53a575ec6`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf2a0cc4335f2beee537f8e631430b955d4f56058ad073d7ae4b8fb038f351d`  
		Last Modified: Wed, 21 Oct 2026 11:59:57 GMT  
		Size: 21.0 MB (20969503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554160afc142152c068a5ca5f54d244459a4247ce909b4838976f80ceaa80672`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afa7171cbd5aebafd111ff3f1435c10b4527d1e7c28ba3bf1a0d9e439b1a557`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b477eca107b130a107edec7f6150c399011aba77be51e7a9cfd440179d2e1c6`  
		Last Modified: Wed, 21 Oct 2026 11:59:52 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee95a0e7d8b671031a7c1ddc50d0fd58ceac8e26de9e6baaa7bb5a718236c57`  
		Last Modified: Wed, 21 Oct 2026 11:59:54 GMT  
		Size: 24.8 MB (24786221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6fb57a22c974d18bb6fa7a512339f105bc32205b411bd206513377e93d6a54`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ded1bccfdf83b6cfcb56580f22392a0f69b07df686cec66d47d0d0159b80aa`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a1f61bdcb619288acea57e77a5e385a2c6b274feb534d7ccb0acd4b0bfedac`  
		Last Modified: Wed, 21 Oct 2026 11:59:51 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ee578d0c517a3beef27b2ec6582418ad2b8cd955b388f40be5aae8e2eec4f8`  
		Last Modified: Wed, 21 Oct 2026 11:59:53 GMT  
		Size: 12.0 MB (11988145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
