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
-	[`docker:29.9.3`](#docker2993)
-	[`docker:29.9.3-alpine3.24`](#docker2993-alpine324)
-	[`docker:29.9.3-cli`](#docker2993-cli)
-	[`docker:29.9.3-cli-alpine3.24`](#docker2993-cli-alpine324)
-	[`docker:29.9.3-dind`](#docker2993-dind)
-	[`docker:29.9.3-dind-alpine3.24`](#docker2993-dind-alpine324)
-	[`docker:29.9.3-dind-rootless`](#docker2993-dind-rootless)
-	[`docker:29.9.3-windowsservercore`](#docker2993-windowsservercore)
-	[`docker:29.9.3-windowsservercore-ltsc2022`](#docker2993-windowsservercore-ltsc2022)
-	[`docker:29.9.3-windowsservercore-ltsc2025`](#docker2993-windowsservercore-ltsc2025)
-	[`docker:cli`](#dockercli)
-	[`docker:dind`](#dockerdind)
-	[`docker:dind-rootless`](#dockerdind-rootless)
-	[`docker:latest`](#dockerlatest)
-	[`docker:windowsservercore`](#dockerwindowsservercore)
-	[`docker:windowsservercore-ltsc2022`](#dockerwindowsservercore-ltsc2022)
-	[`docker:windowsservercore-ltsc2025`](#dockerwindowsservercore-ltsc2025)

## `docker:29`

```console
$ docker pull docker@sha256:d9a63a40cbd01d7832064ac2a1b46931609be597d55bddc098501a1a68d0eaec
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
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-cli`

```console
$ docker pull docker@sha256:4d742ab934c2149b628bf26369ac3ec51cb91e2e28fe6722a0e86a6d6efc4bd5
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
$ docker pull docker@sha256:d2f393afc2a15c0bb65d97d6828e7c94a29a1ed7acfc2337addb0fc86547615e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67815900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cf18b07f7255f0f57566052a842b83959381e53a15e888b0dc621362a57c38`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:a842153f9526debd4fab125043c537dffca19a43efc2359d0839ea297bb12499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c26234fe0a6bc0224636122d68389aeaceffcddf35290c41bde29c3a5ecf04`

```dockerfile
```

-	Layers:
	-	`sha256:7c8725bef4c85132d464ab1f28ade66d205f60d14e0a9c1244ab90ad5bfc47a2`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:0a2a33e494a5f0ced962d11e66390a5e7d109887d21f88053b1bdc3a424fec60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63937677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062125cd6fcec0071d5ead0bb48213ef9a179c6d963912f64755d29bd1e1d6e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:a57ee13e18c5a630c9833e5aac3f3d7ce48965d9945d418a91b13d3073516d32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df391a55bea75506bc15a6eedbbe44eddec1edf67a9e19de53ce4a4c6cdd5823`

```dockerfile
```

-	Layers:
	-	`sha256:57f355ede300339ee29aadc0a283d2afde2dc27d26301ea0acf439f0572aff61`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:fa2f28c5f619aae4b82e38afeb82451119c66bf44f46153c7ff33172a97a3c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62890407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ca6a6888a35b41b13baef979c2622ae20fdb41116b9c28969a5d5f7b4dfc14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:4fc860e64e522dfdafa3f20a98401f703c707145f887a0dbe59e3d971ef56e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc55a2ab584e5f8b5f72e72b293cbcf5994c1c573cd3884db9324816ce52d5e`

```dockerfile
```

-	Layers:
	-	`sha256:469d5dc1af5f83c6fa6e5da7e34ee28c644df5f62cb7ba9b35cc1b0ae0ba8a4b`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:29f5b784d655f4a986d1e909c6384aaee1a522c00bb96ffa137028289cd1e222
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63297771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54df28f3013752d4685a81d3582497bb95069b76113817c69ed3ab203a22ca50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:fca51c7777e18785819e0f3d1e2ef900643213c4ae59c84b7f91b2a81f1300e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13b9e005f029c6a972d1ca9f184df44201467e7f8d7afc47be7a5b218efda03`

```dockerfile
```

-	Layers:
	-	`sha256:4a68f940fecaae6ba2187a243b0846e513955a2cdd8b227a9ec260e46fbe81db`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:0db502057f8309c7a36c23db231e71dc620eb174f4744912b73399d750cbcfdb
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
$ docker pull docker@sha256:d6d8c364be3bd700baef07fe908e8bcbbfada634b36480d8cd151d6695bed6a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128008397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b303392c707b61c0053c1b3cc3575ea4f8c1af8d0656ba5f17df44a0f6a6cdf0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
# Wed, 04 Nov 2026 00:09:31 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 04 Nov 2026 00:09:33 GMT
USER rootless
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb7c1fa5f08ebb270735f4300e0bb5c835464eec1f8a63e195750f7b3502d55`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.6 MB (3611288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47057cedb4c6affb127c51abd22dd2ce1689e42008cc5ac328fdad947f7e290e`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65a8dac30b75a4adefdbdc7d0290c5c7b411addeffe856c48f26cbe617bdbbd`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6ff0660874d2fe003c3f925d59c2c5df577733f8ebc2c644cdc27095c2ee49`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 11.3 MB (11255538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:727d5c74b5a7eb8228eaeba99dd11e1c44de2a73bb0788fa8855dbf432a17561`  
		Last Modified: Wed, 04 Nov 2026 00:09:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:227fde4980e6db92525c87259f80b9413d324c78a4534dbc7e717f4bc0d5614f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d09cc4742d3cb5970ca5db03de7d7216e1e1629ca42daf9cef78bb7e4675799`

```dockerfile
```

-	Layers:
	-	`sha256:7c3e680ded94755a0194f601380c8ce9f9919bcb8855a2c195c447f8cc558cfb`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:07e10b2232d22ed2089c18e9ba70994cb97dba06d1cac4b1f3a57714fd284819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:4fd8f747bff50e4f44b1defcf7989520d23bb8bf278920c47554b1b7e717f6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:42e1abd0bf5abc54aa1d3c9878f727af96c557fb77842b575f65d18192d58d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `docker:29-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-cli`

```console
$ docker pull docker@sha256:4d742ab934c2149b628bf26369ac3ec51cb91e2e28fe6722a0e86a6d6efc4bd5
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
$ docker pull docker@sha256:d2f393afc2a15c0bb65d97d6828e7c94a29a1ed7acfc2337addb0fc86547615e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67815900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cf18b07f7255f0f57566052a842b83959381e53a15e888b0dc621362a57c38`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-cli` - unknown; unknown

```console
$ docker pull docker@sha256:a842153f9526debd4fab125043c537dffca19a43efc2359d0839ea297bb12499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c26234fe0a6bc0224636122d68389aeaceffcddf35290c41bde29c3a5ecf04`

```dockerfile
```

-	Layers:
	-	`sha256:7c8725bef4c85132d464ab1f28ade66d205f60d14e0a9c1244ab90ad5bfc47a2`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:0a2a33e494a5f0ced962d11e66390a5e7d109887d21f88053b1bdc3a424fec60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63937677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062125cd6fcec0071d5ead0bb48213ef9a179c6d963912f64755d29bd1e1d6e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-cli` - unknown; unknown

```console
$ docker pull docker@sha256:a57ee13e18c5a630c9833e5aac3f3d7ce48965d9945d418a91b13d3073516d32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df391a55bea75506bc15a6eedbbe44eddec1edf67a9e19de53ce4a4c6cdd5823`

```dockerfile
```

-	Layers:
	-	`sha256:57f355ede300339ee29aadc0a283d2afde2dc27d26301ea0acf439f0572aff61`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:fa2f28c5f619aae4b82e38afeb82451119c66bf44f46153c7ff33172a97a3c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62890407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ca6a6888a35b41b13baef979c2622ae20fdb41116b9c28969a5d5f7b4dfc14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-cli` - unknown; unknown

```console
$ docker pull docker@sha256:4fc860e64e522dfdafa3f20a98401f703c707145f887a0dbe59e3d971ef56e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc55a2ab584e5f8b5f72e72b293cbcf5994c1c573cd3884db9324816ce52d5e`

```dockerfile
```

-	Layers:
	-	`sha256:469d5dc1af5f83c6fa6e5da7e34ee28c644df5f62cb7ba9b35cc1b0ae0ba8a4b`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:29f5b784d655f4a986d1e909c6384aaee1a522c00bb96ffa137028289cd1e222
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63297771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54df28f3013752d4685a81d3582497bb95069b76113817c69ed3ab203a22ca50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-cli` - unknown; unknown

```console
$ docker pull docker@sha256:fca51c7777e18785819e0f3d1e2ef900643213c4ae59c84b7f91b2a81f1300e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13b9e005f029c6a972d1ca9f184df44201467e7f8d7afc47be7a5b218efda03`

```dockerfile
```

-	Layers:
	-	`sha256:4a68f940fecaae6ba2187a243b0846e513955a2cdd8b227a9ec260e46fbe81db`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-dind`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-dind-rootless`

```console
$ docker pull docker@sha256:0db502057f8309c7a36c23db231e71dc620eb174f4744912b73399d750cbcfdb
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
$ docker pull docker@sha256:d6d8c364be3bd700baef07fe908e8bcbbfada634b36480d8cd151d6695bed6a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128008397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b303392c707b61c0053c1b3cc3575ea4f8c1af8d0656ba5f17df44a0f6a6cdf0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
# Wed, 04 Nov 2026 00:09:31 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 04 Nov 2026 00:09:33 GMT
USER rootless
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb7c1fa5f08ebb270735f4300e0bb5c835464eec1f8a63e195750f7b3502d55`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.6 MB (3611288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47057cedb4c6affb127c51abd22dd2ce1689e42008cc5ac328fdad947f7e290e`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65a8dac30b75a4adefdbdc7d0290c5c7b411addeffe856c48f26cbe617bdbbd`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6ff0660874d2fe003c3f925d59c2c5df577733f8ebc2c644cdc27095c2ee49`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 11.3 MB (11255538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:727d5c74b5a7eb8228eaeba99dd11e1c44de2a73bb0788fa8855dbf432a17561`  
		Last Modified: Wed, 04 Nov 2026 00:09:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:227fde4980e6db92525c87259f80b9413d324c78a4534dbc7e717f4bc0d5614f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d09cc4742d3cb5970ca5db03de7d7216e1e1629ca42daf9cef78bb7e4675799`

```dockerfile
```

-	Layers:
	-	`sha256:7c3e680ded94755a0194f601380c8ce9f9919bcb8855a2c195c447f8cc558cfb`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9-windowsservercore`

```console
$ docker pull docker@sha256:07e10b2232d22ed2089c18e9ba70994cb97dba06d1cac4b1f3a57714fd284819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `docker:29.9-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.9-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:4fd8f747bff50e4f44b1defcf7989520d23bb8bf278920c47554b1b7e717f6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `docker:29.9-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:42e1abd0bf5abc54aa1d3c9878f727af96c557fb77842b575f65d18192d58d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `docker:29.9-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9.3`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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

### `docker:29.9.3` - linux; amd64

```console
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-alpine3.24`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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

### `docker:29.9.3-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-cli`

```console
$ docker pull docker@sha256:4d742ab934c2149b628bf26369ac3ec51cb91e2e28fe6722a0e86a6d6efc4bd5
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

### `docker:29.9.3-cli` - linux; amd64

```console
$ docker pull docker@sha256:d2f393afc2a15c0bb65d97d6828e7c94a29a1ed7acfc2337addb0fc86547615e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67815900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cf18b07f7255f0f57566052a842b83959381e53a15e888b0dc621362a57c38`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli` - unknown; unknown

```console
$ docker pull docker@sha256:a842153f9526debd4fab125043c537dffca19a43efc2359d0839ea297bb12499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c26234fe0a6bc0224636122d68389aeaceffcddf35290c41bde29c3a5ecf04`

```dockerfile
```

-	Layers:
	-	`sha256:7c8725bef4c85132d464ab1f28ade66d205f60d14e0a9c1244ab90ad5bfc47a2`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:0a2a33e494a5f0ced962d11e66390a5e7d109887d21f88053b1bdc3a424fec60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63937677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062125cd6fcec0071d5ead0bb48213ef9a179c6d963912f64755d29bd1e1d6e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli` - unknown; unknown

```console
$ docker pull docker@sha256:a57ee13e18c5a630c9833e5aac3f3d7ce48965d9945d418a91b13d3073516d32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df391a55bea75506bc15a6eedbbe44eddec1edf67a9e19de53ce4a4c6cdd5823`

```dockerfile
```

-	Layers:
	-	`sha256:57f355ede300339ee29aadc0a283d2afde2dc27d26301ea0acf439f0572aff61`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:fa2f28c5f619aae4b82e38afeb82451119c66bf44f46153c7ff33172a97a3c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62890407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ca6a6888a35b41b13baef979c2622ae20fdb41116b9c28969a5d5f7b4dfc14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli` - unknown; unknown

```console
$ docker pull docker@sha256:4fc860e64e522dfdafa3f20a98401f703c707145f887a0dbe59e3d971ef56e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc55a2ab584e5f8b5f72e72b293cbcf5994c1c573cd3884db9324816ce52d5e`

```dockerfile
```

-	Layers:
	-	`sha256:469d5dc1af5f83c6fa6e5da7e34ee28c644df5f62cb7ba9b35cc1b0ae0ba8a4b`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:29f5b784d655f4a986d1e909c6384aaee1a522c00bb96ffa137028289cd1e222
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63297771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54df28f3013752d4685a81d3582497bb95069b76113817c69ed3ab203a22ca50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli` - unknown; unknown

```console
$ docker pull docker@sha256:fca51c7777e18785819e0f3d1e2ef900643213c4ae59c84b7f91b2a81f1300e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13b9e005f029c6a972d1ca9f184df44201467e7f8d7afc47be7a5b218efda03`

```dockerfile
```

-	Layers:
	-	`sha256:4a68f940fecaae6ba2187a243b0846e513955a2cdd8b227a9ec260e46fbe81db`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-cli-alpine3.24`

```console
$ docker pull docker@sha256:4d742ab934c2149b628bf26369ac3ec51cb91e2e28fe6722a0e86a6d6efc4bd5
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

### `docker:29.9.3-cli-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:d2f393afc2a15c0bb65d97d6828e7c94a29a1ed7acfc2337addb0fc86547615e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67815900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cf18b07f7255f0f57566052a842b83959381e53a15e888b0dc621362a57c38`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:a842153f9526debd4fab125043c537dffca19a43efc2359d0839ea297bb12499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c26234fe0a6bc0224636122d68389aeaceffcddf35290c41bde29c3a5ecf04`

```dockerfile
```

-	Layers:
	-	`sha256:7c8725bef4c85132d464ab1f28ade66d205f60d14e0a9c1244ab90ad5bfc47a2`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-cli-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:0a2a33e494a5f0ced962d11e66390a5e7d109887d21f88053b1bdc3a424fec60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63937677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062125cd6fcec0071d5ead0bb48213ef9a179c6d963912f64755d29bd1e1d6e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:a57ee13e18c5a630c9833e5aac3f3d7ce48965d9945d418a91b13d3073516d32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df391a55bea75506bc15a6eedbbe44eddec1edf67a9e19de53ce4a4c6cdd5823`

```dockerfile
```

-	Layers:
	-	`sha256:57f355ede300339ee29aadc0a283d2afde2dc27d26301ea0acf439f0572aff61`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-cli-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:fa2f28c5f619aae4b82e38afeb82451119c66bf44f46153c7ff33172a97a3c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62890407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ca6a6888a35b41b13baef979c2622ae20fdb41116b9c28969a5d5f7b4dfc14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:4fc860e64e522dfdafa3f20a98401f703c707145f887a0dbe59e3d971ef56e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc55a2ab584e5f8b5f72e72b293cbcf5994c1c573cd3884db9324816ce52d5e`

```dockerfile
```

-	Layers:
	-	`sha256:469d5dc1af5f83c6fa6e5da7e34ee28c644df5f62cb7ba9b35cc1b0ae0ba8a4b`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-cli-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:29f5b784d655f4a986d1e909c6384aaee1a522c00bb96ffa137028289cd1e222
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63297771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54df28f3013752d4685a81d3582497bb95069b76113817c69ed3ab203a22ca50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:fca51c7777e18785819e0f3d1e2ef900643213c4ae59c84b7f91b2a81f1300e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13b9e005f029c6a972d1ca9f184df44201467e7f8d7afc47be7a5b218efda03`

```dockerfile
```

-	Layers:
	-	`sha256:4a68f940fecaae6ba2187a243b0846e513955a2cdd8b227a9ec260e46fbe81db`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-dind`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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

### `docker:29.9.3-dind` - linux; amd64

```console
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-dind-alpine3.24`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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

### `docker:29.9.3-dind-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.9.3-dind-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-dind-rootless`

```console
$ docker pull docker@sha256:8ab74b2756666a4cf56056e9595c63798506ae7122a525f1c61612610f496481
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.9.3-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d6d8c364be3bd700baef07fe908e8bcbbfada634b36480d8cd151d6695bed6a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128008397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b303392c707b61c0053c1b3cc3575ea4f8c1af8d0656ba5f17df44a0f6a6cdf0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
# Wed, 04 Nov 2026 00:09:31 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 04 Nov 2026 00:09:33 GMT
USER rootless
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb7c1fa5f08ebb270735f4300e0bb5c835464eec1f8a63e195750f7b3502d55`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.6 MB (3611288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47057cedb4c6affb127c51abd22dd2ce1689e42008cc5ac328fdad947f7e290e`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65a8dac30b75a4adefdbdc7d0290c5c7b411addeffe856c48f26cbe617bdbbd`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6ff0660874d2fe003c3f925d59c2c5df577733f8ebc2c644cdc27095c2ee49`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 11.3 MB (11255538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:727d5c74b5a7eb8228eaeba99dd11e1c44de2a73bb0788fa8855dbf432a17561`  
		Last Modified: Wed, 04 Nov 2026 00:09:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.9.3-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:227fde4980e6db92525c87259f80b9413d324c78a4534dbc7e717f4bc0d5614f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d09cc4742d3cb5970ca5db03de7d7216e1e1629ca42daf9cef78bb7e4675799`

```dockerfile
```

-	Layers:
	-	`sha256:7c3e680ded94755a0194f601380c8ce9f9919bcb8855a2c195c447f8cc558cfb`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.9.3-windowsservercore`

```console
$ docker pull docker@sha256:07e10b2232d22ed2089c18e9ba70994cb97dba06d1cac4b1f3a57714fd284819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `docker:29.9.3-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.9.3-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9.3-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:4fd8f747bff50e4f44b1defcf7989520d23bb8bf278920c47554b1b7e717f6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `docker:29.9.3-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9.3-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:42e1abd0bf5abc54aa1d3c9878f727af96c557fb77842b575f65d18192d58d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `docker:29.9.3-windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:cli`

```console
$ docker pull docker@sha256:4d742ab934c2149b628bf26369ac3ec51cb91e2e28fe6722a0e86a6d6efc4bd5
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
$ docker pull docker@sha256:d2f393afc2a15c0bb65d97d6828e7c94a29a1ed7acfc2337addb0fc86547615e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.8 MB (67815900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cf18b07f7255f0f57566052a842b83959381e53a15e888b0dc621362a57c38`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:a842153f9526debd4fab125043c537dffca19a43efc2359d0839ea297bb12499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c26234fe0a6bc0224636122d68389aeaceffcddf35290c41bde29c3a5ecf04`

```dockerfile
```

-	Layers:
	-	`sha256:7c8725bef4c85132d464ab1f28ade66d205f60d14e0a9c1244ab90ad5bfc47a2`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:0a2a33e494a5f0ced962d11e66390a5e7d109887d21f88053b1bdc3a424fec60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63937677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062125cd6fcec0071d5ead0bb48213ef9a179c6d963912f64755d29bd1e1d6e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:a57ee13e18c5a630c9833e5aac3f3d7ce48965d9945d418a91b13d3073516d32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df391a55bea75506bc15a6eedbbe44eddec1edf67a9e19de53ce4a4c6cdd5823`

```dockerfile
```

-	Layers:
	-	`sha256:57f355ede300339ee29aadc0a283d2afde2dc27d26301ea0acf439f0572aff61`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:fa2f28c5f619aae4b82e38afeb82451119c66bf44f46153c7ff33172a97a3c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62890407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ca6a6888a35b41b13baef979c2622ae20fdb41116b9c28969a5d5f7b4dfc14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:4fc860e64e522dfdafa3f20a98401f703c707145f887a0dbe59e3d971ef56e08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bc55a2ab584e5f8b5f72e72b293cbcf5994c1c573cd3884db9324816ce52d5e`

```dockerfile
```

-	Layers:
	-	`sha256:469d5dc1af5f83c6fa6e5da7e34ee28c644df5f62cb7ba9b35cc1b0ae0ba8a4b`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:29f5b784d655f4a986d1e909c6384aaee1a522c00bb96ffa137028289cd1e222
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63297771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54df28f3013752d4685a81d3582497bb95069b76113817c69ed3ab203a22ca50`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:fca51c7777e18785819e0f3d1e2ef900643213c4ae59c84b7f91b2a81f1300e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13b9e005f029c6a972d1ca9f184df44201467e7f8d7afc47be7a5b218efda03`

```dockerfile
```

-	Layers:
	-	`sha256:4a68f940fecaae6ba2187a243b0846e513955a2cdd8b227a9ec260e46fbe81db`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind-rootless`

```console
$ docker pull docker@sha256:0db502057f8309c7a36c23db231e71dc620eb174f4744912b73399d750cbcfdb
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
$ docker pull docker@sha256:d6d8c364be3bd700baef07fe908e8bcbbfada634b36480d8cd151d6695bed6a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128008397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b303392c707b61c0053c1b3cc3575ea4f8c1af8d0656ba5f17df44a0f6a6cdf0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
# Wed, 04 Nov 2026 00:09:31 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 04 Nov 2026 00:09:31 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 04 Nov 2026 00:09:33 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 04 Nov 2026 00:09:33 GMT
USER rootless
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb7c1fa5f08ebb270735f4300e0bb5c835464eec1f8a63e195750f7b3502d55`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.6 MB (3611288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47057cedb4c6affb127c51abd22dd2ce1689e42008cc5ac328fdad947f7e290e`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65a8dac30b75a4adefdbdc7d0290c5c7b411addeffe856c48f26cbe617bdbbd`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6ff0660874d2fe003c3f925d59c2c5df577733f8ebc2c644cdc27095c2ee49`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 11.3 MB (11255538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:727d5c74b5a7eb8228eaeba99dd11e1c44de2a73bb0788fa8855dbf432a17561`  
		Last Modified: Wed, 04 Nov 2026 00:09:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:227fde4980e6db92525c87259f80b9413d324c78a4534dbc7e717f4bc0d5614f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d09cc4742d3cb5970ca5db03de7d7216e1e1629ca42daf9cef78bb7e4675799`

```dockerfile
```

-	Layers:
	-	`sha256:7c3e680ded94755a0194f601380c8ce9f9919bcb8855a2c195c447f8cc558cfb`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:latest`

```console
$ docker pull docker@sha256:d035bd30886e451b2727ef3cdb9af9a5c537a10d4bc5d18c08d0ffa597e46aeb
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
$ docker pull docker@sha256:3d237fe43f2507dab8cc64bf667bca6d509d747eaeecb02f2a18dee350402d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122351925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d0681aa1e6756df485af7922fbaf9bd73275db418900c713b564bc94f94175`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 23:06:21 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 23:06:21 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 23:06:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:06:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 23:06:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:06:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 23:06:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:06:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 23:06:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 23:06:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 23:06:26 GMT
CMD ["sh"]
# Wed, 04 Nov 2026 00:09:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 04 Nov 2026 00:09:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 04 Nov 2026 00:09:27 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 00:09:27 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Nov 2026 00:09:27 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 04 Nov 2026 00:09:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Nov 2026 00:09:27 GMT
CMD []
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d73475f3cd08d530cc8d02d9908e84173b190cef4927041dc1d794f5da6f72`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 8.2 MB (8202825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7913c30c75cb570fdda9c1a1698b3cc208908ad400b67f60fc005294b565e2a4`  
		Last Modified: Tue, 03 Nov 2026 23:06:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cca534994258e3ae223ffee6d6a3d750898511ce95aa8e821a9bed8a890d83`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 20.3 MB (20275616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90717f4349f439d169f17aa8bccdaa951d2665abac62965d02e61dbdd51a5596`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2715b93733ef9f1962d8e63dff73350bce1ec58a6aca9730d6c8d92ac970cba3`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 11.7 MB (11655781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9fb409770cc1a034a174f9a9ed1b3c24aae3980139de65e73ce63c95346683`  
		Last Modified: Tue, 03 Nov 2026 23:06:34 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53809f81375ef56c5545086f9f0395d62e509d9f33351412113f99c1d3323153`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5805c640831585e2ee834f2802dbe86a74c04ad18ca8b4bc62bc07d2f4b18`  
		Last Modified: Tue, 03 Nov 2026 23:06:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af99f9669994bb05829189d6f6298ca90fa0eb04250250209188096afb0f7f`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.5 MB (1497359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cac9bbacba43090a0a4d8c249ef10aaef569c1cdfdfea443b07e7ca6139cb4a`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 81.1 KB (81063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464ba5dc6dcf798943038cfec8ffa339837aeaa154ac6142bc87e81d5aff34f8`  
		Last Modified: Wed, 04 Nov 2026 00:09:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d89edf83f0f286110e02033be263a16b5bf48188255acaf579f09b38af55b04`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 53.0 MB (52951598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd88451a07d8341e965c9ef263fe51c5d94323389f01f82cb43a2c4e6b32102`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5dacea61fafb7ee52378a48d0a67a8d37b3933f7ca5edad7ce7c0a5c7a0950`  
		Last Modified: Wed, 04 Nov 2026 00:09:38 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:c083ef110b075f7453344d3c4ce2989ba611e5a92bea9eb855589eccabff7caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00d925a87170218c9f4989dec05a8a5478e3a1d6bfa0fedc44f08c649c72495a`

```dockerfile
```

-	Layers:
	-	`sha256:21a5c47ffef2b89b37ed956962b376d4df515ce9bbd5b2a25b5f8a868d9e4cf0`  
		Last Modified: Wed, 04 Nov 2026 00:09:36 GMT  
		Size: 34.4 KB (34409 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:b6f1f85c606916c89e037468c02b3efa6df1718f8a62ed3c43832820d04db3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115045997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf046fb8fe8dff17e3cd7db9709f0384cee638c16b55ddb9d9ec110b7851788`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:56:57 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:56:57 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:57:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:57:00 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:57:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:57:03 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:57:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:57:04 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:57:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:04 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:55 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:59 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:59 GMT
CMD []
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1122a5632bbb09ad14de76d4e9809d1161fcf19ea1afb440b36e1d9c4f865b2`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 8.1 MB (8106954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a481a411efb967833dcab04277ce0f7ab4edd4a07dbd8a8279c1be454ec10cd`  
		Last Modified: Tue, 03 Nov 2026 22:57:10 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e23fad4742d3ce3aac722f09ee1e9c3c25236f870326c90dd762dd4d6223f4`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 18.8 MB (18823239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020fb79611c3cb74be1ac9c397a6e5e06d9c7641eaa402a25540e117b0f0196a`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 22.4 MB (22399445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04286b323a45a924f0123386a6b2a353333b4f98304aaa55c52cf9b1546d5e2e`  
		Last Modified: Tue, 03 Nov 2026 22:57:11 GMT  
		Size: 11.0 MB (11047593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a74e3fea57d583dc3620b930345ff672f5945cdb52cf4bdc9c5d2c9af0a4f`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d3709cf7be6e953038cea967467aa336d37e3b692c0bea31a2bf8113cbf625`  
		Last Modified: Tue, 03 Nov 2026 22:57:12 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39975535726b75d880e7c1565c6573121f82bfc77a8b826faf2ce65a6cdef832`  
		Last Modified: Tue, 03 Nov 2026 22:57:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b954c533a9a1425c970ba5874e980dd4a6353d7e7772f823730991d28242e43f`  
		Last Modified: Tue, 03 Nov 2026 23:10:09 GMT  
		Size: 1.5 MB (1498741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44565172fcbf2c4d8f8322b414cb7fc642d39aa38b537c6650b0ed525935a04a`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 79.7 KB (79744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee0b15f50230e0129dc0b1b0e931ff86ce3838cb448d958a3bc411d5fa799f`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9885c65a318fb9d73d043d04f27f96da1d87ca75f1f832a9b7ae031e683bac71`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 49.5 MB (49523828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff22bb5a6e67be58490964578f5d660d8c66eaefa356238c5aa9f281bc0c07b`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd567ebb948291b0041a07b20854ab9a0bd19fd4be244ea24b9c55822a77a57`  
		Last Modified: Tue, 03 Nov 2026 23:10:10 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:4c0d2e316acde196667030befdf7e30a1040616e59c79ac844a5ce2f3a07f9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff653de8e2a4092384d7e5c078587fed53f4130f004770d34818c9550b32fcc9`

```dockerfile
```

-	Layers:
	-	`sha256:deb026058c6ffea834c186e3f9c66c9a6aeb7d6a419ec1cad36a6013e53b440b`  
		Last Modified: Tue, 03 Nov 2026 23:10:08 GMT  
		Size: 34.6 KB (34589 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:6000bbb6cbfc22227f1bfa87afb4ff087b42066bc9865b8f6e2118e645eaabaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.7 MB (113721695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d358bd2866d73900df7ec259d8e3fd181b6e53de56afad982d898eb1776c0cf5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:58:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:58:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:58:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:58:04 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:58:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:58:06 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:58:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:58:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:08 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d69fddb076f666243457a0a4f5ff39cfd597fcd280679fd9a74a0ebb2e1e67`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 7.4 MB (7402492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b820ded3e44b5d997b5ce07778920326e1a0c3a739ca5c165d9f2336ab3697`  
		Last Modified: Tue, 03 Nov 2026 22:58:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58bbb31ad0e0392cf781bb47598c0bd214ff79568cebbe284703840936cee37`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 18.8 MB (18809563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b542e2f36c4081500a05d979748de7a3e02ce7afcc5477fb6a1e68bf64e8a6e`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 22.4 MB (22376974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e58b990ac6e4fcf2d18fe4f910c6d19a3301b0da656640e6cf6a10c984783c`  
		Last Modified: Tue, 03 Nov 2026 22:58:15 GMT  
		Size: 11.0 MB (11032561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b558fbcacd12409cec9a694e6a2307d6f29a6ac98a5c61c26892e8ae28d3f0`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d172b3dcfa4ba5d834f4ca91df6aea932acd3ebb12a8056b650ea11c9114f7`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b7d25d1a15cef222e8ca6a678adb9cabc143167677e710b207094b871f7b4c`  
		Last Modified: Tue, 03 Nov 2026 22:58:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b8616a8e0e67393deb6934549abd22bb0105ef895336eac3a5f09c7870f032`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.4 MB (1384232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02cb83084ee5459c3ed72bb263580c5ad452e52cb1c4f27efa7181775ca482cb`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 76.1 KB (76115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82beee937a4bcff17350f07c7edc8be5eec91271493a4677773113c9c347fb82`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9754c5f93a047f1da1d29056c8e608dbf9daf88646470db4cfff70d308f13b35`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 49.4 MB (49364935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5895f32786f585f2a04657c042dae00fcbe9b1a0b9f8cecda8745d0c7f32fba`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c732b0df9a109e4f5db4a1a1f1d47dbc1b3ff9e7ef5aea1be44228c81aa7eb`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:ca6a89bf8dee76c71c9bd8f7a4dbc0d48eb399e1abf95a35eebf1ec7496411d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01af654db8594806966fab724d5f959f24db0ad9e22a321e21beed256095ab1b`

```dockerfile
```

-	Layers:
	-	`sha256:81bfd02e875adfd58ccf075565a0e873f7b935221cc1bb277e2e6937fee19727`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34588 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab80e853b19e10ed1289630568b99b6a53c33b16246b1928a68148e32e7cb688
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.1 MB (113140229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247776ca090d3b411c496c8ed40a9304dc56c85ceb43ffbbb8b277f6d1a0ea8f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 22:59:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 03 Nov 2026 22:59:36 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 22:59:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 03 Nov 2026 22:59:39 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 22:59:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 03 Nov 2026 22:59:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 03 Nov 2026 22:59:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:59:40 GMT
CMD ["sh"]
# Tue, 03 Nov 2026 23:09:16 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 03 Nov 2026 23:09:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.3.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.3.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.3.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.3.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 03 Nov 2026 23:09:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 03 Nov 2026 23:09:20 GMT
VOLUME [/var/lib/docker]
# Tue, 03 Nov 2026 23:09:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 03 Nov 2026 23:09:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 03 Nov 2026 23:09:20 GMT
CMD []
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34892eb954f53719608f70b05e5462ead923132956cdc20227b5de88ef60560f`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 8.3 MB (8261590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf611e16eb9d4c653ce9981a4aaeb78b4c66fed975fba05fee01eae334aee637`  
		Last Modified: Tue, 03 Nov 2026 22:59:46 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31767842e023292a77e3c4051e1181fe4c0430e39ea6c20d35f45d4e13ed3c6b`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 18.7 MB (18664063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ce25a839d8d2520218674fb8879e90c4887d2ca3562e479701d7480efaf9f4`  
		Last Modified: Tue, 03 Nov 2026 22:59:47 GMT  
		Size: 21.6 MB (21574108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2dae733d0cd17dade6a939902d54be2385cdc5558f3dde0fddc27db379964c`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 10.6 MB (10605367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa97d434a2e42a218405722052ae340e070b825050b3e6c301e871171ab61f4f`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38b0e854c874d96b9849a68f1bc86b3f7e7081f667a2a7e443a5a716cc0bf7`  
		Last Modified: Tue, 03 Nov 2026 22:59:48 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be41078f06b0c6d34c4a7899f86f63091f70944c8b69f5ebafae4a0afd15a2ad`  
		Last Modified: Tue, 03 Nov 2026 22:59:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41214a880f03406fe127afdd052976b72b45793b547d2c775c15fbf6994e73e6`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.7 MB (1744503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da6daa1fa396d0713361e30fad85e502b6e04c216cd41c503c52a9cc7d70ae`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 90.3 KB (90349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5eb5f3d79278dc5882dce505b035b4bd6a8a56e8235e13f95c21498e58814b4`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fdcb49480ffc3f0c4a9f6aef842b55ee4f0f879491264043dd4e0e08c2f343`  
		Last Modified: Tue, 03 Nov 2026 23:09:30 GMT  
		Size: 48.0 MB (48001603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c155145b245440cdf4896dbc10ed8c0915ed2ee4323a3faa4ae29b4fb881debb`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dc60b62a8880af366a28002982d8e1c1f4322264b11fa59c6b0fd70b8260d`  
		Last Modified: Tue, 03 Nov 2026 23:09:29 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:07aa218cce4c0167ddd3c34acfc3d81e00f1f5ef81e3ed04a6dd8a467ff11166
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.6 KB (34645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be102073ecbdf0cdef69af08f8f8c261bee9e94ddbe8d4e64de9091115cf1c80`

```dockerfile
```

-	Layers:
	-	`sha256:67e665e06608edc9d4fce2e935f2270d785ef29f9ada633562bf30d028913289`  
		Last Modified: Tue, 03 Nov 2026 23:09:28 GMT  
		Size: 34.6 KB (34645 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:windowsservercore`

```console
$ docker pull docker@sha256:07e10b2232d22ed2089c18e9ba70994cb97dba06d1cac4b1f3a57714fd284819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:4fd8f747bff50e4f44b1defcf7989520d23bb8bf278920c47554b1b7e717f6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull docker@sha256:6e243d7310ba0b8d9308b322d93b9616ecc1bfe4c4b2d7516ed04e2745665e1c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2285338049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f3ebe113f34fc23adc3cc238607314b92514c3fbfac565aabfb27ade29b0cc`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 03 Nov 2026 23:12:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:14:05 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:14:05 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:14:07 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:14:38 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:14:40 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:14:41 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:15:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:15:09 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:15:11 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:15:32 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd2115c06f8608fdea0934e65f05bb459c587a6aa446365cc2bc34c44c60252`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade406077ff3a698c27cca42e7ccf49feef80b86f0d7c3564751d1547c3f5cf4`  
		Last Modified: Tue, 03 Nov 2026 23:15:42 GMT  
		Size: 359.0 KB (358954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df6054b026955cd7cf8a7fb25e4b22eb3ad02e0e15961ab8a082916a7336324d`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00aa952a7b068f476eed8f183ce4e6799549d9efb725c069d03415801c8e621`  
		Last Modified: Tue, 03 Nov 2026 23:15:41 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fcc41850ae67a4997c35c3b69df0bfe4fb3489ea9790065155f20f76ca9e65`  
		Last Modified: Tue, 03 Nov 2026 23:15:43 GMT  
		Size: 20.9 MB (20891421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04fa773777e7c9acc67d5599df69c0873cd7d928d34ea7dae1b0266ccc2d5`  
		Last Modified: Tue, 03 Nov 2026 23:15:40 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4f3b2d06b20d1038b92d5692046d55b5bde07e8e7675fa0d9783f26e80be54`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94e412bde924f96057dc1808a917cd5690e3b5ac92597defb19c393fbea043`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0f54a89872e333e23e6506dfbd41c0eece041573f9c4f4a9414bb4596c8889`  
		Last Modified: Tue, 03 Nov 2026 23:15:53 GMT  
		Size: 24.7 MB (24738452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:580a1cd70ffc68ccd3fe3722c3a388bc4437bde63f85dcc341e15500d23ca0d6`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2a91351b5e1e1b01019237d99ba0b2cfeb3a2140d8e0d443ae01c0600caf89`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4cee28c3271420817b3937880be88ce3fd011c51d31760cc00fceee40b0001`  
		Last Modified: Tue, 03 Nov 2026 23:15:38 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6442c3b75dd82afd7af53c3c7895e5fa9972493d40f9411dbfb840c621872b`  
		Last Modified: Tue, 03 Nov 2026 23:15:39 GMT  
		Size: 12.3 MB (12281231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:42e1abd0bf5abc54aa1d3c9878f727af96c557fb77842b575f65d18192d58d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33674; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33674; amd64

```console
$ docker pull docker@sha256:0158fdd229d0605ea2c6790a63e13e8ba31555962f9fc6bd110d2775c6226480
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2450516827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1db6cf513b5e8000ab1a628bd512601db59276be2602cc4ba4a096348c746f5f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 03 Nov 2026 23:12:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Nov 2026 23:13:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_VERSION=29.9.3
# Tue, 03 Nov 2026 23:13:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.9.3.zip
# Tue, 03 Nov 2026 23:13:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:42 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.windows-amd64.exe
# Tue, 03 Nov 2026 23:13:43 GMT
ENV DOCKER_BUILDX_SHA256=9a6aca9c84adda0391d1d98d8b74b49359cad1bcdadd196a0a5d7d5dc4cf15e0
# Tue, 03 Nov 2026 23:13:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Tue, 03 Nov 2026 23:13:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-windows-x86_64.exe
# Tue, 03 Nov 2026 23:13:54 GMT
ENV DOCKER_COMPOSE_SHA256=f5dc759702aec5c0602e247aa861d14853216e3f481c4eaaf83621a035ecf92f
# Tue, 03 Nov 2026 23:14:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8490a770691f01a9e979f9bd80acabc9dbd13c9a7ef718d6e3bc7ca1b3c32880`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa428412e0d41dcb3e54f70db63ffa2533119f13c3d499ecb5a251b0eff7e95`  
		Last Modified: Tue, 03 Nov 2026 23:14:11 GMT  
		Size: 373.7 KB (373745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd93a39d3d09ee487eb788f932989cfcedf66a278995cda1626fbeee6c373db`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121539b9398fd061921d7579c7288c0c5fd2535680de8d8c312fc146f4b1dda6`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a54737f01d29b3c436e0df1be27f50baa249df4f35e1e9ec89dd52d286fffd`  
		Last Modified: Tue, 03 Nov 2026 23:14:12 GMT  
		Size: 21.0 MB (20952260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171a84387a5d1509435172f52ea3ce2baf8bbc113d03172f06018127d5fd76ce`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8121e520d3c5eb80249d8c888e574bba279cacd195ef3654c4d93b1e89a328a4`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117d7ae0ec4d483bea860b4c23ffecd3c4ac46f6bac59fedfb8bde21e2cdfd35`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c87aaf2c3f82e754d58b73c277f465754a821fdc7602560eca49d07229099f`  
		Last Modified: Tue, 03 Nov 2026 23:14:10 GMT  
		Size: 24.8 MB (24790470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cca6a74636bb95a49ebf1008a0a55367dc7baa07dea5e2881a01bc81b774770`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88dd5e7accd4547428b8243f00193d4fc66be0f02717362e00c51daadfc258f5`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac405d83f4231387ff44e66d124b969b0fbf1d18ab9bd5dc83ae5a63a20f98b0`  
		Last Modified: Tue, 03 Nov 2026 23:14:07 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a10672a461bbd20bb43f97d9c480500511eed621d393191cf139d4e6e6d6a2f0`  
		Last Modified: Tue, 03 Nov 2026 23:14:09 GMT  
		Size: 12.3 MB (12339708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
