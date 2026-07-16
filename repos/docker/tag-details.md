<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:29`](#docker29)
-	[`docker:29-cli`](#docker29-cli)
-	[`docker:29-dind`](#docker29-dind)
-	[`docker:29-dind-rootless`](#docker29-dind-rootless)
-	[`docker:29-windowsservercore`](#docker29-windowsservercore)
-	[`docker:29-windowsservercore-ltsc2022`](#docker29-windowsservercore-ltsc2022)
-	[`docker:29-windowsservercore-ltsc2025`](#docker29-windowsservercore-ltsc2025)
-	[`docker:29.6`](#docker296)
-	[`docker:29.6-cli`](#docker296-cli)
-	[`docker:29.6-dind`](#docker296-dind)
-	[`docker:29.6-dind-rootless`](#docker296-dind-rootless)
-	[`docker:29.6-windowsservercore`](#docker296-windowsservercore)
-	[`docker:29.6-windowsservercore-ltsc2022`](#docker296-windowsservercore-ltsc2022)
-	[`docker:29.6-windowsservercore-ltsc2025`](#docker296-windowsservercore-ltsc2025)
-	[`docker:29.6.1`](#docker2961)
-	[`docker:29.6.1-alpine3.24`](#docker2961-alpine324)
-	[`docker:29.6.1-cli`](#docker2961-cli)
-	[`docker:29.6.1-cli-alpine3.24`](#docker2961-cli-alpine324)
-	[`docker:29.6.1-dind`](#docker2961-dind)
-	[`docker:29.6.1-dind-alpine3.24`](#docker2961-dind-alpine324)
-	[`docker:29.6.1-dind-rootless`](#docker2961-dind-rootless)
-	[`docker:29.6.1-windowsservercore`](#docker2961-windowsservercore)
-	[`docker:29.6.1-windowsservercore-ltsc2022`](#docker2961-windowsservercore-ltsc2022)
-	[`docker:29.6.1-windowsservercore-ltsc2025`](#docker2961-windowsservercore-ltsc2025)
-	[`docker:cli`](#dockercli)
-	[`docker:dind`](#dockerdind)
-	[`docker:dind-rootless`](#dockerdind-rootless)
-	[`docker:latest`](#dockerlatest)
-	[`docker:windowsservercore`](#dockerwindowsservercore)
-	[`docker:windowsservercore-ltsc2022`](#dockerwindowsservercore-ltsc2022)
-	[`docker:windowsservercore-ltsc2025`](#dockerwindowsservercore-ltsc2025)

## `docker:29`

```console
$ docker pull docker@sha256:66d292e5c26bd33a6f6f61cacb880de2186339a524ecba1ce098dbbaceed6515
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
$ docker pull docker@sha256:e800743c1d2f29578f32ae4cf0ec1e20673f64ba5e2d34588f0ee8998a34a74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142009572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a9896195077f64981b363a7b46cf6e629cdedb093d9eb6ba1b4a66c903daed`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:53 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:57 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7d3688ed3253f01a35ac9ee319f7e2f8e00280b54b9fb0e8317425077cc3f`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd57b1c0c61542f33706b9a217d7b40cf6eb469d6bbaacd592469a9f25d878d`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 91.3 KB (91334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23011a9e0c5e9ba4ee856dbcf7c1d1926164009df6881ce03a59b65c1b9b6b0`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34defd136645fb282a3ec960a7f5e19a39dda5397932292252eddf6e931dd56`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 69.2 MB (69156332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d9f738aebeb26d0a87e7aa43f5e33eb6d26bcb05c5c1d726318c3c6d70b019`  
		Last Modified: Fri, 26 Jun 2026 20:10:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc014cc1384a4e34fd5f897abd97bf89e74dceb24ba98a1a236890061c23a4a8`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:f29d3ae24e5b229968e8c5764b492b6293d6bf80137ba4076122fa967c4da5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95a4b745d705a04fae2def0d4abaf0463179158329ecf5859b3abc32e1b7704`

```dockerfile
```

-	Layers:
	-	`sha256:3a7f99d3ab2db50a6083758533cee68e92aef2bb60afc9ddf281ccbd61c2b8c4`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v6

```console
$ docker pull docker@sha256:bdedb15bddfc81021485c850f7d37bef40e515c456da4635b736863f3976b9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133873009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f202efb69b8fd9fa6f6a0abfd316447ce1d0a32654abb7cc738e944e0a2a1f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:51 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:34 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:34 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db8b3b4e2357c4319897e1c52e2bda57c756cc30d1f9addaec6177e3e8c73`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 8.1 MB (8070144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eb064fda214a05c740e04415c08a3857ae6ffb0098b2a53248015ec027b34f`  
		Last Modified: Fri, 26 Jun 2026 19:14:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf52f8cf526c2ca5314adaf58b11db5f978f40033c35d011ae8a865ff44f05`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 18.1 MB (18080654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747d01e616647b152c48f96979cd7f98f0aa02da0a8d515b0256bc59c765487`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 21.7 MB (21652826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1580053038b0973908da90b76095afe32480ac248503de5b85273b1fe43a51`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 10.7 MB (10707921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48e796053f3d575cf35709fc741fbc702e65b7b39f9045deae47a1960a13d23`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0a59b79942b3637400842a4f60c7a9186b694a69f391c8d2d2da312c56c72`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa42d7f4e5e10520140c0f9069a1712cd48f679008b8c6cf6f06b7dfecec14`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7cdff279abc613b825a1a7e7a9294eb240bcc795a19a63959e21e72bf81cd1`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 7.3 MB (7304371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b87a48620f4529cf87608b466c2cacf49ee67eff228eb13d8b7e4cd016310c`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 90.7 KB (90730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32a74c2f7113a30d62e4d21d5992538f018cdd7c65f4e22dcd5ac6f5d664da`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6716f116acdde1c5b7689e3366241793935268192da4a173d5d187dedd99bcd4`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 64.4 MB (64404755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0893e143d5cdffc36db31d5413c7dc2647a158894a3cd894fda490517285c29`  
		Last Modified: Fri, 26 Jun 2026 20:09:45 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e90d067b63da99477d91ead20692760555470e8ef6c34e7b2b24cf1d803e59`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:bf76d90141845e8dea197c7c07bb448ea5843ed3dfd0e9613db7b827fdd90b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00b3354b0e436c17adba279ce05c7b700ee4f5b72cc1d6d1301dab96630c0b2`

```dockerfile
```

-	Layers:
	-	`sha256:fa7663f13b171cf058e8f5ee7cf468070827013d6ce54d5f182b2ba7e270dc86`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v7

```console
$ docker pull docker@sha256:60492b3c97e991508649843d139627ad8cc4c0815101887b7b6bb23096537034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131949580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15d44f36e5060d3a7b3f58a6871bb44a2d18304368c3918c6c13a701f87ecbc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:15:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:15:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:15:00 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:08:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:08:52 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:08:52 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:08:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:08:52 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73348ca386a2811c44f11895e0ce6fbb29fe2b6d5c7f400a448a27481c0c4d`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 7.4 MB (7371188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b50aff58537925905a23ce67a1fc115819edbaf2d1d7d7237d34412844420c`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac1ac344a988f0beb85bc6c5966d457b6859344894d711cd2279e5f75c4b63`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 18.1 MB (18061099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc84213c592aa5f4838bccc8e7cb8b6a766cd4604162fd18994ac70c63fa1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 21.6 MB (21635982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6342a153c33bb2a76526621dc3a99ba4089ec9f110edd39658b2c519df33c51`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 10.7 MB (10693590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96813c6dc7b4b75681f43117d254f06619c1aed25b092f3ea927429704dba6e`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfdc15d2b4dc6af610d0d72843a30e3a6d844d9ba2bd800624f99133099205`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce9f0e25dafa483c12a1779e1f5d59de6c0edfec2a274e9aee4727331a0113`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439a4f013ca0e4303273a92f2c6adeb71d309e5ec539cf4555a8ec60f060a893`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 6.6 MB (6598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011532103b9333944f76c9582f2a592aec3b333d66bd71df4607fb398d0cf512`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 87.0 KB (86975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a512236d997aa4b534c4f329a22a90760a4f5414c2c2882b0b4d1e9f8e6581d0`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76ec8bfe90a3ac82472f200ec7565e878f901bf590fb95c8e9338d36530fe3e`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 64.2 MB (64233117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa03f66de40e2b554187eb333b02f14abf520b3fcab970a778113113fdab11b5`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0241dd7b7777fb1f174a8d05d36e0844eaf0debaa752c4c965cc782993e5abcd`  
		Last Modified: Fri, 26 Jun 2026 20:09:03 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:b0858646b4d5fa1d62b83277ae7eef9b57f0eebc11d23484f88085e1b625e233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b7720c518d82646ddd0340d261248d1882f0ceecd89f601ddd6464c4c82f21`

```dockerfile
```

-	Layers:
	-	`sha256:5106509e47d28570c6579dbb59a5e76b3139abb37b67ca387cee73dba38c00ab`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8a370e65c039a98b80ea802d55a3045c05d0d21921e7e547bfa20cb945f2a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131350673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80c6b7dd645a610d4754c8e586d240f358e4ff6cc0802571b9318af96a9c324`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:42 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:42 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e7b7f7c3f4d6179fee0cd18c832b93bb7d412938076e09926798c894b1e870`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 7.2 MB (7240483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe0a609f7f49f5ccf70c6712472dc07c629e0114d6103f5102b4edec75a966`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 100.0 KB (99950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa2612640a67bffdba6b2de15bee17e1f3554fab495307c2eb31c722920020`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd80cad6104c5f657e5582ea0c09f7f8c62bcde68bb1e7964c9c21ec0d8bfeb`  
		Last Modified: Fri, 26 Jun 2026 20:09:54 GMT  
		Size: 62.6 MB (62574293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75843d6b9c9d05f0c0cd271f3c838fe43b9d98abda3603a5fdd6d567d686840`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571f5b27af7ee8767453fb806ee10936f9c71f41b92b2fb9df9c64cfdf7e9e68`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:942eec10c0a0da7b72b77a7b973630fb45c1167f6913bd811cec56181d17ab21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749e29ecf3695d571188e5233e6a64f66ba0e159d762c623c3a6b1e56fe9a9f5`

```dockerfile
```

-	Layers:
	-	`sha256:15815c3bd67687560e6da1821000f25a70e6cf98fdca3433cbf401268fa88bd0`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 34.8 KB (34776 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-cli`

```console
$ docker pull docker@sha256:862099ada15c669000bef53aa4cb9d821262829f45b0dda2159ccb276443043b
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
$ docker pull docker@sha256:a011361b7e7dbf51ba0db930a7b746a0bb80935ac1b2f5d892a989025c80fab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65790677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a75857a59abadc720af7d48f3ac89272b7256ec346c22be03ebe241c6f6dc34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:92bdc3281f0b844bd0e84c3bfef3bf1231a79dc559a335bb36c7a332dece828c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c28cc930ad0986d9cede5eb02a6ce0976049de8a11d46503812e586899b630`

```dockerfile
```

-	Layers:
	-	`sha256:4a0bc992b60a504b92b71f8aa85d9c87c1eb5e66e91322105dcbde26f835b4c6`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:b7ef782591ebdb6dfcffce08eaa7b80ac765eb006cdbc42449769d7dc05b2e8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62067149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16849351abcbee1c9ccd6f356f9fc99c4f860d9f578fe9b0d12c324ab0a8c347`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db8b3b4e2357c4319897e1c52e2bda57c756cc30d1f9addaec6177e3e8c73`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 8.1 MB (8070144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eb064fda214a05c740e04415c08a3857ae6ffb0098b2a53248015ec027b34f`  
		Last Modified: Fri, 26 Jun 2026 19:14:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf52f8cf526c2ca5314adaf58b11db5f978f40033c35d011ae8a865ff44f05`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 18.1 MB (18080654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747d01e616647b152c48f96979cd7f98f0aa02da0a8d515b0256bc59c765487`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 21.7 MB (21652826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1580053038b0973908da90b76095afe32480ac248503de5b85273b1fe43a51`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 10.7 MB (10707921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48e796053f3d575cf35709fc741fbc702e65b7b39f9045deae47a1960a13d23`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0a59b79942b3637400842a4f60c7a9186b694a69f391c8d2d2da312c56c72`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa42d7f4e5e10520140c0f9069a1712cd48f679008b8c6cf6f06b7dfecec14`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:a351980ad3031c5131f94c83475aaa895abb403c69120c3f81ebf2086cd1306c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485804550c69b9ad6fe98231b71b255cdd24dc5c96fab549d0f97703eb825554`

```dockerfile
```

-	Layers:
	-	`sha256:0891442af9876f93855b78cd35903737044c7420a9edee8dc743c00cbd219895`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:d847004ceadc208ba9ac56c691f6da26f808094246ed1ff21812718b4e83d4c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61024623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097b61b571bd924e817bf73255ed2e94a0f318a9669db20180c91d7aa59606f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:15:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:15:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:15:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73348ca386a2811c44f11895e0ce6fbb29fe2b6d5c7f400a448a27481c0c4d`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 7.4 MB (7371188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b50aff58537925905a23ce67a1fc115819edbaf2d1d7d7237d34412844420c`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac1ac344a988f0beb85bc6c5966d457b6859344894d711cd2279e5f75c4b63`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 18.1 MB (18061099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc84213c592aa5f4838bccc8e7cb8b6a766cd4604162fd18994ac70c63fa1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 21.6 MB (21635982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6342a153c33bb2a76526621dc3a99ba4089ec9f110edd39658b2c519df33c51`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 10.7 MB (10693590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96813c6dc7b4b75681f43117d254f06619c1aed25b092f3ea927429704dba6e`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfdc15d2b4dc6af610d0d72843a30e3a6d844d9ba2bd800624f99133099205`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce9f0e25dafa483c12a1779e1f5d59de6c0edfec2a274e9aee4727331a0113`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:0f60cb2c4d2cd1430359ee87d407bad0056bf6b1e6d81c87d7d5606f8b03f4b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cce93c5631da2bb8ee790bccfb4e84b62b5435d0d8c0e13220cef1785513a98`

```dockerfile
```

-	Layers:
	-	`sha256:af60b0dc8de3ad37e06e6b1b3d4bbba685d201c5462c6e3c0827dd7b37738312`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:936645b07ec2facf224d96e54b15c2254739663066cf252a0bb8e94fa222bf45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61429945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4aeeabe0dc47d40fe04c980a50d6da10c3c4f6d170205a5401d2edd186700af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:099807f6a4b1ec8d01317adf1b16fc8574d3220e1ae65009c28b5dc9a6176747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1749de21b617e727ceb335efd9a64daa8f1b12b8aa307fd1067058d2244c915`

```dockerfile
```

-	Layers:
	-	`sha256:3e6584e97eec65ee9ecbb966d19ce0436116f7c48841b630bcbb2bfbff2eb985`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 38.3 KB (38261 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind`

```console
$ docker pull docker@sha256:66d292e5c26bd33a6f6f61cacb880de2186339a524ecba1ce098dbbaceed6515
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
$ docker pull docker@sha256:e800743c1d2f29578f32ae4cf0ec1e20673f64ba5e2d34588f0ee8998a34a74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142009572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a9896195077f64981b363a7b46cf6e629cdedb093d9eb6ba1b4a66c903daed`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:53 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:57 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7d3688ed3253f01a35ac9ee319f7e2f8e00280b54b9fb0e8317425077cc3f`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd57b1c0c61542f33706b9a217d7b40cf6eb469d6bbaacd592469a9f25d878d`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 91.3 KB (91334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23011a9e0c5e9ba4ee856dbcf7c1d1926164009df6881ce03a59b65c1b9b6b0`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34defd136645fb282a3ec960a7f5e19a39dda5397932292252eddf6e931dd56`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 69.2 MB (69156332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d9f738aebeb26d0a87e7aa43f5e33eb6d26bcb05c5c1d726318c3c6d70b019`  
		Last Modified: Fri, 26 Jun 2026 20:10:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc014cc1384a4e34fd5f897abd97bf89e74dceb24ba98a1a236890061c23a4a8`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:f29d3ae24e5b229968e8c5764b492b6293d6bf80137ba4076122fa967c4da5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95a4b745d705a04fae2def0d4abaf0463179158329ecf5859b3abc32e1b7704`

```dockerfile
```

-	Layers:
	-	`sha256:3a7f99d3ab2db50a6083758533cee68e92aef2bb60afc9ddf281ccbd61c2b8c4`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:bdedb15bddfc81021485c850f7d37bef40e515c456da4635b736863f3976b9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133873009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f202efb69b8fd9fa6f6a0abfd316447ce1d0a32654abb7cc738e944e0a2a1f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:51 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:34 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:34 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db8b3b4e2357c4319897e1c52e2bda57c756cc30d1f9addaec6177e3e8c73`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 8.1 MB (8070144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eb064fda214a05c740e04415c08a3857ae6ffb0098b2a53248015ec027b34f`  
		Last Modified: Fri, 26 Jun 2026 19:14:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf52f8cf526c2ca5314adaf58b11db5f978f40033c35d011ae8a865ff44f05`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 18.1 MB (18080654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747d01e616647b152c48f96979cd7f98f0aa02da0a8d515b0256bc59c765487`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 21.7 MB (21652826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1580053038b0973908da90b76095afe32480ac248503de5b85273b1fe43a51`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 10.7 MB (10707921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48e796053f3d575cf35709fc741fbc702e65b7b39f9045deae47a1960a13d23`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0a59b79942b3637400842a4f60c7a9186b694a69f391c8d2d2da312c56c72`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa42d7f4e5e10520140c0f9069a1712cd48f679008b8c6cf6f06b7dfecec14`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7cdff279abc613b825a1a7e7a9294eb240bcc795a19a63959e21e72bf81cd1`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 7.3 MB (7304371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b87a48620f4529cf87608b466c2cacf49ee67eff228eb13d8b7e4cd016310c`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 90.7 KB (90730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32a74c2f7113a30d62e4d21d5992538f018cdd7c65f4e22dcd5ac6f5d664da`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6716f116acdde1c5b7689e3366241793935268192da4a173d5d187dedd99bcd4`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 64.4 MB (64404755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0893e143d5cdffc36db31d5413c7dc2647a158894a3cd894fda490517285c29`  
		Last Modified: Fri, 26 Jun 2026 20:09:45 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e90d067b63da99477d91ead20692760555470e8ef6c34e7b2b24cf1d803e59`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:bf76d90141845e8dea197c7c07bb448ea5843ed3dfd0e9613db7b827fdd90b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00b3354b0e436c17adba279ce05c7b700ee4f5b72cc1d6d1301dab96630c0b2`

```dockerfile
```

-	Layers:
	-	`sha256:fa7663f13b171cf058e8f5ee7cf468070827013d6ce54d5f182b2ba7e270dc86`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:60492b3c97e991508649843d139627ad8cc4c0815101887b7b6bb23096537034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131949580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15d44f36e5060d3a7b3f58a6871bb44a2d18304368c3918c6c13a701f87ecbc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:15:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:15:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:15:00 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:08:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:08:52 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:08:52 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:08:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:08:52 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73348ca386a2811c44f11895e0ce6fbb29fe2b6d5c7f400a448a27481c0c4d`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 7.4 MB (7371188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b50aff58537925905a23ce67a1fc115819edbaf2d1d7d7237d34412844420c`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac1ac344a988f0beb85bc6c5966d457b6859344894d711cd2279e5f75c4b63`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 18.1 MB (18061099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc84213c592aa5f4838bccc8e7cb8b6a766cd4604162fd18994ac70c63fa1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 21.6 MB (21635982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6342a153c33bb2a76526621dc3a99ba4089ec9f110edd39658b2c519df33c51`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 10.7 MB (10693590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96813c6dc7b4b75681f43117d254f06619c1aed25b092f3ea927429704dba6e`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfdc15d2b4dc6af610d0d72843a30e3a6d844d9ba2bd800624f99133099205`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce9f0e25dafa483c12a1779e1f5d59de6c0edfec2a274e9aee4727331a0113`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439a4f013ca0e4303273a92f2c6adeb71d309e5ec539cf4555a8ec60f060a893`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 6.6 MB (6598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011532103b9333944f76c9582f2a592aec3b333d66bd71df4607fb398d0cf512`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 87.0 KB (86975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a512236d997aa4b534c4f329a22a90760a4f5414c2c2882b0b4d1e9f8e6581d0`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76ec8bfe90a3ac82472f200ec7565e878f901bf590fb95c8e9338d36530fe3e`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 64.2 MB (64233117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa03f66de40e2b554187eb333b02f14abf520b3fcab970a778113113fdab11b5`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0241dd7b7777fb1f174a8d05d36e0844eaf0debaa752c4c965cc782993e5abcd`  
		Last Modified: Fri, 26 Jun 2026 20:09:03 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:b0858646b4d5fa1d62b83277ae7eef9b57f0eebc11d23484f88085e1b625e233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b7720c518d82646ddd0340d261248d1882f0ceecd89f601ddd6464c4c82f21`

```dockerfile
```

-	Layers:
	-	`sha256:5106509e47d28570c6579dbb59a5e76b3139abb37b67ca387cee73dba38c00ab`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8a370e65c039a98b80ea802d55a3045c05d0d21921e7e547bfa20cb945f2a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131350673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80c6b7dd645a610d4754c8e586d240f358e4ff6cc0802571b9318af96a9c324`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:42 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:42 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e7b7f7c3f4d6179fee0cd18c832b93bb7d412938076e09926798c894b1e870`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 7.2 MB (7240483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe0a609f7f49f5ccf70c6712472dc07c629e0114d6103f5102b4edec75a966`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 100.0 KB (99950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa2612640a67bffdba6b2de15bee17e1f3554fab495307c2eb31c722920020`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd80cad6104c5f657e5582ea0c09f7f8c62bcde68bb1e7964c9c21ec0d8bfeb`  
		Last Modified: Fri, 26 Jun 2026 20:09:54 GMT  
		Size: 62.6 MB (62574293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75843d6b9c9d05f0c0cd271f3c838fe43b9d98abda3603a5fdd6d567d686840`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571f5b27af7ee8767453fb806ee10936f9c71f41b92b2fb9df9c64cfdf7e9e68`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:942eec10c0a0da7b72b77a7b973630fb45c1167f6913bd811cec56181d17ab21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749e29ecf3695d571188e5233e6a64f66ba0e159d762c623c3a6b1e56fe9a9f5`

```dockerfile
```

-	Layers:
	-	`sha256:15815c3bd67687560e6da1821000f25a70e6cf98fdca3433cbf401268fa88bd0`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 34.8 KB (34776 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:371962f4344295a1eb185f1c9e62064bf4503a7beb8c6e73be3405500041784b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:7e32ba65198ce220388cb6c45cfac60966e6dee5c7a7207510ce786648e1ca75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.6 MB (157585482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5bb5dad84091a1a6695f967bc7974bdf20759600535244123f5d8108736cdb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:53 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:57 GMT
CMD []
# Fri, 26 Jun 2026 21:10:07 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 26 Jun 2026 21:10:07 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 26 Jun 2026 21:10:07 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 21:10:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 26 Jun 2026 21:10:08 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 26 Jun 2026 21:10:08 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 26 Jun 2026 21:10:08 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7d3688ed3253f01a35ac9ee319f7e2f8e00280b54b9fb0e8317425077cc3f`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd57b1c0c61542f33706b9a217d7b40cf6eb469d6bbaacd592469a9f25d878d`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 91.3 KB (91334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23011a9e0c5e9ba4ee856dbcf7c1d1926164009df6881ce03a59b65c1b9b6b0`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34defd136645fb282a3ec960a7f5e19a39dda5397932292252eddf6e931dd56`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 69.2 MB (69156332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d9f738aebeb26d0a87e7aa43f5e33eb6d26bcb05c5c1d726318c3c6d70b019`  
		Last Modified: Fri, 26 Jun 2026 20:10:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc014cc1384a4e34fd5f897abd97bf89e74dceb24ba98a1a236890061c23a4a8`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fedeb688a134dfd96a614fb4f858bf76864d5f7a5d76fdabc5548958d7e4e4f`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 3.5 MB (3471260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c81ea3ee5cc4fdc815bbecc7e83636c9d253555108c80a3b6b3ac4637089dc`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b435a74e2da7f7cbe66f68a960273748e56884de827c9968907f52112d808d4`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd84e92bf71e4ca3fda92193af8716b7bc7a27df2eaf1d0b2e4bd572a60880be`  
		Last Modified: Fri, 26 Jun 2026 21:10:14 GMT  
		Size: 12.1 MB (12103309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65cb2266b88aba0063d5fdb6bf7d1a456e320bc4ae60522962bdee59fb7845e4`  
		Last Modified: Fri, 26 Jun 2026 21:10:14 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:60a04bf338a3905afe926941d1dfa69e1ee723f164f9be090c10270c9e21bbca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d327b13b2f4387990a6a1be787939319382ebeced88fcc57fab642794dd96b`

```dockerfile
```

-	Layers:
	-	`sha256:8943a2760cc456fd13256361ef31a0708d98769920a4b615d7c275fcb8f94adb`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5b12ac3fac58ba82cc21a388bbbd7c4e6ab734e0fd937b3083c166468bd310e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146037933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1ac82d40c6358354dff44028a97431acf35e13460ff66476fab4a66d76cd04`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:42 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:42 GMT
CMD []
# Fri, 26 Jun 2026 21:10:00 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 26 Jun 2026 21:10:00 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 26 Jun 2026 21:10:00 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 21:10:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 26 Jun 2026 21:10:01 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 26 Jun 2026 21:10:01 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 26 Jun 2026 21:10:01 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e7b7f7c3f4d6179fee0cd18c832b93bb7d412938076e09926798c894b1e870`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 7.2 MB (7240483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe0a609f7f49f5ccf70c6712472dc07c629e0114d6103f5102b4edec75a966`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 100.0 KB (99950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa2612640a67bffdba6b2de15bee17e1f3554fab495307c2eb31c722920020`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd80cad6104c5f657e5582ea0c09f7f8c62bcde68bb1e7964c9c21ec0d8bfeb`  
		Last Modified: Fri, 26 Jun 2026 20:09:54 GMT  
		Size: 62.6 MB (62574293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75843d6b9c9d05f0c0cd271f3c838fe43b9d98abda3603a5fdd6d567d686840`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571f5b27af7ee8767453fb806ee10936f9c71f41b92b2fb9df9c64cfdf7e9e68`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d78dc73bf15721c5e18393c9315ad0fd1cde93655d5dd1b22dd79c6480337c`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 3.4 MB (3448838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac68c7e2a1412e9139e86b2cd3d47f65bb122c046cd72373b4cdde640c6bde4`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940e296424552351728af90be04f9bc7331768121feb9a16968a8e5012c680ef`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816a434de8a1c5ad5bc40e0b8b54d22e2b6c5dbb2308538a24c962e0f17cfa77`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 11.2 MB (11237083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69764499e5f4c737e1e3df06b6449dd1f094d0577a91a48156e9dabb2877ebd1`  
		Last Modified: Fri, 26 Jun 2026 21:10:07 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:36d245ff3b999721594d488e19b3e5980a3b910da4484947b3fe77e303ed2175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2bb59055922667754d5649c5aba19c2b29b34bd435ea8db93ff1848d8dca10`

```dockerfile
```

-	Layers:
	-	`sha256:bf33c7b8b311be23d40353d86fd6af5aaf77cefa633818a4fe82eb77c873ccae`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:987caf6f2e47c9f384fe19fd22b5617110581779665d40a170753b34695692f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:c2b389f8cd8f11e2900d67bbacc9827f16489235e63656640d24fada8e762ad4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411561732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18049789f0008d9c3f37c8a8841127af1eba5771fe9a118eafcae58e504bc746`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:04:11 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:04:12 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:04:13 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:41 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:54 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:05:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2085c3db024288fc478fb62815fd678aad6214a4cadef12c88a10b0ae9c9e10`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39c0248b75a4ee2ef139a785aa92badfba4dc8b009e6ab4908d5ceef918ed03`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 382.1 KB (382133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69234e14e261dad77a6cf51b0eabba81dc5b3f965d5fed62bfc53c06d8a764a2`  
		Last Modified: Wed, 15 Jul 2026 23:05:17 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4539fd67326fa317750db628a2f1a4d3f5f9db73fd86c143a82bf467a32d47`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c846b5662624fd3ebfe0e3021130e8bdf7a33f0dab2b7eacbc540755b5ec51`  
		Last Modified: Wed, 15 Jul 2026 23:05:19 GMT  
		Size: 20.2 MB (20220063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425cca9457aad03f806d50fc3d834251cd234ac53ea7d666a7fff44f48733bfb`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85038b32ac498db56e754365261030c412c9b80e5a4ebb4816d8fecf747fc1f0`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99f228b2dc1ee2c7aae72c2161463b77c770632d7b9005720494fff7bd4915f`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7b534788fb6c61cc388746eb3fa65f616b4e735fd879464f59b69c2e4949b`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 23.9 MB (23944636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230bdaa6e2caa76f2b9b3b850efbc53d1495c485a8e25a9c8259ebf219016df`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45d7967f989527e856a0b6978996cd4e71c6358d2a53683d58e76a41667a50`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0823deb16c310112f9dd993e019c4763ffd60f5cf29c6b30055890a236117cff`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cdf81c4ffce0c932887e8e429e6ac7022ac9d7cd477986792e5c6c7467688`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 12.0 MB (11995157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:aeb9e3bd651814b4c9b55b662570d520cff6ce4ea5571f078d0320c1d79b2951
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214005146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84b934b73013ec7cdb7927925a7a10e5e99825ac7f9d4a9903901df8a8b6bae`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:02:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:03:46 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:03:47 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:03:48 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:05 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:07 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:26 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:27 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:04:44 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5552627ff15545aa9fdec68ddce1b24a3653c79d40f00b6e24d9e684d2d01c6b`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740e8aa81f0fb5274e4f063d5286087a65e41ac4ad7023d04821097dd1f32ee8`  
		Last Modified: Wed, 15 Jul 2026 23:04:53 GMT  
		Size: 476.8 KB (476847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4b0c9c42fa06c12a2965477d19454e005890d0f69e285c6fd70609987f0207`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3170927173373a955b2508380e29fd3b37a569fcd88bb757f1a2cfd1a9f7748`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c7eaa6a002e395c317fb7d998adf9243dfe2d6e0d014ad26e02aac0b6e82ee`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 20.1 MB (20092616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb52de32b635f2469a9591923d0b0339c32ed722a9e4dc56cbe77e76660e97a1`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb55b45b542e4f9d2f7de0dc787d2509cb4d3c3f0882cee01930f160ddaabe72`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1701a018adb739a0a4e29a9a8912fce71a5c9d4008fa92564c9c7a2928ac5fc4`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69728994b71846d2c478e3dc7368210e15268b588c22215bcd32308ad322e669`  
		Last Modified: Wed, 15 Jul 2026 23:04:56 GMT  
		Size: 23.9 MB (23913034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f9592843c383938cff645f97327f5f787098d0adfb6def0c6163ddbd233531`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d83fae979d85e9ab95e8fb1bdef481afb9be557c750459160629edb571e592`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbcb5371aee095d566dfc6237460f871409383a729e2005e25daac9973b0f8a`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d58224bf719f0162345746dfb24a7bbca8796e75db741bf8b2edf17071efa4c`  
		Last Modified: Wed, 15 Jul 2026 23:04:51 GMT  
		Size: 12.0 MB (11957735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:a29deb3372e442655c9e3913011579238eaca2953befe5ce6b9bd888d8ff5cdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:aeb9e3bd651814b4c9b55b662570d520cff6ce4ea5571f078d0320c1d79b2951
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214005146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84b934b73013ec7cdb7927925a7a10e5e99825ac7f9d4a9903901df8a8b6bae`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:02:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:03:46 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:03:47 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:03:48 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:05 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:07 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:26 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:27 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:04:44 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5552627ff15545aa9fdec68ddce1b24a3653c79d40f00b6e24d9e684d2d01c6b`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740e8aa81f0fb5274e4f063d5286087a65e41ac4ad7023d04821097dd1f32ee8`  
		Last Modified: Wed, 15 Jul 2026 23:04:53 GMT  
		Size: 476.8 KB (476847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4b0c9c42fa06c12a2965477d19454e005890d0f69e285c6fd70609987f0207`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3170927173373a955b2508380e29fd3b37a569fcd88bb757f1a2cfd1a9f7748`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c7eaa6a002e395c317fb7d998adf9243dfe2d6e0d014ad26e02aac0b6e82ee`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 20.1 MB (20092616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb52de32b635f2469a9591923d0b0339c32ed722a9e4dc56cbe77e76660e97a1`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb55b45b542e4f9d2f7de0dc787d2509cb4d3c3f0882cee01930f160ddaabe72`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1701a018adb739a0a4e29a9a8912fce71a5c9d4008fa92564c9c7a2928ac5fc4`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69728994b71846d2c478e3dc7368210e15268b588c22215bcd32308ad322e669`  
		Last Modified: Wed, 15 Jul 2026 23:04:56 GMT  
		Size: 23.9 MB (23913034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f9592843c383938cff645f97327f5f787098d0adfb6def0c6163ddbd233531`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d83fae979d85e9ab95e8fb1bdef481afb9be557c750459160629edb571e592`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbcb5371aee095d566dfc6237460f871409383a729e2005e25daac9973b0f8a`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d58224bf719f0162345746dfb24a7bbca8796e75db741bf8b2edf17071efa4c`  
		Last Modified: Wed, 15 Jul 2026 23:04:51 GMT  
		Size: 12.0 MB (11957735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:1dfd87c41615b541fc4f37949a0ce36d912f25e283496ecd7372b83897b656c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:29-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:c2b389f8cd8f11e2900d67bbacc9827f16489235e63656640d24fada8e762ad4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411561732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18049789f0008d9c3f37c8a8841127af1eba5771fe9a118eafcae58e504bc746`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:04:11 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:04:12 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:04:13 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:41 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:54 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:05:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2085c3db024288fc478fb62815fd678aad6214a4cadef12c88a10b0ae9c9e10`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39c0248b75a4ee2ef139a785aa92badfba4dc8b009e6ab4908d5ceef918ed03`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 382.1 KB (382133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69234e14e261dad77a6cf51b0eabba81dc5b3f965d5fed62bfc53c06d8a764a2`  
		Last Modified: Wed, 15 Jul 2026 23:05:17 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4539fd67326fa317750db628a2f1a4d3f5f9db73fd86c143a82bf467a32d47`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c846b5662624fd3ebfe0e3021130e8bdf7a33f0dab2b7eacbc540755b5ec51`  
		Last Modified: Wed, 15 Jul 2026 23:05:19 GMT  
		Size: 20.2 MB (20220063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425cca9457aad03f806d50fc3d834251cd234ac53ea7d666a7fff44f48733bfb`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85038b32ac498db56e754365261030c412c9b80e5a4ebb4816d8fecf747fc1f0`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99f228b2dc1ee2c7aae72c2161463b77c770632d7b9005720494fff7bd4915f`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7b534788fb6c61cc388746eb3fa65f616b4e735fd879464f59b69c2e4949b`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 23.9 MB (23944636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230bdaa6e2caa76f2b9b3b850efbc53d1495c485a8e25a9c8259ebf219016df`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45d7967f989527e856a0b6978996cd4e71c6358d2a53683d58e76a41667a50`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0823deb16c310112f9dd993e019c4763ffd60f5cf29c6b30055890a236117cff`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cdf81c4ffce0c932887e8e429e6ac7022ac9d7cd477986792e5c6c7467688`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 12.0 MB (11995157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.6`

```console
$ docker pull docker@sha256:66d292e5c26bd33a6f6f61cacb880de2186339a524ecba1ce098dbbaceed6515
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

### `docker:29.6` - linux; amd64

```console
$ docker pull docker@sha256:e800743c1d2f29578f32ae4cf0ec1e20673f64ba5e2d34588f0ee8998a34a74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142009572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a9896195077f64981b363a7b46cf6e629cdedb093d9eb6ba1b4a66c903daed`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:53 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:57 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7d3688ed3253f01a35ac9ee319f7e2f8e00280b54b9fb0e8317425077cc3f`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd57b1c0c61542f33706b9a217d7b40cf6eb469d6bbaacd592469a9f25d878d`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 91.3 KB (91334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23011a9e0c5e9ba4ee856dbcf7c1d1926164009df6881ce03a59b65c1b9b6b0`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34defd136645fb282a3ec960a7f5e19a39dda5397932292252eddf6e931dd56`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 69.2 MB (69156332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d9f738aebeb26d0a87e7aa43f5e33eb6d26bcb05c5c1d726318c3c6d70b019`  
		Last Modified: Fri, 26 Jun 2026 20:10:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc014cc1384a4e34fd5f897abd97bf89e74dceb24ba98a1a236890061c23a4a8`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6` - unknown; unknown

```console
$ docker pull docker@sha256:f29d3ae24e5b229968e8c5764b492b6293d6bf80137ba4076122fa967c4da5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95a4b745d705a04fae2def0d4abaf0463179158329ecf5859b3abc32e1b7704`

```dockerfile
```

-	Layers:
	-	`sha256:3a7f99d3ab2db50a6083758533cee68e92aef2bb60afc9ddf281ccbd61c2b8c4`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6` - linux; arm variant v6

```console
$ docker pull docker@sha256:bdedb15bddfc81021485c850f7d37bef40e515c456da4635b736863f3976b9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133873009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f202efb69b8fd9fa6f6a0abfd316447ce1d0a32654abb7cc738e944e0a2a1f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:51 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:34 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:34 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db8b3b4e2357c4319897e1c52e2bda57c756cc30d1f9addaec6177e3e8c73`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 8.1 MB (8070144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eb064fda214a05c740e04415c08a3857ae6ffb0098b2a53248015ec027b34f`  
		Last Modified: Fri, 26 Jun 2026 19:14:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf52f8cf526c2ca5314adaf58b11db5f978f40033c35d011ae8a865ff44f05`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 18.1 MB (18080654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747d01e616647b152c48f96979cd7f98f0aa02da0a8d515b0256bc59c765487`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 21.7 MB (21652826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1580053038b0973908da90b76095afe32480ac248503de5b85273b1fe43a51`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 10.7 MB (10707921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48e796053f3d575cf35709fc741fbc702e65b7b39f9045deae47a1960a13d23`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0a59b79942b3637400842a4f60c7a9186b694a69f391c8d2d2da312c56c72`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa42d7f4e5e10520140c0f9069a1712cd48f679008b8c6cf6f06b7dfecec14`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7cdff279abc613b825a1a7e7a9294eb240bcc795a19a63959e21e72bf81cd1`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 7.3 MB (7304371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b87a48620f4529cf87608b466c2cacf49ee67eff228eb13d8b7e4cd016310c`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 90.7 KB (90730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32a74c2f7113a30d62e4d21d5992538f018cdd7c65f4e22dcd5ac6f5d664da`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6716f116acdde1c5b7689e3366241793935268192da4a173d5d187dedd99bcd4`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 64.4 MB (64404755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0893e143d5cdffc36db31d5413c7dc2647a158894a3cd894fda490517285c29`  
		Last Modified: Fri, 26 Jun 2026 20:09:45 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e90d067b63da99477d91ead20692760555470e8ef6c34e7b2b24cf1d803e59`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6` - unknown; unknown

```console
$ docker pull docker@sha256:bf76d90141845e8dea197c7c07bb448ea5843ed3dfd0e9613db7b827fdd90b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00b3354b0e436c17adba279ce05c7b700ee4f5b72cc1d6d1301dab96630c0b2`

```dockerfile
```

-	Layers:
	-	`sha256:fa7663f13b171cf058e8f5ee7cf468070827013d6ce54d5f182b2ba7e270dc86`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6` - linux; arm variant v7

```console
$ docker pull docker@sha256:60492b3c97e991508649843d139627ad8cc4c0815101887b7b6bb23096537034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131949580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15d44f36e5060d3a7b3f58a6871bb44a2d18304368c3918c6c13a701f87ecbc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:15:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:15:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:15:00 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:08:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:08:52 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:08:52 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:08:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:08:52 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73348ca386a2811c44f11895e0ce6fbb29fe2b6d5c7f400a448a27481c0c4d`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 7.4 MB (7371188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b50aff58537925905a23ce67a1fc115819edbaf2d1d7d7237d34412844420c`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac1ac344a988f0beb85bc6c5966d457b6859344894d711cd2279e5f75c4b63`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 18.1 MB (18061099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc84213c592aa5f4838bccc8e7cb8b6a766cd4604162fd18994ac70c63fa1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 21.6 MB (21635982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6342a153c33bb2a76526621dc3a99ba4089ec9f110edd39658b2c519df33c51`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 10.7 MB (10693590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96813c6dc7b4b75681f43117d254f06619c1aed25b092f3ea927429704dba6e`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfdc15d2b4dc6af610d0d72843a30e3a6d844d9ba2bd800624f99133099205`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce9f0e25dafa483c12a1779e1f5d59de6c0edfec2a274e9aee4727331a0113`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439a4f013ca0e4303273a92f2c6adeb71d309e5ec539cf4555a8ec60f060a893`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 6.6 MB (6598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011532103b9333944f76c9582f2a592aec3b333d66bd71df4607fb398d0cf512`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 87.0 KB (86975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a512236d997aa4b534c4f329a22a90760a4f5414c2c2882b0b4d1e9f8e6581d0`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76ec8bfe90a3ac82472f200ec7565e878f901bf590fb95c8e9338d36530fe3e`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 64.2 MB (64233117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa03f66de40e2b554187eb333b02f14abf520b3fcab970a778113113fdab11b5`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0241dd7b7777fb1f174a8d05d36e0844eaf0debaa752c4c965cc782993e5abcd`  
		Last Modified: Fri, 26 Jun 2026 20:09:03 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6` - unknown; unknown

```console
$ docker pull docker@sha256:b0858646b4d5fa1d62b83277ae7eef9b57f0eebc11d23484f88085e1b625e233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b7720c518d82646ddd0340d261248d1882f0ceecd89f601ddd6464c4c82f21`

```dockerfile
```

-	Layers:
	-	`sha256:5106509e47d28570c6579dbb59a5e76b3139abb37b67ca387cee73dba38c00ab`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8a370e65c039a98b80ea802d55a3045c05d0d21921e7e547bfa20cb945f2a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131350673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80c6b7dd645a610d4754c8e586d240f358e4ff6cc0802571b9318af96a9c324`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:42 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:42 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e7b7f7c3f4d6179fee0cd18c832b93bb7d412938076e09926798c894b1e870`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 7.2 MB (7240483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe0a609f7f49f5ccf70c6712472dc07c629e0114d6103f5102b4edec75a966`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 100.0 KB (99950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa2612640a67bffdba6b2de15bee17e1f3554fab495307c2eb31c722920020`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd80cad6104c5f657e5582ea0c09f7f8c62bcde68bb1e7964c9c21ec0d8bfeb`  
		Last Modified: Fri, 26 Jun 2026 20:09:54 GMT  
		Size: 62.6 MB (62574293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75843d6b9c9d05f0c0cd271f3c838fe43b9d98abda3603a5fdd6d567d686840`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571f5b27af7ee8767453fb806ee10936f9c71f41b92b2fb9df9c64cfdf7e9e68`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6` - unknown; unknown

```console
$ docker pull docker@sha256:942eec10c0a0da7b72b77a7b973630fb45c1167f6913bd811cec56181d17ab21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749e29ecf3695d571188e5233e6a64f66ba0e159d762c623c3a6b1e56fe9a9f5`

```dockerfile
```

-	Layers:
	-	`sha256:15815c3bd67687560e6da1821000f25a70e6cf98fdca3433cbf401268fa88bd0`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 34.8 KB (34776 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.6-cli`

```console
$ docker pull docker@sha256:862099ada15c669000bef53aa4cb9d821262829f45b0dda2159ccb276443043b
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

### `docker:29.6-cli` - linux; amd64

```console
$ docker pull docker@sha256:a011361b7e7dbf51ba0db930a7b746a0bb80935ac1b2f5d892a989025c80fab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65790677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a75857a59abadc720af7d48f3ac89272b7256ec346c22be03ebe241c6f6dc34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6-cli` - unknown; unknown

```console
$ docker pull docker@sha256:92bdc3281f0b844bd0e84c3bfef3bf1231a79dc559a335bb36c7a332dece828c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c28cc930ad0986d9cede5eb02a6ce0976049de8a11d46503812e586899b630`

```dockerfile
```

-	Layers:
	-	`sha256:4a0bc992b60a504b92b71f8aa85d9c87c1eb5e66e91322105dcbde26f835b4c6`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:b7ef782591ebdb6dfcffce08eaa7b80ac765eb006cdbc42449769d7dc05b2e8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62067149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16849351abcbee1c9ccd6f356f9fc99c4f860d9f578fe9b0d12c324ab0a8c347`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db8b3b4e2357c4319897e1c52e2bda57c756cc30d1f9addaec6177e3e8c73`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 8.1 MB (8070144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eb064fda214a05c740e04415c08a3857ae6ffb0098b2a53248015ec027b34f`  
		Last Modified: Fri, 26 Jun 2026 19:14:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf52f8cf526c2ca5314adaf58b11db5f978f40033c35d011ae8a865ff44f05`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 18.1 MB (18080654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747d01e616647b152c48f96979cd7f98f0aa02da0a8d515b0256bc59c765487`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 21.7 MB (21652826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1580053038b0973908da90b76095afe32480ac248503de5b85273b1fe43a51`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 10.7 MB (10707921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48e796053f3d575cf35709fc741fbc702e65b7b39f9045deae47a1960a13d23`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0a59b79942b3637400842a4f60c7a9186b694a69f391c8d2d2da312c56c72`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa42d7f4e5e10520140c0f9069a1712cd48f679008b8c6cf6f06b7dfecec14`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6-cli` - unknown; unknown

```console
$ docker pull docker@sha256:a351980ad3031c5131f94c83475aaa895abb403c69120c3f81ebf2086cd1306c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485804550c69b9ad6fe98231b71b255cdd24dc5c96fab549d0f97703eb825554`

```dockerfile
```

-	Layers:
	-	`sha256:0891442af9876f93855b78cd35903737044c7420a9edee8dc743c00cbd219895`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:d847004ceadc208ba9ac56c691f6da26f808094246ed1ff21812718b4e83d4c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61024623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097b61b571bd924e817bf73255ed2e94a0f318a9669db20180c91d7aa59606f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:15:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:15:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:15:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73348ca386a2811c44f11895e0ce6fbb29fe2b6d5c7f400a448a27481c0c4d`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 7.4 MB (7371188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b50aff58537925905a23ce67a1fc115819edbaf2d1d7d7237d34412844420c`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac1ac344a988f0beb85bc6c5966d457b6859344894d711cd2279e5f75c4b63`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 18.1 MB (18061099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc84213c592aa5f4838bccc8e7cb8b6a766cd4604162fd18994ac70c63fa1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 21.6 MB (21635982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6342a153c33bb2a76526621dc3a99ba4089ec9f110edd39658b2c519df33c51`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 10.7 MB (10693590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96813c6dc7b4b75681f43117d254f06619c1aed25b092f3ea927429704dba6e`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfdc15d2b4dc6af610d0d72843a30e3a6d844d9ba2bd800624f99133099205`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce9f0e25dafa483c12a1779e1f5d59de6c0edfec2a274e9aee4727331a0113`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6-cli` - unknown; unknown

```console
$ docker pull docker@sha256:0f60cb2c4d2cd1430359ee87d407bad0056bf6b1e6d81c87d7d5606f8b03f4b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cce93c5631da2bb8ee790bccfb4e84b62b5435d0d8c0e13220cef1785513a98`

```dockerfile
```

-	Layers:
	-	`sha256:af60b0dc8de3ad37e06e6b1b3d4bbba685d201c5462c6e3c0827dd7b37738312`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:936645b07ec2facf224d96e54b15c2254739663066cf252a0bb8e94fa222bf45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61429945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4aeeabe0dc47d40fe04c980a50d6da10c3c4f6d170205a5401d2edd186700af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6-cli` - unknown; unknown

```console
$ docker pull docker@sha256:099807f6a4b1ec8d01317adf1b16fc8574d3220e1ae65009c28b5dc9a6176747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1749de21b617e727ceb335efd9a64daa8f1b12b8aa307fd1067058d2244c915`

```dockerfile
```

-	Layers:
	-	`sha256:3e6584e97eec65ee9ecbb966d19ce0436116f7c48841b630bcbb2bfbff2eb985`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 38.3 KB (38261 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.6-dind`

```console
$ docker pull docker@sha256:66d292e5c26bd33a6f6f61cacb880de2186339a524ecba1ce098dbbaceed6515
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

### `docker:29.6-dind` - linux; amd64

```console
$ docker pull docker@sha256:e800743c1d2f29578f32ae4cf0ec1e20673f64ba5e2d34588f0ee8998a34a74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142009572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a9896195077f64981b363a7b46cf6e629cdedb093d9eb6ba1b4a66c903daed`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:53 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:57 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7d3688ed3253f01a35ac9ee319f7e2f8e00280b54b9fb0e8317425077cc3f`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd57b1c0c61542f33706b9a217d7b40cf6eb469d6bbaacd592469a9f25d878d`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 91.3 KB (91334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23011a9e0c5e9ba4ee856dbcf7c1d1926164009df6881ce03a59b65c1b9b6b0`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34defd136645fb282a3ec960a7f5e19a39dda5397932292252eddf6e931dd56`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 69.2 MB (69156332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d9f738aebeb26d0a87e7aa43f5e33eb6d26bcb05c5c1d726318c3c6d70b019`  
		Last Modified: Fri, 26 Jun 2026 20:10:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc014cc1384a4e34fd5f897abd97bf89e74dceb24ba98a1a236890061c23a4a8`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6-dind` - unknown; unknown

```console
$ docker pull docker@sha256:f29d3ae24e5b229968e8c5764b492b6293d6bf80137ba4076122fa967c4da5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95a4b745d705a04fae2def0d4abaf0463179158329ecf5859b3abc32e1b7704`

```dockerfile
```

-	Layers:
	-	`sha256:3a7f99d3ab2db50a6083758533cee68e92aef2bb60afc9ddf281ccbd61c2b8c4`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:bdedb15bddfc81021485c850f7d37bef40e515c456da4635b736863f3976b9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133873009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f202efb69b8fd9fa6f6a0abfd316447ce1d0a32654abb7cc738e944e0a2a1f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:51 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:34 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:34 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db8b3b4e2357c4319897e1c52e2bda57c756cc30d1f9addaec6177e3e8c73`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 8.1 MB (8070144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eb064fda214a05c740e04415c08a3857ae6ffb0098b2a53248015ec027b34f`  
		Last Modified: Fri, 26 Jun 2026 19:14:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf52f8cf526c2ca5314adaf58b11db5f978f40033c35d011ae8a865ff44f05`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 18.1 MB (18080654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747d01e616647b152c48f96979cd7f98f0aa02da0a8d515b0256bc59c765487`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 21.7 MB (21652826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1580053038b0973908da90b76095afe32480ac248503de5b85273b1fe43a51`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 10.7 MB (10707921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48e796053f3d575cf35709fc741fbc702e65b7b39f9045deae47a1960a13d23`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0a59b79942b3637400842a4f60c7a9186b694a69f391c8d2d2da312c56c72`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa42d7f4e5e10520140c0f9069a1712cd48f679008b8c6cf6f06b7dfecec14`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7cdff279abc613b825a1a7e7a9294eb240bcc795a19a63959e21e72bf81cd1`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 7.3 MB (7304371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b87a48620f4529cf87608b466c2cacf49ee67eff228eb13d8b7e4cd016310c`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 90.7 KB (90730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32a74c2f7113a30d62e4d21d5992538f018cdd7c65f4e22dcd5ac6f5d664da`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6716f116acdde1c5b7689e3366241793935268192da4a173d5d187dedd99bcd4`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 64.4 MB (64404755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0893e143d5cdffc36db31d5413c7dc2647a158894a3cd894fda490517285c29`  
		Last Modified: Fri, 26 Jun 2026 20:09:45 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e90d067b63da99477d91ead20692760555470e8ef6c34e7b2b24cf1d803e59`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6-dind` - unknown; unknown

```console
$ docker pull docker@sha256:bf76d90141845e8dea197c7c07bb448ea5843ed3dfd0e9613db7b827fdd90b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00b3354b0e436c17adba279ce05c7b700ee4f5b72cc1d6d1301dab96630c0b2`

```dockerfile
```

-	Layers:
	-	`sha256:fa7663f13b171cf058e8f5ee7cf468070827013d6ce54d5f182b2ba7e270dc86`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:60492b3c97e991508649843d139627ad8cc4c0815101887b7b6bb23096537034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131949580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15d44f36e5060d3a7b3f58a6871bb44a2d18304368c3918c6c13a701f87ecbc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:15:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:15:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:15:00 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:08:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:08:52 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:08:52 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:08:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:08:52 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73348ca386a2811c44f11895e0ce6fbb29fe2b6d5c7f400a448a27481c0c4d`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 7.4 MB (7371188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b50aff58537925905a23ce67a1fc115819edbaf2d1d7d7237d34412844420c`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac1ac344a988f0beb85bc6c5966d457b6859344894d711cd2279e5f75c4b63`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 18.1 MB (18061099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc84213c592aa5f4838bccc8e7cb8b6a766cd4604162fd18994ac70c63fa1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 21.6 MB (21635982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6342a153c33bb2a76526621dc3a99ba4089ec9f110edd39658b2c519df33c51`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 10.7 MB (10693590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96813c6dc7b4b75681f43117d254f06619c1aed25b092f3ea927429704dba6e`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfdc15d2b4dc6af610d0d72843a30e3a6d844d9ba2bd800624f99133099205`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce9f0e25dafa483c12a1779e1f5d59de6c0edfec2a274e9aee4727331a0113`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439a4f013ca0e4303273a92f2c6adeb71d309e5ec539cf4555a8ec60f060a893`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 6.6 MB (6598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011532103b9333944f76c9582f2a592aec3b333d66bd71df4607fb398d0cf512`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 87.0 KB (86975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a512236d997aa4b534c4f329a22a90760a4f5414c2c2882b0b4d1e9f8e6581d0`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76ec8bfe90a3ac82472f200ec7565e878f901bf590fb95c8e9338d36530fe3e`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 64.2 MB (64233117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa03f66de40e2b554187eb333b02f14abf520b3fcab970a778113113fdab11b5`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0241dd7b7777fb1f174a8d05d36e0844eaf0debaa752c4c965cc782993e5abcd`  
		Last Modified: Fri, 26 Jun 2026 20:09:03 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6-dind` - unknown; unknown

```console
$ docker pull docker@sha256:b0858646b4d5fa1d62b83277ae7eef9b57f0eebc11d23484f88085e1b625e233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b7720c518d82646ddd0340d261248d1882f0ceecd89f601ddd6464c4c82f21`

```dockerfile
```

-	Layers:
	-	`sha256:5106509e47d28570c6579dbb59a5e76b3139abb37b67ca387cee73dba38c00ab`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8a370e65c039a98b80ea802d55a3045c05d0d21921e7e547bfa20cb945f2a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131350673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80c6b7dd645a610d4754c8e586d240f358e4ff6cc0802571b9318af96a9c324`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:42 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:42 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e7b7f7c3f4d6179fee0cd18c832b93bb7d412938076e09926798c894b1e870`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 7.2 MB (7240483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe0a609f7f49f5ccf70c6712472dc07c629e0114d6103f5102b4edec75a966`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 100.0 KB (99950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa2612640a67bffdba6b2de15bee17e1f3554fab495307c2eb31c722920020`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd80cad6104c5f657e5582ea0c09f7f8c62bcde68bb1e7964c9c21ec0d8bfeb`  
		Last Modified: Fri, 26 Jun 2026 20:09:54 GMT  
		Size: 62.6 MB (62574293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75843d6b9c9d05f0c0cd271f3c838fe43b9d98abda3603a5fdd6d567d686840`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571f5b27af7ee8767453fb806ee10936f9c71f41b92b2fb9df9c64cfdf7e9e68`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6-dind` - unknown; unknown

```console
$ docker pull docker@sha256:942eec10c0a0da7b72b77a7b973630fb45c1167f6913bd811cec56181d17ab21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749e29ecf3695d571188e5233e6a64f66ba0e159d762c623c3a6b1e56fe9a9f5`

```dockerfile
```

-	Layers:
	-	`sha256:15815c3bd67687560e6da1821000f25a70e6cf98fdca3433cbf401268fa88bd0`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 34.8 KB (34776 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.6-dind-rootless`

```console
$ docker pull docker@sha256:371962f4344295a1eb185f1c9e62064bf4503a7beb8c6e73be3405500041784b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.6-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:7e32ba65198ce220388cb6c45cfac60966e6dee5c7a7207510ce786648e1ca75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.6 MB (157585482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5bb5dad84091a1a6695f967bc7974bdf20759600535244123f5d8108736cdb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:53 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:57 GMT
CMD []
# Fri, 26 Jun 2026 21:10:07 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 26 Jun 2026 21:10:07 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 26 Jun 2026 21:10:07 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 21:10:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 26 Jun 2026 21:10:08 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 26 Jun 2026 21:10:08 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 26 Jun 2026 21:10:08 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7d3688ed3253f01a35ac9ee319f7e2f8e00280b54b9fb0e8317425077cc3f`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd57b1c0c61542f33706b9a217d7b40cf6eb469d6bbaacd592469a9f25d878d`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 91.3 KB (91334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23011a9e0c5e9ba4ee856dbcf7c1d1926164009df6881ce03a59b65c1b9b6b0`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34defd136645fb282a3ec960a7f5e19a39dda5397932292252eddf6e931dd56`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 69.2 MB (69156332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d9f738aebeb26d0a87e7aa43f5e33eb6d26bcb05c5c1d726318c3c6d70b019`  
		Last Modified: Fri, 26 Jun 2026 20:10:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc014cc1384a4e34fd5f897abd97bf89e74dceb24ba98a1a236890061c23a4a8`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fedeb688a134dfd96a614fb4f858bf76864d5f7a5d76fdabc5548958d7e4e4f`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 3.5 MB (3471260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c81ea3ee5cc4fdc815bbecc7e83636c9d253555108c80a3b6b3ac4637089dc`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b435a74e2da7f7cbe66f68a960273748e56884de827c9968907f52112d808d4`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd84e92bf71e4ca3fda92193af8716b7bc7a27df2eaf1d0b2e4bd572a60880be`  
		Last Modified: Fri, 26 Jun 2026 21:10:14 GMT  
		Size: 12.1 MB (12103309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65cb2266b88aba0063d5fdb6bf7d1a456e320bc4ae60522962bdee59fb7845e4`  
		Last Modified: Fri, 26 Jun 2026 21:10:14 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:60a04bf338a3905afe926941d1dfa69e1ee723f164f9be090c10270c9e21bbca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d327b13b2f4387990a6a1be787939319382ebeced88fcc57fab642794dd96b`

```dockerfile
```

-	Layers:
	-	`sha256:8943a2760cc456fd13256361ef31a0708d98769920a4b615d7c275fcb8f94adb`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5b12ac3fac58ba82cc21a388bbbd7c4e6ab734e0fd937b3083c166468bd310e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146037933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1ac82d40c6358354dff44028a97431acf35e13460ff66476fab4a66d76cd04`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:42 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:42 GMT
CMD []
# Fri, 26 Jun 2026 21:10:00 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 26 Jun 2026 21:10:00 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 26 Jun 2026 21:10:00 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 21:10:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 26 Jun 2026 21:10:01 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 26 Jun 2026 21:10:01 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 26 Jun 2026 21:10:01 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e7b7f7c3f4d6179fee0cd18c832b93bb7d412938076e09926798c894b1e870`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 7.2 MB (7240483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe0a609f7f49f5ccf70c6712472dc07c629e0114d6103f5102b4edec75a966`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 100.0 KB (99950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa2612640a67bffdba6b2de15bee17e1f3554fab495307c2eb31c722920020`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd80cad6104c5f657e5582ea0c09f7f8c62bcde68bb1e7964c9c21ec0d8bfeb`  
		Last Modified: Fri, 26 Jun 2026 20:09:54 GMT  
		Size: 62.6 MB (62574293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75843d6b9c9d05f0c0cd271f3c838fe43b9d98abda3603a5fdd6d567d686840`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571f5b27af7ee8767453fb806ee10936f9c71f41b92b2fb9df9c64cfdf7e9e68`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d78dc73bf15721c5e18393c9315ad0fd1cde93655d5dd1b22dd79c6480337c`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 3.4 MB (3448838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac68c7e2a1412e9139e86b2cd3d47f65bb122c046cd72373b4cdde640c6bde4`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940e296424552351728af90be04f9bc7331768121feb9a16968a8e5012c680ef`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816a434de8a1c5ad5bc40e0b8b54d22e2b6c5dbb2308538a24c962e0f17cfa77`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 11.2 MB (11237083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69764499e5f4c737e1e3df06b6449dd1f094d0577a91a48156e9dabb2877ebd1`  
		Last Modified: Fri, 26 Jun 2026 21:10:07 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:36d245ff3b999721594d488e19b3e5980a3b910da4484947b3fe77e303ed2175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2bb59055922667754d5649c5aba19c2b29b34bd435ea8db93ff1848d8dca10`

```dockerfile
```

-	Layers:
	-	`sha256:bf33c7b8b311be23d40353d86fd6af5aaf77cefa633818a4fe82eb77c873ccae`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.6-windowsservercore`

```console
$ docker pull docker@sha256:987caf6f2e47c9f384fe19fd22b5617110581779665d40a170753b34695692f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:29.6-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:c2b389f8cd8f11e2900d67bbacc9827f16489235e63656640d24fada8e762ad4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411561732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18049789f0008d9c3f37c8a8841127af1eba5771fe9a118eafcae58e504bc746`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:04:11 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:04:12 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:04:13 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:41 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:54 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:05:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2085c3db024288fc478fb62815fd678aad6214a4cadef12c88a10b0ae9c9e10`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39c0248b75a4ee2ef139a785aa92badfba4dc8b009e6ab4908d5ceef918ed03`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 382.1 KB (382133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69234e14e261dad77a6cf51b0eabba81dc5b3f965d5fed62bfc53c06d8a764a2`  
		Last Modified: Wed, 15 Jul 2026 23:05:17 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4539fd67326fa317750db628a2f1a4d3f5f9db73fd86c143a82bf467a32d47`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c846b5662624fd3ebfe0e3021130e8bdf7a33f0dab2b7eacbc540755b5ec51`  
		Last Modified: Wed, 15 Jul 2026 23:05:19 GMT  
		Size: 20.2 MB (20220063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425cca9457aad03f806d50fc3d834251cd234ac53ea7d666a7fff44f48733bfb`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85038b32ac498db56e754365261030c412c9b80e5a4ebb4816d8fecf747fc1f0`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99f228b2dc1ee2c7aae72c2161463b77c770632d7b9005720494fff7bd4915f`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7b534788fb6c61cc388746eb3fa65f616b4e735fd879464f59b69c2e4949b`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 23.9 MB (23944636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230bdaa6e2caa76f2b9b3b850efbc53d1495c485a8e25a9c8259ebf219016df`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45d7967f989527e856a0b6978996cd4e71c6358d2a53683d58e76a41667a50`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0823deb16c310112f9dd993e019c4763ffd60f5cf29c6b30055890a236117cff`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cdf81c4ffce0c932887e8e429e6ac7022ac9d7cd477986792e5c6c7467688`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 12.0 MB (11995157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.6-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:aeb9e3bd651814b4c9b55b662570d520cff6ce4ea5571f078d0320c1d79b2951
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214005146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84b934b73013ec7cdb7927925a7a10e5e99825ac7f9d4a9903901df8a8b6bae`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:02:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:03:46 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:03:47 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:03:48 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:05 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:07 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:26 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:27 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:04:44 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5552627ff15545aa9fdec68ddce1b24a3653c79d40f00b6e24d9e684d2d01c6b`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740e8aa81f0fb5274e4f063d5286087a65e41ac4ad7023d04821097dd1f32ee8`  
		Last Modified: Wed, 15 Jul 2026 23:04:53 GMT  
		Size: 476.8 KB (476847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4b0c9c42fa06c12a2965477d19454e005890d0f69e285c6fd70609987f0207`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3170927173373a955b2508380e29fd3b37a569fcd88bb757f1a2cfd1a9f7748`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c7eaa6a002e395c317fb7d998adf9243dfe2d6e0d014ad26e02aac0b6e82ee`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 20.1 MB (20092616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb52de32b635f2469a9591923d0b0339c32ed722a9e4dc56cbe77e76660e97a1`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb55b45b542e4f9d2f7de0dc787d2509cb4d3c3f0882cee01930f160ddaabe72`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1701a018adb739a0a4e29a9a8912fce71a5c9d4008fa92564c9c7a2928ac5fc4`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69728994b71846d2c478e3dc7368210e15268b588c22215bcd32308ad322e669`  
		Last Modified: Wed, 15 Jul 2026 23:04:56 GMT  
		Size: 23.9 MB (23913034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f9592843c383938cff645f97327f5f787098d0adfb6def0c6163ddbd233531`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d83fae979d85e9ab95e8fb1bdef481afb9be557c750459160629edb571e592`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbcb5371aee095d566dfc6237460f871409383a729e2005e25daac9973b0f8a`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d58224bf719f0162345746dfb24a7bbca8796e75db741bf8b2edf17071efa4c`  
		Last Modified: Wed, 15 Jul 2026 23:04:51 GMT  
		Size: 12.0 MB (11957735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.6-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:a29deb3372e442655c9e3913011579238eaca2953befe5ce6b9bd888d8ff5cdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:29.6-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:aeb9e3bd651814b4c9b55b662570d520cff6ce4ea5571f078d0320c1d79b2951
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214005146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84b934b73013ec7cdb7927925a7a10e5e99825ac7f9d4a9903901df8a8b6bae`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:02:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:03:46 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:03:47 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:03:48 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:05 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:07 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:26 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:27 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:04:44 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5552627ff15545aa9fdec68ddce1b24a3653c79d40f00b6e24d9e684d2d01c6b`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740e8aa81f0fb5274e4f063d5286087a65e41ac4ad7023d04821097dd1f32ee8`  
		Last Modified: Wed, 15 Jul 2026 23:04:53 GMT  
		Size: 476.8 KB (476847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4b0c9c42fa06c12a2965477d19454e005890d0f69e285c6fd70609987f0207`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3170927173373a955b2508380e29fd3b37a569fcd88bb757f1a2cfd1a9f7748`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c7eaa6a002e395c317fb7d998adf9243dfe2d6e0d014ad26e02aac0b6e82ee`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 20.1 MB (20092616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb52de32b635f2469a9591923d0b0339c32ed722a9e4dc56cbe77e76660e97a1`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb55b45b542e4f9d2f7de0dc787d2509cb4d3c3f0882cee01930f160ddaabe72`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1701a018adb739a0a4e29a9a8912fce71a5c9d4008fa92564c9c7a2928ac5fc4`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69728994b71846d2c478e3dc7368210e15268b588c22215bcd32308ad322e669`  
		Last Modified: Wed, 15 Jul 2026 23:04:56 GMT  
		Size: 23.9 MB (23913034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f9592843c383938cff645f97327f5f787098d0adfb6def0c6163ddbd233531`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d83fae979d85e9ab95e8fb1bdef481afb9be557c750459160629edb571e592`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbcb5371aee095d566dfc6237460f871409383a729e2005e25daac9973b0f8a`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d58224bf719f0162345746dfb24a7bbca8796e75db741bf8b2edf17071efa4c`  
		Last Modified: Wed, 15 Jul 2026 23:04:51 GMT  
		Size: 12.0 MB (11957735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.6-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:1dfd87c41615b541fc4f37949a0ce36d912f25e283496ecd7372b83897b656c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:29.6-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:c2b389f8cd8f11e2900d67bbacc9827f16489235e63656640d24fada8e762ad4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411561732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18049789f0008d9c3f37c8a8841127af1eba5771fe9a118eafcae58e504bc746`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:04:11 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:04:12 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:04:13 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:41 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:54 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:05:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2085c3db024288fc478fb62815fd678aad6214a4cadef12c88a10b0ae9c9e10`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39c0248b75a4ee2ef139a785aa92badfba4dc8b009e6ab4908d5ceef918ed03`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 382.1 KB (382133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69234e14e261dad77a6cf51b0eabba81dc5b3f965d5fed62bfc53c06d8a764a2`  
		Last Modified: Wed, 15 Jul 2026 23:05:17 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4539fd67326fa317750db628a2f1a4d3f5f9db73fd86c143a82bf467a32d47`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c846b5662624fd3ebfe0e3021130e8bdf7a33f0dab2b7eacbc540755b5ec51`  
		Last Modified: Wed, 15 Jul 2026 23:05:19 GMT  
		Size: 20.2 MB (20220063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425cca9457aad03f806d50fc3d834251cd234ac53ea7d666a7fff44f48733bfb`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85038b32ac498db56e754365261030c412c9b80e5a4ebb4816d8fecf747fc1f0`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99f228b2dc1ee2c7aae72c2161463b77c770632d7b9005720494fff7bd4915f`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7b534788fb6c61cc388746eb3fa65f616b4e735fd879464f59b69c2e4949b`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 23.9 MB (23944636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230bdaa6e2caa76f2b9b3b850efbc53d1495c485a8e25a9c8259ebf219016df`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45d7967f989527e856a0b6978996cd4e71c6358d2a53683d58e76a41667a50`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0823deb16c310112f9dd993e019c4763ffd60f5cf29c6b30055890a236117cff`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cdf81c4ffce0c932887e8e429e6ac7022ac9d7cd477986792e5c6c7467688`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 12.0 MB (11995157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.6.1`

```console
$ docker pull docker@sha256:66d292e5c26bd33a6f6f61cacb880de2186339a524ecba1ce098dbbaceed6515
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

### `docker:29.6.1` - linux; amd64

```console
$ docker pull docker@sha256:e800743c1d2f29578f32ae4cf0ec1e20673f64ba5e2d34588f0ee8998a34a74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142009572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a9896195077f64981b363a7b46cf6e629cdedb093d9eb6ba1b4a66c903daed`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:53 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:57 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7d3688ed3253f01a35ac9ee319f7e2f8e00280b54b9fb0e8317425077cc3f`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd57b1c0c61542f33706b9a217d7b40cf6eb469d6bbaacd592469a9f25d878d`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 91.3 KB (91334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23011a9e0c5e9ba4ee856dbcf7c1d1926164009df6881ce03a59b65c1b9b6b0`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34defd136645fb282a3ec960a7f5e19a39dda5397932292252eddf6e931dd56`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 69.2 MB (69156332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d9f738aebeb26d0a87e7aa43f5e33eb6d26bcb05c5c1d726318c3c6d70b019`  
		Last Modified: Fri, 26 Jun 2026 20:10:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc014cc1384a4e34fd5f897abd97bf89e74dceb24ba98a1a236890061c23a4a8`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1` - unknown; unknown

```console
$ docker pull docker@sha256:f29d3ae24e5b229968e8c5764b492b6293d6bf80137ba4076122fa967c4da5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95a4b745d705a04fae2def0d4abaf0463179158329ecf5859b3abc32e1b7704`

```dockerfile
```

-	Layers:
	-	`sha256:3a7f99d3ab2db50a6083758533cee68e92aef2bb60afc9ddf281ccbd61c2b8c4`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1` - linux; arm variant v6

```console
$ docker pull docker@sha256:bdedb15bddfc81021485c850f7d37bef40e515c456da4635b736863f3976b9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133873009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f202efb69b8fd9fa6f6a0abfd316447ce1d0a32654abb7cc738e944e0a2a1f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:51 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:34 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:34 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db8b3b4e2357c4319897e1c52e2bda57c756cc30d1f9addaec6177e3e8c73`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 8.1 MB (8070144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eb064fda214a05c740e04415c08a3857ae6ffb0098b2a53248015ec027b34f`  
		Last Modified: Fri, 26 Jun 2026 19:14:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf52f8cf526c2ca5314adaf58b11db5f978f40033c35d011ae8a865ff44f05`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 18.1 MB (18080654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747d01e616647b152c48f96979cd7f98f0aa02da0a8d515b0256bc59c765487`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 21.7 MB (21652826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1580053038b0973908da90b76095afe32480ac248503de5b85273b1fe43a51`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 10.7 MB (10707921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48e796053f3d575cf35709fc741fbc702e65b7b39f9045deae47a1960a13d23`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0a59b79942b3637400842a4f60c7a9186b694a69f391c8d2d2da312c56c72`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa42d7f4e5e10520140c0f9069a1712cd48f679008b8c6cf6f06b7dfecec14`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7cdff279abc613b825a1a7e7a9294eb240bcc795a19a63959e21e72bf81cd1`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 7.3 MB (7304371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b87a48620f4529cf87608b466c2cacf49ee67eff228eb13d8b7e4cd016310c`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 90.7 KB (90730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32a74c2f7113a30d62e4d21d5992538f018cdd7c65f4e22dcd5ac6f5d664da`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6716f116acdde1c5b7689e3366241793935268192da4a173d5d187dedd99bcd4`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 64.4 MB (64404755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0893e143d5cdffc36db31d5413c7dc2647a158894a3cd894fda490517285c29`  
		Last Modified: Fri, 26 Jun 2026 20:09:45 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e90d067b63da99477d91ead20692760555470e8ef6c34e7b2b24cf1d803e59`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1` - unknown; unknown

```console
$ docker pull docker@sha256:bf76d90141845e8dea197c7c07bb448ea5843ed3dfd0e9613db7b827fdd90b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00b3354b0e436c17adba279ce05c7b700ee4f5b72cc1d6d1301dab96630c0b2`

```dockerfile
```

-	Layers:
	-	`sha256:fa7663f13b171cf058e8f5ee7cf468070827013d6ce54d5f182b2ba7e270dc86`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1` - linux; arm variant v7

```console
$ docker pull docker@sha256:60492b3c97e991508649843d139627ad8cc4c0815101887b7b6bb23096537034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131949580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15d44f36e5060d3a7b3f58a6871bb44a2d18304368c3918c6c13a701f87ecbc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:15:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:15:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:15:00 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:08:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:08:52 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:08:52 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:08:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:08:52 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73348ca386a2811c44f11895e0ce6fbb29fe2b6d5c7f400a448a27481c0c4d`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 7.4 MB (7371188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b50aff58537925905a23ce67a1fc115819edbaf2d1d7d7237d34412844420c`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac1ac344a988f0beb85bc6c5966d457b6859344894d711cd2279e5f75c4b63`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 18.1 MB (18061099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc84213c592aa5f4838bccc8e7cb8b6a766cd4604162fd18994ac70c63fa1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 21.6 MB (21635982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6342a153c33bb2a76526621dc3a99ba4089ec9f110edd39658b2c519df33c51`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 10.7 MB (10693590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96813c6dc7b4b75681f43117d254f06619c1aed25b092f3ea927429704dba6e`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfdc15d2b4dc6af610d0d72843a30e3a6d844d9ba2bd800624f99133099205`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce9f0e25dafa483c12a1779e1f5d59de6c0edfec2a274e9aee4727331a0113`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439a4f013ca0e4303273a92f2c6adeb71d309e5ec539cf4555a8ec60f060a893`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 6.6 MB (6598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011532103b9333944f76c9582f2a592aec3b333d66bd71df4607fb398d0cf512`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 87.0 KB (86975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a512236d997aa4b534c4f329a22a90760a4f5414c2c2882b0b4d1e9f8e6581d0`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76ec8bfe90a3ac82472f200ec7565e878f901bf590fb95c8e9338d36530fe3e`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 64.2 MB (64233117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa03f66de40e2b554187eb333b02f14abf520b3fcab970a778113113fdab11b5`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0241dd7b7777fb1f174a8d05d36e0844eaf0debaa752c4c965cc782993e5abcd`  
		Last Modified: Fri, 26 Jun 2026 20:09:03 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1` - unknown; unknown

```console
$ docker pull docker@sha256:b0858646b4d5fa1d62b83277ae7eef9b57f0eebc11d23484f88085e1b625e233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b7720c518d82646ddd0340d261248d1882f0ceecd89f601ddd6464c4c82f21`

```dockerfile
```

-	Layers:
	-	`sha256:5106509e47d28570c6579dbb59a5e76b3139abb37b67ca387cee73dba38c00ab`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8a370e65c039a98b80ea802d55a3045c05d0d21921e7e547bfa20cb945f2a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131350673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80c6b7dd645a610d4754c8e586d240f358e4ff6cc0802571b9318af96a9c324`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:42 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:42 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e7b7f7c3f4d6179fee0cd18c832b93bb7d412938076e09926798c894b1e870`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 7.2 MB (7240483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe0a609f7f49f5ccf70c6712472dc07c629e0114d6103f5102b4edec75a966`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 100.0 KB (99950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa2612640a67bffdba6b2de15bee17e1f3554fab495307c2eb31c722920020`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd80cad6104c5f657e5582ea0c09f7f8c62bcde68bb1e7964c9c21ec0d8bfeb`  
		Last Modified: Fri, 26 Jun 2026 20:09:54 GMT  
		Size: 62.6 MB (62574293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75843d6b9c9d05f0c0cd271f3c838fe43b9d98abda3603a5fdd6d567d686840`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571f5b27af7ee8767453fb806ee10936f9c71f41b92b2fb9df9c64cfdf7e9e68`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1` - unknown; unknown

```console
$ docker pull docker@sha256:942eec10c0a0da7b72b77a7b973630fb45c1167f6913bd811cec56181d17ab21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749e29ecf3695d571188e5233e6a64f66ba0e159d762c623c3a6b1e56fe9a9f5`

```dockerfile
```

-	Layers:
	-	`sha256:15815c3bd67687560e6da1821000f25a70e6cf98fdca3433cbf401268fa88bd0`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 34.8 KB (34776 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.6.1-alpine3.24`

```console
$ docker pull docker@sha256:66d292e5c26bd33a6f6f61cacb880de2186339a524ecba1ce098dbbaceed6515
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

### `docker:29.6.1-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:e800743c1d2f29578f32ae4cf0ec1e20673f64ba5e2d34588f0ee8998a34a74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142009572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a9896195077f64981b363a7b46cf6e629cdedb093d9eb6ba1b4a66c903daed`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:53 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:57 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7d3688ed3253f01a35ac9ee319f7e2f8e00280b54b9fb0e8317425077cc3f`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd57b1c0c61542f33706b9a217d7b40cf6eb469d6bbaacd592469a9f25d878d`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 91.3 KB (91334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23011a9e0c5e9ba4ee856dbcf7c1d1926164009df6881ce03a59b65c1b9b6b0`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34defd136645fb282a3ec960a7f5e19a39dda5397932292252eddf6e931dd56`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 69.2 MB (69156332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d9f738aebeb26d0a87e7aa43f5e33eb6d26bcb05c5c1d726318c3c6d70b019`  
		Last Modified: Fri, 26 Jun 2026 20:10:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc014cc1384a4e34fd5f897abd97bf89e74dceb24ba98a1a236890061c23a4a8`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:f29d3ae24e5b229968e8c5764b492b6293d6bf80137ba4076122fa967c4da5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95a4b745d705a04fae2def0d4abaf0463179158329ecf5859b3abc32e1b7704`

```dockerfile
```

-	Layers:
	-	`sha256:3a7f99d3ab2db50a6083758533cee68e92aef2bb60afc9ddf281ccbd61c2b8c4`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:bdedb15bddfc81021485c850f7d37bef40e515c456da4635b736863f3976b9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133873009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f202efb69b8fd9fa6f6a0abfd316447ce1d0a32654abb7cc738e944e0a2a1f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:51 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:34 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:34 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db8b3b4e2357c4319897e1c52e2bda57c756cc30d1f9addaec6177e3e8c73`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 8.1 MB (8070144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eb064fda214a05c740e04415c08a3857ae6ffb0098b2a53248015ec027b34f`  
		Last Modified: Fri, 26 Jun 2026 19:14:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf52f8cf526c2ca5314adaf58b11db5f978f40033c35d011ae8a865ff44f05`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 18.1 MB (18080654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747d01e616647b152c48f96979cd7f98f0aa02da0a8d515b0256bc59c765487`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 21.7 MB (21652826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1580053038b0973908da90b76095afe32480ac248503de5b85273b1fe43a51`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 10.7 MB (10707921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48e796053f3d575cf35709fc741fbc702e65b7b39f9045deae47a1960a13d23`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0a59b79942b3637400842a4f60c7a9186b694a69f391c8d2d2da312c56c72`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa42d7f4e5e10520140c0f9069a1712cd48f679008b8c6cf6f06b7dfecec14`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7cdff279abc613b825a1a7e7a9294eb240bcc795a19a63959e21e72bf81cd1`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 7.3 MB (7304371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b87a48620f4529cf87608b466c2cacf49ee67eff228eb13d8b7e4cd016310c`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 90.7 KB (90730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32a74c2f7113a30d62e4d21d5992538f018cdd7c65f4e22dcd5ac6f5d664da`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6716f116acdde1c5b7689e3366241793935268192da4a173d5d187dedd99bcd4`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 64.4 MB (64404755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0893e143d5cdffc36db31d5413c7dc2647a158894a3cd894fda490517285c29`  
		Last Modified: Fri, 26 Jun 2026 20:09:45 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e90d067b63da99477d91ead20692760555470e8ef6c34e7b2b24cf1d803e59`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:bf76d90141845e8dea197c7c07bb448ea5843ed3dfd0e9613db7b827fdd90b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00b3354b0e436c17adba279ce05c7b700ee4f5b72cc1d6d1301dab96630c0b2`

```dockerfile
```

-	Layers:
	-	`sha256:fa7663f13b171cf058e8f5ee7cf468070827013d6ce54d5f182b2ba7e270dc86`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:60492b3c97e991508649843d139627ad8cc4c0815101887b7b6bb23096537034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131949580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15d44f36e5060d3a7b3f58a6871bb44a2d18304368c3918c6c13a701f87ecbc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:15:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:15:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:15:00 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:08:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:08:52 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:08:52 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:08:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:08:52 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73348ca386a2811c44f11895e0ce6fbb29fe2b6d5c7f400a448a27481c0c4d`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 7.4 MB (7371188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b50aff58537925905a23ce67a1fc115819edbaf2d1d7d7237d34412844420c`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac1ac344a988f0beb85bc6c5966d457b6859344894d711cd2279e5f75c4b63`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 18.1 MB (18061099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc84213c592aa5f4838bccc8e7cb8b6a766cd4604162fd18994ac70c63fa1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 21.6 MB (21635982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6342a153c33bb2a76526621dc3a99ba4089ec9f110edd39658b2c519df33c51`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 10.7 MB (10693590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96813c6dc7b4b75681f43117d254f06619c1aed25b092f3ea927429704dba6e`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfdc15d2b4dc6af610d0d72843a30e3a6d844d9ba2bd800624f99133099205`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce9f0e25dafa483c12a1779e1f5d59de6c0edfec2a274e9aee4727331a0113`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439a4f013ca0e4303273a92f2c6adeb71d309e5ec539cf4555a8ec60f060a893`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 6.6 MB (6598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011532103b9333944f76c9582f2a592aec3b333d66bd71df4607fb398d0cf512`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 87.0 KB (86975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a512236d997aa4b534c4f329a22a90760a4f5414c2c2882b0b4d1e9f8e6581d0`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76ec8bfe90a3ac82472f200ec7565e878f901bf590fb95c8e9338d36530fe3e`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 64.2 MB (64233117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa03f66de40e2b554187eb333b02f14abf520b3fcab970a778113113fdab11b5`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0241dd7b7777fb1f174a8d05d36e0844eaf0debaa752c4c965cc782993e5abcd`  
		Last Modified: Fri, 26 Jun 2026 20:09:03 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:b0858646b4d5fa1d62b83277ae7eef9b57f0eebc11d23484f88085e1b625e233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b7720c518d82646ddd0340d261248d1882f0ceecd89f601ddd6464c4c82f21`

```dockerfile
```

-	Layers:
	-	`sha256:5106509e47d28570c6579dbb59a5e76b3139abb37b67ca387cee73dba38c00ab`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8a370e65c039a98b80ea802d55a3045c05d0d21921e7e547bfa20cb945f2a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131350673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80c6b7dd645a610d4754c8e586d240f358e4ff6cc0802571b9318af96a9c324`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:42 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:42 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e7b7f7c3f4d6179fee0cd18c832b93bb7d412938076e09926798c894b1e870`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 7.2 MB (7240483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe0a609f7f49f5ccf70c6712472dc07c629e0114d6103f5102b4edec75a966`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 100.0 KB (99950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa2612640a67bffdba6b2de15bee17e1f3554fab495307c2eb31c722920020`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd80cad6104c5f657e5582ea0c09f7f8c62bcde68bb1e7964c9c21ec0d8bfeb`  
		Last Modified: Fri, 26 Jun 2026 20:09:54 GMT  
		Size: 62.6 MB (62574293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75843d6b9c9d05f0c0cd271f3c838fe43b9d98abda3603a5fdd6d567d686840`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571f5b27af7ee8767453fb806ee10936f9c71f41b92b2fb9df9c64cfdf7e9e68`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:942eec10c0a0da7b72b77a7b973630fb45c1167f6913bd811cec56181d17ab21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749e29ecf3695d571188e5233e6a64f66ba0e159d762c623c3a6b1e56fe9a9f5`

```dockerfile
```

-	Layers:
	-	`sha256:15815c3bd67687560e6da1821000f25a70e6cf98fdca3433cbf401268fa88bd0`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 34.8 KB (34776 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.6.1-cli`

```console
$ docker pull docker@sha256:862099ada15c669000bef53aa4cb9d821262829f45b0dda2159ccb276443043b
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

### `docker:29.6.1-cli` - linux; amd64

```console
$ docker pull docker@sha256:a011361b7e7dbf51ba0db930a7b746a0bb80935ac1b2f5d892a989025c80fab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65790677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a75857a59abadc720af7d48f3ac89272b7256ec346c22be03ebe241c6f6dc34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-cli` - unknown; unknown

```console
$ docker pull docker@sha256:92bdc3281f0b844bd0e84c3bfef3bf1231a79dc559a335bb36c7a332dece828c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c28cc930ad0986d9cede5eb02a6ce0976049de8a11d46503812e586899b630`

```dockerfile
```

-	Layers:
	-	`sha256:4a0bc992b60a504b92b71f8aa85d9c87c1eb5e66e91322105dcbde26f835b4c6`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:b7ef782591ebdb6dfcffce08eaa7b80ac765eb006cdbc42449769d7dc05b2e8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62067149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16849351abcbee1c9ccd6f356f9fc99c4f860d9f578fe9b0d12c324ab0a8c347`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db8b3b4e2357c4319897e1c52e2bda57c756cc30d1f9addaec6177e3e8c73`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 8.1 MB (8070144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eb064fda214a05c740e04415c08a3857ae6ffb0098b2a53248015ec027b34f`  
		Last Modified: Fri, 26 Jun 2026 19:14:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf52f8cf526c2ca5314adaf58b11db5f978f40033c35d011ae8a865ff44f05`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 18.1 MB (18080654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747d01e616647b152c48f96979cd7f98f0aa02da0a8d515b0256bc59c765487`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 21.7 MB (21652826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1580053038b0973908da90b76095afe32480ac248503de5b85273b1fe43a51`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 10.7 MB (10707921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48e796053f3d575cf35709fc741fbc702e65b7b39f9045deae47a1960a13d23`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0a59b79942b3637400842a4f60c7a9186b694a69f391c8d2d2da312c56c72`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa42d7f4e5e10520140c0f9069a1712cd48f679008b8c6cf6f06b7dfecec14`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-cli` - unknown; unknown

```console
$ docker pull docker@sha256:a351980ad3031c5131f94c83475aaa895abb403c69120c3f81ebf2086cd1306c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485804550c69b9ad6fe98231b71b255cdd24dc5c96fab549d0f97703eb825554`

```dockerfile
```

-	Layers:
	-	`sha256:0891442af9876f93855b78cd35903737044c7420a9edee8dc743c00cbd219895`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:d847004ceadc208ba9ac56c691f6da26f808094246ed1ff21812718b4e83d4c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61024623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097b61b571bd924e817bf73255ed2e94a0f318a9669db20180c91d7aa59606f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:15:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:15:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:15:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73348ca386a2811c44f11895e0ce6fbb29fe2b6d5c7f400a448a27481c0c4d`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 7.4 MB (7371188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b50aff58537925905a23ce67a1fc115819edbaf2d1d7d7237d34412844420c`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac1ac344a988f0beb85bc6c5966d457b6859344894d711cd2279e5f75c4b63`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 18.1 MB (18061099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc84213c592aa5f4838bccc8e7cb8b6a766cd4604162fd18994ac70c63fa1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 21.6 MB (21635982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6342a153c33bb2a76526621dc3a99ba4089ec9f110edd39658b2c519df33c51`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 10.7 MB (10693590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96813c6dc7b4b75681f43117d254f06619c1aed25b092f3ea927429704dba6e`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfdc15d2b4dc6af610d0d72843a30e3a6d844d9ba2bd800624f99133099205`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce9f0e25dafa483c12a1779e1f5d59de6c0edfec2a274e9aee4727331a0113`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-cli` - unknown; unknown

```console
$ docker pull docker@sha256:0f60cb2c4d2cd1430359ee87d407bad0056bf6b1e6d81c87d7d5606f8b03f4b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cce93c5631da2bb8ee790bccfb4e84b62b5435d0d8c0e13220cef1785513a98`

```dockerfile
```

-	Layers:
	-	`sha256:af60b0dc8de3ad37e06e6b1b3d4bbba685d201c5462c6e3c0827dd7b37738312`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:936645b07ec2facf224d96e54b15c2254739663066cf252a0bb8e94fa222bf45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61429945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4aeeabe0dc47d40fe04c980a50d6da10c3c4f6d170205a5401d2edd186700af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-cli` - unknown; unknown

```console
$ docker pull docker@sha256:099807f6a4b1ec8d01317adf1b16fc8574d3220e1ae65009c28b5dc9a6176747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1749de21b617e727ceb335efd9a64daa8f1b12b8aa307fd1067058d2244c915`

```dockerfile
```

-	Layers:
	-	`sha256:3e6584e97eec65ee9ecbb966d19ce0436116f7c48841b630bcbb2bfbff2eb985`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 38.3 KB (38261 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.6.1-cli-alpine3.24`

```console
$ docker pull docker@sha256:862099ada15c669000bef53aa4cb9d821262829f45b0dda2159ccb276443043b
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

### `docker:29.6.1-cli-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:a011361b7e7dbf51ba0db930a7b746a0bb80935ac1b2f5d892a989025c80fab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65790677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a75857a59abadc720af7d48f3ac89272b7256ec346c22be03ebe241c6f6dc34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:92bdc3281f0b844bd0e84c3bfef3bf1231a79dc559a335bb36c7a332dece828c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c28cc930ad0986d9cede5eb02a6ce0976049de8a11d46503812e586899b630`

```dockerfile
```

-	Layers:
	-	`sha256:4a0bc992b60a504b92b71f8aa85d9c87c1eb5e66e91322105dcbde26f835b4c6`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-cli-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:b7ef782591ebdb6dfcffce08eaa7b80ac765eb006cdbc42449769d7dc05b2e8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62067149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16849351abcbee1c9ccd6f356f9fc99c4f860d9f578fe9b0d12c324ab0a8c347`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db8b3b4e2357c4319897e1c52e2bda57c756cc30d1f9addaec6177e3e8c73`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 8.1 MB (8070144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eb064fda214a05c740e04415c08a3857ae6ffb0098b2a53248015ec027b34f`  
		Last Modified: Fri, 26 Jun 2026 19:14:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf52f8cf526c2ca5314adaf58b11db5f978f40033c35d011ae8a865ff44f05`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 18.1 MB (18080654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747d01e616647b152c48f96979cd7f98f0aa02da0a8d515b0256bc59c765487`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 21.7 MB (21652826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1580053038b0973908da90b76095afe32480ac248503de5b85273b1fe43a51`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 10.7 MB (10707921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48e796053f3d575cf35709fc741fbc702e65b7b39f9045deae47a1960a13d23`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0a59b79942b3637400842a4f60c7a9186b694a69f391c8d2d2da312c56c72`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa42d7f4e5e10520140c0f9069a1712cd48f679008b8c6cf6f06b7dfecec14`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:a351980ad3031c5131f94c83475aaa895abb403c69120c3f81ebf2086cd1306c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485804550c69b9ad6fe98231b71b255cdd24dc5c96fab549d0f97703eb825554`

```dockerfile
```

-	Layers:
	-	`sha256:0891442af9876f93855b78cd35903737044c7420a9edee8dc743c00cbd219895`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-cli-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:d847004ceadc208ba9ac56c691f6da26f808094246ed1ff21812718b4e83d4c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61024623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097b61b571bd924e817bf73255ed2e94a0f318a9669db20180c91d7aa59606f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:15:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:15:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:15:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73348ca386a2811c44f11895e0ce6fbb29fe2b6d5c7f400a448a27481c0c4d`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 7.4 MB (7371188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b50aff58537925905a23ce67a1fc115819edbaf2d1d7d7237d34412844420c`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac1ac344a988f0beb85bc6c5966d457b6859344894d711cd2279e5f75c4b63`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 18.1 MB (18061099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc84213c592aa5f4838bccc8e7cb8b6a766cd4604162fd18994ac70c63fa1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 21.6 MB (21635982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6342a153c33bb2a76526621dc3a99ba4089ec9f110edd39658b2c519df33c51`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 10.7 MB (10693590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96813c6dc7b4b75681f43117d254f06619c1aed25b092f3ea927429704dba6e`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfdc15d2b4dc6af610d0d72843a30e3a6d844d9ba2bd800624f99133099205`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce9f0e25dafa483c12a1779e1f5d59de6c0edfec2a274e9aee4727331a0113`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:0f60cb2c4d2cd1430359ee87d407bad0056bf6b1e6d81c87d7d5606f8b03f4b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cce93c5631da2bb8ee790bccfb4e84b62b5435d0d8c0e13220cef1785513a98`

```dockerfile
```

-	Layers:
	-	`sha256:af60b0dc8de3ad37e06e6b1b3d4bbba685d201c5462c6e3c0827dd7b37738312`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-cli-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:936645b07ec2facf224d96e54b15c2254739663066cf252a0bb8e94fa222bf45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61429945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4aeeabe0dc47d40fe04c980a50d6da10c3c4f6d170205a5401d2edd186700af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:099807f6a4b1ec8d01317adf1b16fc8574d3220e1ae65009c28b5dc9a6176747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1749de21b617e727ceb335efd9a64daa8f1b12b8aa307fd1067058d2244c915`

```dockerfile
```

-	Layers:
	-	`sha256:3e6584e97eec65ee9ecbb966d19ce0436116f7c48841b630bcbb2bfbff2eb985`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 38.3 KB (38261 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.6.1-dind`

```console
$ docker pull docker@sha256:66d292e5c26bd33a6f6f61cacb880de2186339a524ecba1ce098dbbaceed6515
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

### `docker:29.6.1-dind` - linux; amd64

```console
$ docker pull docker@sha256:e800743c1d2f29578f32ae4cf0ec1e20673f64ba5e2d34588f0ee8998a34a74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142009572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a9896195077f64981b363a7b46cf6e629cdedb093d9eb6ba1b4a66c903daed`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:53 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:57 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7d3688ed3253f01a35ac9ee319f7e2f8e00280b54b9fb0e8317425077cc3f`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd57b1c0c61542f33706b9a217d7b40cf6eb469d6bbaacd592469a9f25d878d`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 91.3 KB (91334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23011a9e0c5e9ba4ee856dbcf7c1d1926164009df6881ce03a59b65c1b9b6b0`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34defd136645fb282a3ec960a7f5e19a39dda5397932292252eddf6e931dd56`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 69.2 MB (69156332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d9f738aebeb26d0a87e7aa43f5e33eb6d26bcb05c5c1d726318c3c6d70b019`  
		Last Modified: Fri, 26 Jun 2026 20:10:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc014cc1384a4e34fd5f897abd97bf89e74dceb24ba98a1a236890061c23a4a8`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-dind` - unknown; unknown

```console
$ docker pull docker@sha256:f29d3ae24e5b229968e8c5764b492b6293d6bf80137ba4076122fa967c4da5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95a4b745d705a04fae2def0d4abaf0463179158329ecf5859b3abc32e1b7704`

```dockerfile
```

-	Layers:
	-	`sha256:3a7f99d3ab2db50a6083758533cee68e92aef2bb60afc9ddf281ccbd61c2b8c4`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:bdedb15bddfc81021485c850f7d37bef40e515c456da4635b736863f3976b9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133873009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f202efb69b8fd9fa6f6a0abfd316447ce1d0a32654abb7cc738e944e0a2a1f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:51 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:34 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:34 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db8b3b4e2357c4319897e1c52e2bda57c756cc30d1f9addaec6177e3e8c73`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 8.1 MB (8070144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eb064fda214a05c740e04415c08a3857ae6ffb0098b2a53248015ec027b34f`  
		Last Modified: Fri, 26 Jun 2026 19:14:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf52f8cf526c2ca5314adaf58b11db5f978f40033c35d011ae8a865ff44f05`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 18.1 MB (18080654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747d01e616647b152c48f96979cd7f98f0aa02da0a8d515b0256bc59c765487`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 21.7 MB (21652826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1580053038b0973908da90b76095afe32480ac248503de5b85273b1fe43a51`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 10.7 MB (10707921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48e796053f3d575cf35709fc741fbc702e65b7b39f9045deae47a1960a13d23`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0a59b79942b3637400842a4f60c7a9186b694a69f391c8d2d2da312c56c72`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa42d7f4e5e10520140c0f9069a1712cd48f679008b8c6cf6f06b7dfecec14`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7cdff279abc613b825a1a7e7a9294eb240bcc795a19a63959e21e72bf81cd1`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 7.3 MB (7304371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b87a48620f4529cf87608b466c2cacf49ee67eff228eb13d8b7e4cd016310c`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 90.7 KB (90730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32a74c2f7113a30d62e4d21d5992538f018cdd7c65f4e22dcd5ac6f5d664da`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6716f116acdde1c5b7689e3366241793935268192da4a173d5d187dedd99bcd4`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 64.4 MB (64404755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0893e143d5cdffc36db31d5413c7dc2647a158894a3cd894fda490517285c29`  
		Last Modified: Fri, 26 Jun 2026 20:09:45 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e90d067b63da99477d91ead20692760555470e8ef6c34e7b2b24cf1d803e59`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-dind` - unknown; unknown

```console
$ docker pull docker@sha256:bf76d90141845e8dea197c7c07bb448ea5843ed3dfd0e9613db7b827fdd90b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00b3354b0e436c17adba279ce05c7b700ee4f5b72cc1d6d1301dab96630c0b2`

```dockerfile
```

-	Layers:
	-	`sha256:fa7663f13b171cf058e8f5ee7cf468070827013d6ce54d5f182b2ba7e270dc86`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:60492b3c97e991508649843d139627ad8cc4c0815101887b7b6bb23096537034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131949580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15d44f36e5060d3a7b3f58a6871bb44a2d18304368c3918c6c13a701f87ecbc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:15:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:15:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:15:00 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:08:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:08:52 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:08:52 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:08:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:08:52 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73348ca386a2811c44f11895e0ce6fbb29fe2b6d5c7f400a448a27481c0c4d`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 7.4 MB (7371188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b50aff58537925905a23ce67a1fc115819edbaf2d1d7d7237d34412844420c`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac1ac344a988f0beb85bc6c5966d457b6859344894d711cd2279e5f75c4b63`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 18.1 MB (18061099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc84213c592aa5f4838bccc8e7cb8b6a766cd4604162fd18994ac70c63fa1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 21.6 MB (21635982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6342a153c33bb2a76526621dc3a99ba4089ec9f110edd39658b2c519df33c51`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 10.7 MB (10693590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96813c6dc7b4b75681f43117d254f06619c1aed25b092f3ea927429704dba6e`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfdc15d2b4dc6af610d0d72843a30e3a6d844d9ba2bd800624f99133099205`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce9f0e25dafa483c12a1779e1f5d59de6c0edfec2a274e9aee4727331a0113`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439a4f013ca0e4303273a92f2c6adeb71d309e5ec539cf4555a8ec60f060a893`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 6.6 MB (6598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011532103b9333944f76c9582f2a592aec3b333d66bd71df4607fb398d0cf512`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 87.0 KB (86975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a512236d997aa4b534c4f329a22a90760a4f5414c2c2882b0b4d1e9f8e6581d0`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76ec8bfe90a3ac82472f200ec7565e878f901bf590fb95c8e9338d36530fe3e`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 64.2 MB (64233117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa03f66de40e2b554187eb333b02f14abf520b3fcab970a778113113fdab11b5`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0241dd7b7777fb1f174a8d05d36e0844eaf0debaa752c4c965cc782993e5abcd`  
		Last Modified: Fri, 26 Jun 2026 20:09:03 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-dind` - unknown; unknown

```console
$ docker pull docker@sha256:b0858646b4d5fa1d62b83277ae7eef9b57f0eebc11d23484f88085e1b625e233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b7720c518d82646ddd0340d261248d1882f0ceecd89f601ddd6464c4c82f21`

```dockerfile
```

-	Layers:
	-	`sha256:5106509e47d28570c6579dbb59a5e76b3139abb37b67ca387cee73dba38c00ab`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8a370e65c039a98b80ea802d55a3045c05d0d21921e7e547bfa20cb945f2a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131350673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80c6b7dd645a610d4754c8e586d240f358e4ff6cc0802571b9318af96a9c324`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:42 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:42 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e7b7f7c3f4d6179fee0cd18c832b93bb7d412938076e09926798c894b1e870`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 7.2 MB (7240483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe0a609f7f49f5ccf70c6712472dc07c629e0114d6103f5102b4edec75a966`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 100.0 KB (99950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa2612640a67bffdba6b2de15bee17e1f3554fab495307c2eb31c722920020`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd80cad6104c5f657e5582ea0c09f7f8c62bcde68bb1e7964c9c21ec0d8bfeb`  
		Last Modified: Fri, 26 Jun 2026 20:09:54 GMT  
		Size: 62.6 MB (62574293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75843d6b9c9d05f0c0cd271f3c838fe43b9d98abda3603a5fdd6d567d686840`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571f5b27af7ee8767453fb806ee10936f9c71f41b92b2fb9df9c64cfdf7e9e68`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-dind` - unknown; unknown

```console
$ docker pull docker@sha256:942eec10c0a0da7b72b77a7b973630fb45c1167f6913bd811cec56181d17ab21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749e29ecf3695d571188e5233e6a64f66ba0e159d762c623c3a6b1e56fe9a9f5`

```dockerfile
```

-	Layers:
	-	`sha256:15815c3bd67687560e6da1821000f25a70e6cf98fdca3433cbf401268fa88bd0`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 34.8 KB (34776 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.6.1-dind-alpine3.24`

```console
$ docker pull docker@sha256:66d292e5c26bd33a6f6f61cacb880de2186339a524ecba1ce098dbbaceed6515
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

### `docker:29.6.1-dind-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:e800743c1d2f29578f32ae4cf0ec1e20673f64ba5e2d34588f0ee8998a34a74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142009572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a9896195077f64981b363a7b46cf6e629cdedb093d9eb6ba1b4a66c903daed`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:53 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:57 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7d3688ed3253f01a35ac9ee319f7e2f8e00280b54b9fb0e8317425077cc3f`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd57b1c0c61542f33706b9a217d7b40cf6eb469d6bbaacd592469a9f25d878d`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 91.3 KB (91334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23011a9e0c5e9ba4ee856dbcf7c1d1926164009df6881ce03a59b65c1b9b6b0`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34defd136645fb282a3ec960a7f5e19a39dda5397932292252eddf6e931dd56`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 69.2 MB (69156332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d9f738aebeb26d0a87e7aa43f5e33eb6d26bcb05c5c1d726318c3c6d70b019`  
		Last Modified: Fri, 26 Jun 2026 20:10:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc014cc1384a4e34fd5f897abd97bf89e74dceb24ba98a1a236890061c23a4a8`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:f29d3ae24e5b229968e8c5764b492b6293d6bf80137ba4076122fa967c4da5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95a4b745d705a04fae2def0d4abaf0463179158329ecf5859b3abc32e1b7704`

```dockerfile
```

-	Layers:
	-	`sha256:3a7f99d3ab2db50a6083758533cee68e92aef2bb60afc9ddf281ccbd61c2b8c4`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-dind-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:bdedb15bddfc81021485c850f7d37bef40e515c456da4635b736863f3976b9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133873009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f202efb69b8fd9fa6f6a0abfd316447ce1d0a32654abb7cc738e944e0a2a1f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:51 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:34 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:34 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db8b3b4e2357c4319897e1c52e2bda57c756cc30d1f9addaec6177e3e8c73`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 8.1 MB (8070144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eb064fda214a05c740e04415c08a3857ae6ffb0098b2a53248015ec027b34f`  
		Last Modified: Fri, 26 Jun 2026 19:14:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf52f8cf526c2ca5314adaf58b11db5f978f40033c35d011ae8a865ff44f05`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 18.1 MB (18080654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747d01e616647b152c48f96979cd7f98f0aa02da0a8d515b0256bc59c765487`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 21.7 MB (21652826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1580053038b0973908da90b76095afe32480ac248503de5b85273b1fe43a51`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 10.7 MB (10707921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48e796053f3d575cf35709fc741fbc702e65b7b39f9045deae47a1960a13d23`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0a59b79942b3637400842a4f60c7a9186b694a69f391c8d2d2da312c56c72`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa42d7f4e5e10520140c0f9069a1712cd48f679008b8c6cf6f06b7dfecec14`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7cdff279abc613b825a1a7e7a9294eb240bcc795a19a63959e21e72bf81cd1`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 7.3 MB (7304371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b87a48620f4529cf87608b466c2cacf49ee67eff228eb13d8b7e4cd016310c`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 90.7 KB (90730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32a74c2f7113a30d62e4d21d5992538f018cdd7c65f4e22dcd5ac6f5d664da`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6716f116acdde1c5b7689e3366241793935268192da4a173d5d187dedd99bcd4`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 64.4 MB (64404755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0893e143d5cdffc36db31d5413c7dc2647a158894a3cd894fda490517285c29`  
		Last Modified: Fri, 26 Jun 2026 20:09:45 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e90d067b63da99477d91ead20692760555470e8ef6c34e7b2b24cf1d803e59`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:bf76d90141845e8dea197c7c07bb448ea5843ed3dfd0e9613db7b827fdd90b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00b3354b0e436c17adba279ce05c7b700ee4f5b72cc1d6d1301dab96630c0b2`

```dockerfile
```

-	Layers:
	-	`sha256:fa7663f13b171cf058e8f5ee7cf468070827013d6ce54d5f182b2ba7e270dc86`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-dind-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:60492b3c97e991508649843d139627ad8cc4c0815101887b7b6bb23096537034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131949580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15d44f36e5060d3a7b3f58a6871bb44a2d18304368c3918c6c13a701f87ecbc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:15:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:15:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:15:00 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:08:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:08:52 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:08:52 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:08:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:08:52 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73348ca386a2811c44f11895e0ce6fbb29fe2b6d5c7f400a448a27481c0c4d`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 7.4 MB (7371188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b50aff58537925905a23ce67a1fc115819edbaf2d1d7d7237d34412844420c`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac1ac344a988f0beb85bc6c5966d457b6859344894d711cd2279e5f75c4b63`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 18.1 MB (18061099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc84213c592aa5f4838bccc8e7cb8b6a766cd4604162fd18994ac70c63fa1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 21.6 MB (21635982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6342a153c33bb2a76526621dc3a99ba4089ec9f110edd39658b2c519df33c51`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 10.7 MB (10693590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96813c6dc7b4b75681f43117d254f06619c1aed25b092f3ea927429704dba6e`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfdc15d2b4dc6af610d0d72843a30e3a6d844d9ba2bd800624f99133099205`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce9f0e25dafa483c12a1779e1f5d59de6c0edfec2a274e9aee4727331a0113`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439a4f013ca0e4303273a92f2c6adeb71d309e5ec539cf4555a8ec60f060a893`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 6.6 MB (6598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011532103b9333944f76c9582f2a592aec3b333d66bd71df4607fb398d0cf512`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 87.0 KB (86975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a512236d997aa4b534c4f329a22a90760a4f5414c2c2882b0b4d1e9f8e6581d0`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76ec8bfe90a3ac82472f200ec7565e878f901bf590fb95c8e9338d36530fe3e`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 64.2 MB (64233117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa03f66de40e2b554187eb333b02f14abf520b3fcab970a778113113fdab11b5`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0241dd7b7777fb1f174a8d05d36e0844eaf0debaa752c4c965cc782993e5abcd`  
		Last Modified: Fri, 26 Jun 2026 20:09:03 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:b0858646b4d5fa1d62b83277ae7eef9b57f0eebc11d23484f88085e1b625e233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b7720c518d82646ddd0340d261248d1882f0ceecd89f601ddd6464c4c82f21`

```dockerfile
```

-	Layers:
	-	`sha256:5106509e47d28570c6579dbb59a5e76b3139abb37b67ca387cee73dba38c00ab`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-dind-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8a370e65c039a98b80ea802d55a3045c05d0d21921e7e547bfa20cb945f2a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131350673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80c6b7dd645a610d4754c8e586d240f358e4ff6cc0802571b9318af96a9c324`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:42 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:42 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e7b7f7c3f4d6179fee0cd18c832b93bb7d412938076e09926798c894b1e870`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 7.2 MB (7240483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe0a609f7f49f5ccf70c6712472dc07c629e0114d6103f5102b4edec75a966`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 100.0 KB (99950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa2612640a67bffdba6b2de15bee17e1f3554fab495307c2eb31c722920020`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd80cad6104c5f657e5582ea0c09f7f8c62bcde68bb1e7964c9c21ec0d8bfeb`  
		Last Modified: Fri, 26 Jun 2026 20:09:54 GMT  
		Size: 62.6 MB (62574293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75843d6b9c9d05f0c0cd271f3c838fe43b9d98abda3603a5fdd6d567d686840`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571f5b27af7ee8767453fb806ee10936f9c71f41b92b2fb9df9c64cfdf7e9e68`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:942eec10c0a0da7b72b77a7b973630fb45c1167f6913bd811cec56181d17ab21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749e29ecf3695d571188e5233e6a64f66ba0e159d762c623c3a6b1e56fe9a9f5`

```dockerfile
```

-	Layers:
	-	`sha256:15815c3bd67687560e6da1821000f25a70e6cf98fdca3433cbf401268fa88bd0`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 34.8 KB (34776 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.6.1-dind-rootless`

```console
$ docker pull docker@sha256:371962f4344295a1eb185f1c9e62064bf4503a7beb8c6e73be3405500041784b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.6.1-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:7e32ba65198ce220388cb6c45cfac60966e6dee5c7a7207510ce786648e1ca75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.6 MB (157585482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5bb5dad84091a1a6695f967bc7974bdf20759600535244123f5d8108736cdb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:53 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:57 GMT
CMD []
# Fri, 26 Jun 2026 21:10:07 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 26 Jun 2026 21:10:07 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 26 Jun 2026 21:10:07 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 21:10:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 26 Jun 2026 21:10:08 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 26 Jun 2026 21:10:08 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 26 Jun 2026 21:10:08 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7d3688ed3253f01a35ac9ee319f7e2f8e00280b54b9fb0e8317425077cc3f`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd57b1c0c61542f33706b9a217d7b40cf6eb469d6bbaacd592469a9f25d878d`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 91.3 KB (91334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23011a9e0c5e9ba4ee856dbcf7c1d1926164009df6881ce03a59b65c1b9b6b0`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34defd136645fb282a3ec960a7f5e19a39dda5397932292252eddf6e931dd56`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 69.2 MB (69156332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d9f738aebeb26d0a87e7aa43f5e33eb6d26bcb05c5c1d726318c3c6d70b019`  
		Last Modified: Fri, 26 Jun 2026 20:10:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc014cc1384a4e34fd5f897abd97bf89e74dceb24ba98a1a236890061c23a4a8`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fedeb688a134dfd96a614fb4f858bf76864d5f7a5d76fdabc5548958d7e4e4f`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 3.5 MB (3471260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c81ea3ee5cc4fdc815bbecc7e83636c9d253555108c80a3b6b3ac4637089dc`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b435a74e2da7f7cbe66f68a960273748e56884de827c9968907f52112d808d4`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd84e92bf71e4ca3fda92193af8716b7bc7a27df2eaf1d0b2e4bd572a60880be`  
		Last Modified: Fri, 26 Jun 2026 21:10:14 GMT  
		Size: 12.1 MB (12103309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65cb2266b88aba0063d5fdb6bf7d1a456e320bc4ae60522962bdee59fb7845e4`  
		Last Modified: Fri, 26 Jun 2026 21:10:14 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:60a04bf338a3905afe926941d1dfa69e1ee723f164f9be090c10270c9e21bbca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d327b13b2f4387990a6a1be787939319382ebeced88fcc57fab642794dd96b`

```dockerfile
```

-	Layers:
	-	`sha256:8943a2760cc456fd13256361ef31a0708d98769920a4b615d7c275fcb8f94adb`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.6.1-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5b12ac3fac58ba82cc21a388bbbd7c4e6ab734e0fd937b3083c166468bd310e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146037933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1ac82d40c6358354dff44028a97431acf35e13460ff66476fab4a66d76cd04`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:42 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:42 GMT
CMD []
# Fri, 26 Jun 2026 21:10:00 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 26 Jun 2026 21:10:00 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 26 Jun 2026 21:10:00 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 21:10:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 26 Jun 2026 21:10:01 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 26 Jun 2026 21:10:01 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 26 Jun 2026 21:10:01 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e7b7f7c3f4d6179fee0cd18c832b93bb7d412938076e09926798c894b1e870`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 7.2 MB (7240483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe0a609f7f49f5ccf70c6712472dc07c629e0114d6103f5102b4edec75a966`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 100.0 KB (99950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa2612640a67bffdba6b2de15bee17e1f3554fab495307c2eb31c722920020`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd80cad6104c5f657e5582ea0c09f7f8c62bcde68bb1e7964c9c21ec0d8bfeb`  
		Last Modified: Fri, 26 Jun 2026 20:09:54 GMT  
		Size: 62.6 MB (62574293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75843d6b9c9d05f0c0cd271f3c838fe43b9d98abda3603a5fdd6d567d686840`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571f5b27af7ee8767453fb806ee10936f9c71f41b92b2fb9df9c64cfdf7e9e68`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d78dc73bf15721c5e18393c9315ad0fd1cde93655d5dd1b22dd79c6480337c`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 3.4 MB (3448838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac68c7e2a1412e9139e86b2cd3d47f65bb122c046cd72373b4cdde640c6bde4`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940e296424552351728af90be04f9bc7331768121feb9a16968a8e5012c680ef`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816a434de8a1c5ad5bc40e0b8b54d22e2b6c5dbb2308538a24c962e0f17cfa77`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 11.2 MB (11237083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69764499e5f4c737e1e3df06b6449dd1f094d0577a91a48156e9dabb2877ebd1`  
		Last Modified: Fri, 26 Jun 2026 21:10:07 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.6.1-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:36d245ff3b999721594d488e19b3e5980a3b910da4484947b3fe77e303ed2175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2bb59055922667754d5649c5aba19c2b29b34bd435ea8db93ff1848d8dca10`

```dockerfile
```

-	Layers:
	-	`sha256:bf33c7b8b311be23d40353d86fd6af5aaf77cefa633818a4fe82eb77c873ccae`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.6.1-windowsservercore`

```console
$ docker pull docker@sha256:987caf6f2e47c9f384fe19fd22b5617110581779665d40a170753b34695692f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:29.6.1-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:c2b389f8cd8f11e2900d67bbacc9827f16489235e63656640d24fada8e762ad4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411561732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18049789f0008d9c3f37c8a8841127af1eba5771fe9a118eafcae58e504bc746`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:04:11 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:04:12 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:04:13 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:41 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:54 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:05:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2085c3db024288fc478fb62815fd678aad6214a4cadef12c88a10b0ae9c9e10`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39c0248b75a4ee2ef139a785aa92badfba4dc8b009e6ab4908d5ceef918ed03`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 382.1 KB (382133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69234e14e261dad77a6cf51b0eabba81dc5b3f965d5fed62bfc53c06d8a764a2`  
		Last Modified: Wed, 15 Jul 2026 23:05:17 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4539fd67326fa317750db628a2f1a4d3f5f9db73fd86c143a82bf467a32d47`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c846b5662624fd3ebfe0e3021130e8bdf7a33f0dab2b7eacbc540755b5ec51`  
		Last Modified: Wed, 15 Jul 2026 23:05:19 GMT  
		Size: 20.2 MB (20220063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425cca9457aad03f806d50fc3d834251cd234ac53ea7d666a7fff44f48733bfb`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85038b32ac498db56e754365261030c412c9b80e5a4ebb4816d8fecf747fc1f0`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99f228b2dc1ee2c7aae72c2161463b77c770632d7b9005720494fff7bd4915f`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7b534788fb6c61cc388746eb3fa65f616b4e735fd879464f59b69c2e4949b`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 23.9 MB (23944636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230bdaa6e2caa76f2b9b3b850efbc53d1495c485a8e25a9c8259ebf219016df`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45d7967f989527e856a0b6978996cd4e71c6358d2a53683d58e76a41667a50`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0823deb16c310112f9dd993e019c4763ffd60f5cf29c6b30055890a236117cff`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cdf81c4ffce0c932887e8e429e6ac7022ac9d7cd477986792e5c6c7467688`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 12.0 MB (11995157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.6.1-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:aeb9e3bd651814b4c9b55b662570d520cff6ce4ea5571f078d0320c1d79b2951
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214005146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84b934b73013ec7cdb7927925a7a10e5e99825ac7f9d4a9903901df8a8b6bae`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:02:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:03:46 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:03:47 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:03:48 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:05 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:07 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:26 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:27 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:04:44 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5552627ff15545aa9fdec68ddce1b24a3653c79d40f00b6e24d9e684d2d01c6b`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740e8aa81f0fb5274e4f063d5286087a65e41ac4ad7023d04821097dd1f32ee8`  
		Last Modified: Wed, 15 Jul 2026 23:04:53 GMT  
		Size: 476.8 KB (476847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4b0c9c42fa06c12a2965477d19454e005890d0f69e285c6fd70609987f0207`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3170927173373a955b2508380e29fd3b37a569fcd88bb757f1a2cfd1a9f7748`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c7eaa6a002e395c317fb7d998adf9243dfe2d6e0d014ad26e02aac0b6e82ee`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 20.1 MB (20092616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb52de32b635f2469a9591923d0b0339c32ed722a9e4dc56cbe77e76660e97a1`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb55b45b542e4f9d2f7de0dc787d2509cb4d3c3f0882cee01930f160ddaabe72`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1701a018adb739a0a4e29a9a8912fce71a5c9d4008fa92564c9c7a2928ac5fc4`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69728994b71846d2c478e3dc7368210e15268b588c22215bcd32308ad322e669`  
		Last Modified: Wed, 15 Jul 2026 23:04:56 GMT  
		Size: 23.9 MB (23913034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f9592843c383938cff645f97327f5f787098d0adfb6def0c6163ddbd233531`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d83fae979d85e9ab95e8fb1bdef481afb9be557c750459160629edb571e592`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbcb5371aee095d566dfc6237460f871409383a729e2005e25daac9973b0f8a`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d58224bf719f0162345746dfb24a7bbca8796e75db741bf8b2edf17071efa4c`  
		Last Modified: Wed, 15 Jul 2026 23:04:51 GMT  
		Size: 12.0 MB (11957735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.6.1-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:a29deb3372e442655c9e3913011579238eaca2953befe5ce6b9bd888d8ff5cdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:29.6.1-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:aeb9e3bd651814b4c9b55b662570d520cff6ce4ea5571f078d0320c1d79b2951
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214005146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84b934b73013ec7cdb7927925a7a10e5e99825ac7f9d4a9903901df8a8b6bae`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:02:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:03:46 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:03:47 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:03:48 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:05 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:07 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:26 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:27 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:04:44 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5552627ff15545aa9fdec68ddce1b24a3653c79d40f00b6e24d9e684d2d01c6b`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740e8aa81f0fb5274e4f063d5286087a65e41ac4ad7023d04821097dd1f32ee8`  
		Last Modified: Wed, 15 Jul 2026 23:04:53 GMT  
		Size: 476.8 KB (476847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4b0c9c42fa06c12a2965477d19454e005890d0f69e285c6fd70609987f0207`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3170927173373a955b2508380e29fd3b37a569fcd88bb757f1a2cfd1a9f7748`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c7eaa6a002e395c317fb7d998adf9243dfe2d6e0d014ad26e02aac0b6e82ee`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 20.1 MB (20092616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb52de32b635f2469a9591923d0b0339c32ed722a9e4dc56cbe77e76660e97a1`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb55b45b542e4f9d2f7de0dc787d2509cb4d3c3f0882cee01930f160ddaabe72`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1701a018adb739a0a4e29a9a8912fce71a5c9d4008fa92564c9c7a2928ac5fc4`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69728994b71846d2c478e3dc7368210e15268b588c22215bcd32308ad322e669`  
		Last Modified: Wed, 15 Jul 2026 23:04:56 GMT  
		Size: 23.9 MB (23913034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f9592843c383938cff645f97327f5f787098d0adfb6def0c6163ddbd233531`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d83fae979d85e9ab95e8fb1bdef481afb9be557c750459160629edb571e592`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbcb5371aee095d566dfc6237460f871409383a729e2005e25daac9973b0f8a`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d58224bf719f0162345746dfb24a7bbca8796e75db741bf8b2edf17071efa4c`  
		Last Modified: Wed, 15 Jul 2026 23:04:51 GMT  
		Size: 12.0 MB (11957735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.6.1-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:1dfd87c41615b541fc4f37949a0ce36d912f25e283496ecd7372b83897b656c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:29.6.1-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:c2b389f8cd8f11e2900d67bbacc9827f16489235e63656640d24fada8e762ad4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411561732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18049789f0008d9c3f37c8a8841127af1eba5771fe9a118eafcae58e504bc746`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:04:11 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:04:12 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:04:13 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:41 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:54 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:05:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2085c3db024288fc478fb62815fd678aad6214a4cadef12c88a10b0ae9c9e10`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39c0248b75a4ee2ef139a785aa92badfba4dc8b009e6ab4908d5ceef918ed03`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 382.1 KB (382133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69234e14e261dad77a6cf51b0eabba81dc5b3f965d5fed62bfc53c06d8a764a2`  
		Last Modified: Wed, 15 Jul 2026 23:05:17 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4539fd67326fa317750db628a2f1a4d3f5f9db73fd86c143a82bf467a32d47`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c846b5662624fd3ebfe0e3021130e8bdf7a33f0dab2b7eacbc540755b5ec51`  
		Last Modified: Wed, 15 Jul 2026 23:05:19 GMT  
		Size: 20.2 MB (20220063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425cca9457aad03f806d50fc3d834251cd234ac53ea7d666a7fff44f48733bfb`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85038b32ac498db56e754365261030c412c9b80e5a4ebb4816d8fecf747fc1f0`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99f228b2dc1ee2c7aae72c2161463b77c770632d7b9005720494fff7bd4915f`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7b534788fb6c61cc388746eb3fa65f616b4e735fd879464f59b69c2e4949b`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 23.9 MB (23944636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230bdaa6e2caa76f2b9b3b850efbc53d1495c485a8e25a9c8259ebf219016df`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45d7967f989527e856a0b6978996cd4e71c6358d2a53683d58e76a41667a50`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0823deb16c310112f9dd993e019c4763ffd60f5cf29c6b30055890a236117cff`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cdf81c4ffce0c932887e8e429e6ac7022ac9d7cd477986792e5c6c7467688`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 12.0 MB (11995157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:cli`

```console
$ docker pull docker@sha256:862099ada15c669000bef53aa4cb9d821262829f45b0dda2159ccb276443043b
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
$ docker pull docker@sha256:a011361b7e7dbf51ba0db930a7b746a0bb80935ac1b2f5d892a989025c80fab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65790677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a75857a59abadc720af7d48f3ac89272b7256ec346c22be03ebe241c6f6dc34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:92bdc3281f0b844bd0e84c3bfef3bf1231a79dc559a335bb36c7a332dece828c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64c28cc930ad0986d9cede5eb02a6ce0976049de8a11d46503812e586899b630`

```dockerfile
```

-	Layers:
	-	`sha256:4a0bc992b60a504b92b71f8aa85d9c87c1eb5e66e91322105dcbde26f835b4c6`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:b7ef782591ebdb6dfcffce08eaa7b80ac765eb006cdbc42449769d7dc05b2e8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62067149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16849351abcbee1c9ccd6f356f9fc99c4f860d9f578fe9b0d12c324ab0a8c347`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db8b3b4e2357c4319897e1c52e2bda57c756cc30d1f9addaec6177e3e8c73`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 8.1 MB (8070144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eb064fda214a05c740e04415c08a3857ae6ffb0098b2a53248015ec027b34f`  
		Last Modified: Fri, 26 Jun 2026 19:14:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf52f8cf526c2ca5314adaf58b11db5f978f40033c35d011ae8a865ff44f05`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 18.1 MB (18080654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747d01e616647b152c48f96979cd7f98f0aa02da0a8d515b0256bc59c765487`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 21.7 MB (21652826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1580053038b0973908da90b76095afe32480ac248503de5b85273b1fe43a51`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 10.7 MB (10707921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48e796053f3d575cf35709fc741fbc702e65b7b39f9045deae47a1960a13d23`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0a59b79942b3637400842a4f60c7a9186b694a69f391c8d2d2da312c56c72`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa42d7f4e5e10520140c0f9069a1712cd48f679008b8c6cf6f06b7dfecec14`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:a351980ad3031c5131f94c83475aaa895abb403c69120c3f81ebf2086cd1306c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485804550c69b9ad6fe98231b71b255cdd24dc5c96fab549d0f97703eb825554`

```dockerfile
```

-	Layers:
	-	`sha256:0891442af9876f93855b78cd35903737044c7420a9edee8dc743c00cbd219895`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:d847004ceadc208ba9ac56c691f6da26f808094246ed1ff21812718b4e83d4c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61024623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097b61b571bd924e817bf73255ed2e94a0f318a9669db20180c91d7aa59606f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:15:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:15:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:15:00 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73348ca386a2811c44f11895e0ce6fbb29fe2b6d5c7f400a448a27481c0c4d`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 7.4 MB (7371188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b50aff58537925905a23ce67a1fc115819edbaf2d1d7d7237d34412844420c`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac1ac344a988f0beb85bc6c5966d457b6859344894d711cd2279e5f75c4b63`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 18.1 MB (18061099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc84213c592aa5f4838bccc8e7cb8b6a766cd4604162fd18994ac70c63fa1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 21.6 MB (21635982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6342a153c33bb2a76526621dc3a99ba4089ec9f110edd39658b2c519df33c51`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 10.7 MB (10693590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96813c6dc7b4b75681f43117d254f06619c1aed25b092f3ea927429704dba6e`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfdc15d2b4dc6af610d0d72843a30e3a6d844d9ba2bd800624f99133099205`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce9f0e25dafa483c12a1779e1f5d59de6c0edfec2a274e9aee4727331a0113`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:0f60cb2c4d2cd1430359ee87d407bad0056bf6b1e6d81c87d7d5606f8b03f4b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cce93c5631da2bb8ee790bccfb4e84b62b5435d0d8c0e13220cef1785513a98`

```dockerfile
```

-	Layers:
	-	`sha256:af60b0dc8de3ad37e06e6b1b3d4bbba685d201c5462c6e3c0827dd7b37738312`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:936645b07ec2facf224d96e54b15c2254739663066cf252a0bb8e94fa222bf45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61429945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4aeeabe0dc47d40fe04c980a50d6da10c3c4f6d170205a5401d2edd186700af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:099807f6a4b1ec8d01317adf1b16fc8574d3220e1ae65009c28b5dc9a6176747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1749de21b617e727ceb335efd9a64daa8f1b12b8aa307fd1067058d2244c915`

```dockerfile
```

-	Layers:
	-	`sha256:3e6584e97eec65ee9ecbb966d19ce0436116f7c48841b630bcbb2bfbff2eb985`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 38.3 KB (38261 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind`

```console
$ docker pull docker@sha256:66d292e5c26bd33a6f6f61cacb880de2186339a524ecba1ce098dbbaceed6515
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
$ docker pull docker@sha256:e800743c1d2f29578f32ae4cf0ec1e20673f64ba5e2d34588f0ee8998a34a74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142009572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a9896195077f64981b363a7b46cf6e629cdedb093d9eb6ba1b4a66c903daed`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:53 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:57 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7d3688ed3253f01a35ac9ee319f7e2f8e00280b54b9fb0e8317425077cc3f`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd57b1c0c61542f33706b9a217d7b40cf6eb469d6bbaacd592469a9f25d878d`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 91.3 KB (91334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23011a9e0c5e9ba4ee856dbcf7c1d1926164009df6881ce03a59b65c1b9b6b0`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34defd136645fb282a3ec960a7f5e19a39dda5397932292252eddf6e931dd56`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 69.2 MB (69156332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d9f738aebeb26d0a87e7aa43f5e33eb6d26bcb05c5c1d726318c3c6d70b019`  
		Last Modified: Fri, 26 Jun 2026 20:10:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc014cc1384a4e34fd5f897abd97bf89e74dceb24ba98a1a236890061c23a4a8`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:f29d3ae24e5b229968e8c5764b492b6293d6bf80137ba4076122fa967c4da5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95a4b745d705a04fae2def0d4abaf0463179158329ecf5859b3abc32e1b7704`

```dockerfile
```

-	Layers:
	-	`sha256:3a7f99d3ab2db50a6083758533cee68e92aef2bb60afc9ddf281ccbd61c2b8c4`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:bdedb15bddfc81021485c850f7d37bef40e515c456da4635b736863f3976b9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133873009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f202efb69b8fd9fa6f6a0abfd316447ce1d0a32654abb7cc738e944e0a2a1f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:51 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:34 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:34 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db8b3b4e2357c4319897e1c52e2bda57c756cc30d1f9addaec6177e3e8c73`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 8.1 MB (8070144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eb064fda214a05c740e04415c08a3857ae6ffb0098b2a53248015ec027b34f`  
		Last Modified: Fri, 26 Jun 2026 19:14:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf52f8cf526c2ca5314adaf58b11db5f978f40033c35d011ae8a865ff44f05`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 18.1 MB (18080654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747d01e616647b152c48f96979cd7f98f0aa02da0a8d515b0256bc59c765487`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 21.7 MB (21652826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1580053038b0973908da90b76095afe32480ac248503de5b85273b1fe43a51`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 10.7 MB (10707921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48e796053f3d575cf35709fc741fbc702e65b7b39f9045deae47a1960a13d23`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0a59b79942b3637400842a4f60c7a9186b694a69f391c8d2d2da312c56c72`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa42d7f4e5e10520140c0f9069a1712cd48f679008b8c6cf6f06b7dfecec14`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7cdff279abc613b825a1a7e7a9294eb240bcc795a19a63959e21e72bf81cd1`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 7.3 MB (7304371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b87a48620f4529cf87608b466c2cacf49ee67eff228eb13d8b7e4cd016310c`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 90.7 KB (90730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32a74c2f7113a30d62e4d21d5992538f018cdd7c65f4e22dcd5ac6f5d664da`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6716f116acdde1c5b7689e3366241793935268192da4a173d5d187dedd99bcd4`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 64.4 MB (64404755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0893e143d5cdffc36db31d5413c7dc2647a158894a3cd894fda490517285c29`  
		Last Modified: Fri, 26 Jun 2026 20:09:45 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e90d067b63da99477d91ead20692760555470e8ef6c34e7b2b24cf1d803e59`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:bf76d90141845e8dea197c7c07bb448ea5843ed3dfd0e9613db7b827fdd90b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00b3354b0e436c17adba279ce05c7b700ee4f5b72cc1d6d1301dab96630c0b2`

```dockerfile
```

-	Layers:
	-	`sha256:fa7663f13b171cf058e8f5ee7cf468070827013d6ce54d5f182b2ba7e270dc86`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:60492b3c97e991508649843d139627ad8cc4c0815101887b7b6bb23096537034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131949580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15d44f36e5060d3a7b3f58a6871bb44a2d18304368c3918c6c13a701f87ecbc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:15:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:15:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:15:00 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:08:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:08:52 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:08:52 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:08:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:08:52 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73348ca386a2811c44f11895e0ce6fbb29fe2b6d5c7f400a448a27481c0c4d`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 7.4 MB (7371188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b50aff58537925905a23ce67a1fc115819edbaf2d1d7d7237d34412844420c`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac1ac344a988f0beb85bc6c5966d457b6859344894d711cd2279e5f75c4b63`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 18.1 MB (18061099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc84213c592aa5f4838bccc8e7cb8b6a766cd4604162fd18994ac70c63fa1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 21.6 MB (21635982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6342a153c33bb2a76526621dc3a99ba4089ec9f110edd39658b2c519df33c51`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 10.7 MB (10693590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96813c6dc7b4b75681f43117d254f06619c1aed25b092f3ea927429704dba6e`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfdc15d2b4dc6af610d0d72843a30e3a6d844d9ba2bd800624f99133099205`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce9f0e25dafa483c12a1779e1f5d59de6c0edfec2a274e9aee4727331a0113`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439a4f013ca0e4303273a92f2c6adeb71d309e5ec539cf4555a8ec60f060a893`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 6.6 MB (6598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011532103b9333944f76c9582f2a592aec3b333d66bd71df4607fb398d0cf512`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 87.0 KB (86975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a512236d997aa4b534c4f329a22a90760a4f5414c2c2882b0b4d1e9f8e6581d0`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76ec8bfe90a3ac82472f200ec7565e878f901bf590fb95c8e9338d36530fe3e`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 64.2 MB (64233117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa03f66de40e2b554187eb333b02f14abf520b3fcab970a778113113fdab11b5`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0241dd7b7777fb1f174a8d05d36e0844eaf0debaa752c4c965cc782993e5abcd`  
		Last Modified: Fri, 26 Jun 2026 20:09:03 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:b0858646b4d5fa1d62b83277ae7eef9b57f0eebc11d23484f88085e1b625e233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b7720c518d82646ddd0340d261248d1882f0ceecd89f601ddd6464c4c82f21`

```dockerfile
```

-	Layers:
	-	`sha256:5106509e47d28570c6579dbb59a5e76b3139abb37b67ca387cee73dba38c00ab`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8a370e65c039a98b80ea802d55a3045c05d0d21921e7e547bfa20cb945f2a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131350673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80c6b7dd645a610d4754c8e586d240f358e4ff6cc0802571b9318af96a9c324`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:42 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:42 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e7b7f7c3f4d6179fee0cd18c832b93bb7d412938076e09926798c894b1e870`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 7.2 MB (7240483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe0a609f7f49f5ccf70c6712472dc07c629e0114d6103f5102b4edec75a966`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 100.0 KB (99950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa2612640a67bffdba6b2de15bee17e1f3554fab495307c2eb31c722920020`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd80cad6104c5f657e5582ea0c09f7f8c62bcde68bb1e7964c9c21ec0d8bfeb`  
		Last Modified: Fri, 26 Jun 2026 20:09:54 GMT  
		Size: 62.6 MB (62574293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75843d6b9c9d05f0c0cd271f3c838fe43b9d98abda3603a5fdd6d567d686840`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571f5b27af7ee8767453fb806ee10936f9c71f41b92b2fb9df9c64cfdf7e9e68`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:942eec10c0a0da7b72b77a7b973630fb45c1167f6913bd811cec56181d17ab21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749e29ecf3695d571188e5233e6a64f66ba0e159d762c623c3a6b1e56fe9a9f5`

```dockerfile
```

-	Layers:
	-	`sha256:15815c3bd67687560e6da1821000f25a70e6cf98fdca3433cbf401268fa88bd0`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 34.8 KB (34776 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind-rootless`

```console
$ docker pull docker@sha256:371962f4344295a1eb185f1c9e62064bf4503a7beb8c6e73be3405500041784b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:7e32ba65198ce220388cb6c45cfac60966e6dee5c7a7207510ce786648e1ca75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.6 MB (157585482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5bb5dad84091a1a6695f967bc7974bdf20759600535244123f5d8108736cdb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:53 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:57 GMT
CMD []
# Fri, 26 Jun 2026 21:10:07 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 26 Jun 2026 21:10:07 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 26 Jun 2026 21:10:07 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 21:10:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 26 Jun 2026 21:10:08 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 26 Jun 2026 21:10:08 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 26 Jun 2026 21:10:08 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7d3688ed3253f01a35ac9ee319f7e2f8e00280b54b9fb0e8317425077cc3f`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd57b1c0c61542f33706b9a217d7b40cf6eb469d6bbaacd592469a9f25d878d`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 91.3 KB (91334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23011a9e0c5e9ba4ee856dbcf7c1d1926164009df6881ce03a59b65c1b9b6b0`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34defd136645fb282a3ec960a7f5e19a39dda5397932292252eddf6e931dd56`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 69.2 MB (69156332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d9f738aebeb26d0a87e7aa43f5e33eb6d26bcb05c5c1d726318c3c6d70b019`  
		Last Modified: Fri, 26 Jun 2026 20:10:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc014cc1384a4e34fd5f897abd97bf89e74dceb24ba98a1a236890061c23a4a8`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fedeb688a134dfd96a614fb4f858bf76864d5f7a5d76fdabc5548958d7e4e4f`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 3.5 MB (3471260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c81ea3ee5cc4fdc815bbecc7e83636c9d253555108c80a3b6b3ac4637089dc`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b435a74e2da7f7cbe66f68a960273748e56884de827c9968907f52112d808d4`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd84e92bf71e4ca3fda92193af8716b7bc7a27df2eaf1d0b2e4bd572a60880be`  
		Last Modified: Fri, 26 Jun 2026 21:10:14 GMT  
		Size: 12.1 MB (12103309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65cb2266b88aba0063d5fdb6bf7d1a456e320bc4ae60522962bdee59fb7845e4`  
		Last Modified: Fri, 26 Jun 2026 21:10:14 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:60a04bf338a3905afe926941d1dfa69e1ee723f164f9be090c10270c9e21bbca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d327b13b2f4387990a6a1be787939319382ebeced88fcc57fab642794dd96b`

```dockerfile
```

-	Layers:
	-	`sha256:8943a2760cc456fd13256361ef31a0708d98769920a4b615d7c275fcb8f94adb`  
		Last Modified: Fri, 26 Jun 2026 21:10:13 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:5b12ac3fac58ba82cc21a388bbbd7c4e6ab734e0fd937b3083c166468bd310e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146037933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1ac82d40c6358354dff44028a97431acf35e13460ff66476fab4a66d76cd04`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:42 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:42 GMT
CMD []
# Fri, 26 Jun 2026 21:10:00 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 26 Jun 2026 21:10:00 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 26 Jun 2026 21:10:00 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 21:10:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 26 Jun 2026 21:10:01 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 26 Jun 2026 21:10:01 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 26 Jun 2026 21:10:01 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e7b7f7c3f4d6179fee0cd18c832b93bb7d412938076e09926798c894b1e870`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 7.2 MB (7240483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe0a609f7f49f5ccf70c6712472dc07c629e0114d6103f5102b4edec75a966`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 100.0 KB (99950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa2612640a67bffdba6b2de15bee17e1f3554fab495307c2eb31c722920020`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd80cad6104c5f657e5582ea0c09f7f8c62bcde68bb1e7964c9c21ec0d8bfeb`  
		Last Modified: Fri, 26 Jun 2026 20:09:54 GMT  
		Size: 62.6 MB (62574293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75843d6b9c9d05f0c0cd271f3c838fe43b9d98abda3603a5fdd6d567d686840`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571f5b27af7ee8767453fb806ee10936f9c71f41b92b2fb9df9c64cfdf7e9e68`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d78dc73bf15721c5e18393c9315ad0fd1cde93655d5dd1b22dd79c6480337c`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 3.4 MB (3448838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac68c7e2a1412e9139e86b2cd3d47f65bb122c046cd72373b4cdde640c6bde4`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940e296424552351728af90be04f9bc7331768121feb9a16968a8e5012c680ef`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816a434de8a1c5ad5bc40e0b8b54d22e2b6c5dbb2308538a24c962e0f17cfa77`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 11.2 MB (11237083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69764499e5f4c737e1e3df06b6449dd1f094d0577a91a48156e9dabb2877ebd1`  
		Last Modified: Fri, 26 Jun 2026 21:10:07 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:36d245ff3b999721594d488e19b3e5980a3b910da4484947b3fe77e303ed2175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2bb59055922667754d5649c5aba19c2b29b34bd435ea8db93ff1848d8dca10`

```dockerfile
```

-	Layers:
	-	`sha256:bf33c7b8b311be23d40353d86fd6af5aaf77cefa633818a4fe82eb77c873ccae`  
		Last Modified: Fri, 26 Jun 2026 21:10:06 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:latest`

```console
$ docker pull docker@sha256:66d292e5c26bd33a6f6f61cacb880de2186339a524ecba1ce098dbbaceed6515
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
$ docker pull docker@sha256:e800743c1d2f29578f32ae4cf0ec1e20673f64ba5e2d34588f0ee8998a34a74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.0 MB (142009572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5a9896195077f64981b363a7b46cf6e629cdedb093d9eb6ba1b4a66c903daed`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:47 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:50 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:53 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:57 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:57 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:57 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:57 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e05145bca39aab219a3a9990d94a89c42419c02fd5f40925d6bb145592eb8b`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 8.2 MB (8170607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1daa427cd22d6c88a7f930a9fb2a2abfeb63d0e821a44851211cf9fe009a753`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df37b5275370f8d84f45dd287b81d27e520c0c35b98fa117e809140073d820a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 19.4 MB (19439641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f4cc4ef829622acfa684395b5072abf0b03ab1b1c089c87947212e7cc95671a`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 23.0 MB (23036812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b31d5b558403aa2691bf063fe01fc988cbc83ae34c01f01f06312de0b5a2070`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 11.3 MB (11295071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562fff92cf4d1e022ed5d3e64987d66b3dd94c5260ba0066be7f5aa9811860df`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8632edb1fb7583e908cde08fb81f3d38eacd36685638d89f813493de7aa52a`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1109ac0b7008cda851bdc442b18d60b59ba4a78fd5abf65b1029b7b644ed384f`  
		Last Modified: Fri, 26 Jun 2026 19:15:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f7d3688ed3253f01a35ac9ee319f7e2f8e00280b54b9fb0e8317425077cc3f`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd57b1c0c61542f33706b9a217d7b40cf6eb469d6bbaacd592469a9f25d878d`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 91.3 KB (91334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23011a9e0c5e9ba4ee856dbcf7c1d1926164009df6881ce03a59b65c1b9b6b0`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34defd136645fb282a3ec960a7f5e19a39dda5397932292252eddf6e931dd56`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 69.2 MB (69156332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d9f738aebeb26d0a87e7aa43f5e33eb6d26bcb05c5c1d726318c3c6d70b019`  
		Last Modified: Fri, 26 Jun 2026 20:10:08 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc014cc1384a4e34fd5f897abd97bf89e74dceb24ba98a1a236890061c23a4a8`  
		Last Modified: Fri, 26 Jun 2026 20:10:09 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:f29d3ae24e5b229968e8c5764b492b6293d6bf80137ba4076122fa967c4da5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95a4b745d705a04fae2def0d4abaf0463179158329ecf5859b3abc32e1b7704`

```dockerfile
```

-	Layers:
	-	`sha256:3a7f99d3ab2db50a6083758533cee68e92aef2bb60afc9ddf281ccbd61c2b8c4`  
		Last Modified: Fri, 26 Jun 2026 20:10:07 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:bdedb15bddfc81021485c850f7d37bef40e515c456da4635b736863f3976b9ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133873009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f202efb69b8fd9fa6f6a0abfd316447ce1d0a32654abb7cc738e944e0a2a1f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:47 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:51 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:29 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:30 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:34 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:34 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:34 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:34 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:34 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461db8b3b4e2357c4319897e1c52e2bda57c756cc30d1f9addaec6177e3e8c73`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 8.1 MB (8070144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2eb064fda214a05c740e04415c08a3857ae6ffb0098b2a53248015ec027b34f`  
		Last Modified: Fri, 26 Jun 2026 19:14:57 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ccf52f8cf526c2ca5314adaf58b11db5f978f40033c35d011ae8a865ff44f05`  
		Last Modified: Fri, 26 Jun 2026 19:14:58 GMT  
		Size: 18.1 MB (18080654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0747d01e616647b152c48f96979cd7f98f0aa02da0a8d515b0256bc59c765487`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 21.7 MB (21652826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1580053038b0973908da90b76095afe32480ac248503de5b85273b1fe43a51`  
		Last Modified: Fri, 26 Jun 2026 19:14:59 GMT  
		Size: 10.7 MB (10707921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48e796053f3d575cf35709fc741fbc702e65b7b39f9045deae47a1960a13d23`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ab0a59b79942b3637400842a4f60c7a9186b694a69f391c8d2d2da312c56c72`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afa42d7f4e5e10520140c0f9069a1712cd48f679008b8c6cf6f06b7dfecec14`  
		Last Modified: Fri, 26 Jun 2026 19:15:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7cdff279abc613b825a1a7e7a9294eb240bcc795a19a63959e21e72bf81cd1`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 7.3 MB (7304371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b87a48620f4529cf87608b466c2cacf49ee67eff228eb13d8b7e4cd016310c`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 90.7 KB (90730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad32a74c2f7113a30d62e4d21d5992538f018cdd7c65f4e22dcd5ac6f5d664da`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6716f116acdde1c5b7689e3366241793935268192da4a173d5d187dedd99bcd4`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 64.4 MB (64404755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0893e143d5cdffc36db31d5413c7dc2647a158894a3cd894fda490517285c29`  
		Last Modified: Fri, 26 Jun 2026 20:09:45 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e90d067b63da99477d91ead20692760555470e8ef6c34e7b2b24cf1d803e59`  
		Last Modified: Fri, 26 Jun 2026 20:09:46 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:bf76d90141845e8dea197c7c07bb448ea5843ed3dfd0e9613db7b827fdd90b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00b3354b0e436c17adba279ce05c7b700ee4f5b72cc1d6d1301dab96630c0b2`

```dockerfile
```

-	Layers:
	-	`sha256:fa7663f13b171cf058e8f5ee7cf468070827013d6ce54d5f182b2ba7e270dc86`  
		Last Modified: Fri, 26 Jun 2026 20:09:44 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:60492b3c97e991508649843d139627ad8cc4c0815101887b7b6bb23096537034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131949580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15d44f36e5060d3a7b3f58a6871bb44a2d18304368c3918c6c13a701f87ecbc`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:52 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:52 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:53 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:15:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:15:00 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:15:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:15:00 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:08:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:08:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:08:52 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:08:52 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:08:52 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:08:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:08:52 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b73348ca386a2811c44f11895e0ce6fbb29fe2b6d5c7f400a448a27481c0c4d`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 7.4 MB (7371188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b50aff58537925905a23ce67a1fc115819edbaf2d1d7d7237d34412844420c`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efac1ac344a988f0beb85bc6c5966d457b6859344894d711cd2279e5f75c4b63`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 18.1 MB (18061099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4fc84213c592aa5f4838bccc8e7cb8b6a766cd4604162fd18994ac70c63fa1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 21.6 MB (21635982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6342a153c33bb2a76526621dc3a99ba4089ec9f110edd39658b2c519df33c51`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 10.7 MB (10693590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96813c6dc7b4b75681f43117d254f06619c1aed25b092f3ea927429704dba6e`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfdc15d2b4dc6af610d0d72843a30e3a6d844d9ba2bd800624f99133099205`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ce9f0e25dafa483c12a1779e1f5d59de6c0edfec2a274e9aee4727331a0113`  
		Last Modified: Fri, 26 Jun 2026 19:15:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439a4f013ca0e4303273a92f2c6adeb71d309e5ec539cf4555a8ec60f060a893`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 6.6 MB (6598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011532103b9333944f76c9582f2a592aec3b333d66bd71df4607fb398d0cf512`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 87.0 KB (86975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a512236d997aa4b534c4f329a22a90760a4f5414c2c2882b0b4d1e9f8e6581d0`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d76ec8bfe90a3ac82472f200ec7565e878f901bf590fb95c8e9338d36530fe3e`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 64.2 MB (64233117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa03f66de40e2b554187eb333b02f14abf520b3fcab970a778113113fdab11b5`  
		Last Modified: Fri, 26 Jun 2026 20:09:04 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0241dd7b7777fb1f174a8d05d36e0844eaf0debaa752c4c965cc782993e5abcd`  
		Last Modified: Fri, 26 Jun 2026 20:09:03 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:b0858646b4d5fa1d62b83277ae7eef9b57f0eebc11d23484f88085e1b625e233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b7720c518d82646ddd0340d261248d1882f0ceecd89f601ddd6464c4c82f21`

```dockerfile
```

-	Layers:
	-	`sha256:5106509e47d28570c6579dbb59a5e76b3139abb37b67ca387cee73dba38c00ab`  
		Last Modified: Fri, 26 Jun 2026 20:09:02 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:8a370e65c039a98b80ea802d55a3045c05d0d21921e7e547bfa20cb945f2a801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131350673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80c6b7dd645a610d4754c8e586d240f358e4ff6cc0802571b9318af96a9c324`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 26 Jun 2026 19:14:54 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 26 Jun 2026 19:14:55 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_VERSION=29.6.1
# Fri, 26 Jun 2026 19:14:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 26 Jun 2026 19:14:57 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 26 Jun 2026 19:14:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 26 Jun 2026 19:14:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Fri, 26 Jun 2026 19:14:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-x86_64'; 			sha256='018f9612ecabc5f2d7aaa53d6f5f44453a87611e2d72c8ef84d7b1eca070e719'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv6'; 			sha256='ce15dafabdceb12b0e136fcf71e8fdd3e7f35407da9ab2591db4097fd56327bc'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-armv7'; 			sha256='e202edcce184f5e17219e2defa8263580729c7e939133f8d703daecd461cb37e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-aarch64'; 			sha256='739de570a0adf5eab12830db980f549fb5f44ad6b266e1e43e20f6f9df7cbcca'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-ppc64le'; 			sha256='0dfd397c75da17215b8dc9382878807fdbaea0b5cf6084fb96ac656ea0940c38'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-riscv64'; 			sha256='9aa503f95e94381ffbc34a26a7dd31dca4e96ba795daa1ed26735572400a17ce'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-linux-s390x'; 			sha256='aedc25e71397e16a2e7d3cf20929c5095909e7f75686875087c65c2279de847c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 26 Jun 2026 19:14:59 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 26 Jun 2026 19:14:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jun 2026 19:14:59 GMT
CMD ["sh"]
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 26 Jun 2026 20:09:39 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 26 Jun 2026 20:09:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 26 Jun 2026 20:09:42 GMT
VOLUME [/var/lib/docker]
# Fri, 26 Jun 2026 20:09:42 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 26 Jun 2026 20:09:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 26 Jun 2026 20:09:42 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f574f2d77674c37cadd8c9f4bc57c1afd5ff014d7f2577d093ffdcba7723fddc`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 8.2 MB (8231667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58fa458364e4c795f7359216c331c4efda1fa3f91c672c536c3bd342961a1748`  
		Last Modified: Fri, 26 Jun 2026 19:15:05 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4d23d78ffee329b8baf1a8dbfa45aee440df6eb8a8fa7ba50cef2f6fd57ec8`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 17.9 MB (17889549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684c8069362067b22560c772e5e5556c0da34e15d2e96f4e83fc2fa246d1c05d`  
		Last Modified: Fri, 26 Jun 2026 19:15:06 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37879908a64ad363caa4431f41417979cbecf7d292b659597d4f3025ee27c0ef`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 10.3 MB (10267179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8027c981d0cee23366d81ff6f6e7a3561faa6cf3d96b11fa16b9518f3a1de1`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ffa6867421af586d860ad2af33942841d0a938ce3d92318f542fa77776a096`  
		Last Modified: Fri, 26 Jun 2026 19:15:07 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda3b5762f87b9718f7ae11079cde3e15ff1e1b6cb2d2f1d59c5d326c370d04`  
		Last Modified: Fri, 26 Jun 2026 19:15:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e7b7f7c3f4d6179fee0cd18c832b93bb7d412938076e09926798c894b1e870`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 7.2 MB (7240483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7fe0a609f7f49f5ccf70c6712472dc07c629e0114d6103f5102b4edec75a966`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 100.0 KB (99950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa2612640a67bffdba6b2de15bee17e1f3554fab495307c2eb31c722920020`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd80cad6104c5f657e5582ea0c09f7f8c62bcde68bb1e7964c9c21ec0d8bfeb`  
		Last Modified: Fri, 26 Jun 2026 20:09:54 GMT  
		Size: 62.6 MB (62574293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75843d6b9c9d05f0c0cd271f3c838fe43b9d98abda3603a5fdd6d567d686840`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571f5b27af7ee8767453fb806ee10936f9c71f41b92b2fb9df9c64cfdf7e9e68`  
		Last Modified: Fri, 26 Jun 2026 20:09:53 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:942eec10c0a0da7b72b77a7b973630fb45c1167f6913bd811cec56181d17ab21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749e29ecf3695d571188e5233e6a64f66ba0e159d762c623c3a6b1e56fe9a9f5`

```dockerfile
```

-	Layers:
	-	`sha256:15815c3bd67687560e6da1821000f25a70e6cf98fdca3433cbf401268fa88bd0`  
		Last Modified: Fri, 26 Jun 2026 20:09:52 GMT  
		Size: 34.8 KB (34776 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:windowsservercore`

```console
$ docker pull docker@sha256:987caf6f2e47c9f384fe19fd22b5617110581779665d40a170753b34695692f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:c2b389f8cd8f11e2900d67bbacc9827f16489235e63656640d24fada8e762ad4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411561732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18049789f0008d9c3f37c8a8841127af1eba5771fe9a118eafcae58e504bc746`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:04:11 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:04:12 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:04:13 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:41 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:54 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:05:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2085c3db024288fc478fb62815fd678aad6214a4cadef12c88a10b0ae9c9e10`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39c0248b75a4ee2ef139a785aa92badfba4dc8b009e6ab4908d5ceef918ed03`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 382.1 KB (382133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69234e14e261dad77a6cf51b0eabba81dc5b3f965d5fed62bfc53c06d8a764a2`  
		Last Modified: Wed, 15 Jul 2026 23:05:17 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4539fd67326fa317750db628a2f1a4d3f5f9db73fd86c143a82bf467a32d47`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c846b5662624fd3ebfe0e3021130e8bdf7a33f0dab2b7eacbc540755b5ec51`  
		Last Modified: Wed, 15 Jul 2026 23:05:19 GMT  
		Size: 20.2 MB (20220063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425cca9457aad03f806d50fc3d834251cd234ac53ea7d666a7fff44f48733bfb`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85038b32ac498db56e754365261030c412c9b80e5a4ebb4816d8fecf747fc1f0`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99f228b2dc1ee2c7aae72c2161463b77c770632d7b9005720494fff7bd4915f`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7b534788fb6c61cc388746eb3fa65f616b4e735fd879464f59b69c2e4949b`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 23.9 MB (23944636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230bdaa6e2caa76f2b9b3b850efbc53d1495c485a8e25a9c8259ebf219016df`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45d7967f989527e856a0b6978996cd4e71c6358d2a53683d58e76a41667a50`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0823deb16c310112f9dd993e019c4763ffd60f5cf29c6b30055890a236117cff`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cdf81c4ffce0c932887e8e429e6ac7022ac9d7cd477986792e5c6c7467688`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 12.0 MB (11995157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:aeb9e3bd651814b4c9b55b662570d520cff6ce4ea5571f078d0320c1d79b2951
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214005146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84b934b73013ec7cdb7927925a7a10e5e99825ac7f9d4a9903901df8a8b6bae`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:02:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:03:46 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:03:47 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:03:48 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:05 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:07 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:26 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:27 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:04:44 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5552627ff15545aa9fdec68ddce1b24a3653c79d40f00b6e24d9e684d2d01c6b`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740e8aa81f0fb5274e4f063d5286087a65e41ac4ad7023d04821097dd1f32ee8`  
		Last Modified: Wed, 15 Jul 2026 23:04:53 GMT  
		Size: 476.8 KB (476847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4b0c9c42fa06c12a2965477d19454e005890d0f69e285c6fd70609987f0207`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3170927173373a955b2508380e29fd3b37a569fcd88bb757f1a2cfd1a9f7748`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c7eaa6a002e395c317fb7d998adf9243dfe2d6e0d014ad26e02aac0b6e82ee`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 20.1 MB (20092616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb52de32b635f2469a9591923d0b0339c32ed722a9e4dc56cbe77e76660e97a1`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb55b45b542e4f9d2f7de0dc787d2509cb4d3c3f0882cee01930f160ddaabe72`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1701a018adb739a0a4e29a9a8912fce71a5c9d4008fa92564c9c7a2928ac5fc4`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69728994b71846d2c478e3dc7368210e15268b588c22215bcd32308ad322e669`  
		Last Modified: Wed, 15 Jul 2026 23:04:56 GMT  
		Size: 23.9 MB (23913034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f9592843c383938cff645f97327f5f787098d0adfb6def0c6163ddbd233531`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d83fae979d85e9ab95e8fb1bdef481afb9be557c750459160629edb571e592`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbcb5371aee095d566dfc6237460f871409383a729e2005e25daac9973b0f8a`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d58224bf719f0162345746dfb24a7bbca8796e75db741bf8b2edf17071efa4c`  
		Last Modified: Wed, 15 Jul 2026 23:04:51 GMT  
		Size: 12.0 MB (11957735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:a29deb3372e442655c9e3913011579238eaca2953befe5ce6b9bd888d8ff5cdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:aeb9e3bd651814b4c9b55b662570d520cff6ce4ea5571f078d0320c1d79b2951
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2214005146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a84b934b73013ec7cdb7927925a7a10e5e99825ac7f9d4a9903901df8a8b6bae`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:02:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:03:46 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:03:47 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:03:48 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:05 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:07 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:26 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:27 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:04:44 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5552627ff15545aa9fdec68ddce1b24a3653c79d40f00b6e24d9e684d2d01c6b`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740e8aa81f0fb5274e4f063d5286087a65e41ac4ad7023d04821097dd1f32ee8`  
		Last Modified: Wed, 15 Jul 2026 23:04:53 GMT  
		Size: 476.8 KB (476847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4b0c9c42fa06c12a2965477d19454e005890d0f69e285c6fd70609987f0207`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3170927173373a955b2508380e29fd3b37a569fcd88bb757f1a2cfd1a9f7748`  
		Last Modified: Wed, 15 Jul 2026 23:04:52 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c7eaa6a002e395c317fb7d998adf9243dfe2d6e0d014ad26e02aac0b6e82ee`  
		Last Modified: Wed, 15 Jul 2026 23:04:54 GMT  
		Size: 20.1 MB (20092616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb52de32b635f2469a9591923d0b0339c32ed722a9e4dc56cbe77e76660e97a1`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb55b45b542e4f9d2f7de0dc787d2509cb4d3c3f0882cee01930f160ddaabe72`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1701a018adb739a0a4e29a9a8912fce71a5c9d4008fa92564c9c7a2928ac5fc4`  
		Last Modified: Wed, 15 Jul 2026 23:04:50 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69728994b71846d2c478e3dc7368210e15268b588c22215bcd32308ad322e669`  
		Last Modified: Wed, 15 Jul 2026 23:04:56 GMT  
		Size: 23.9 MB (23913034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f9592843c383938cff645f97327f5f787098d0adfb6def0c6163ddbd233531`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d83fae979d85e9ab95e8fb1bdef481afb9be557c750459160629edb571e592`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbcb5371aee095d566dfc6237460f871409383a729e2005e25daac9973b0f8a`  
		Last Modified: Wed, 15 Jul 2026 23:04:49 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d58224bf719f0162345746dfb24a7bbca8796e75db741bf8b2edf17071efa4c`  
		Last Modified: Wed, 15 Jul 2026 23:04:51 GMT  
		Size: 12.0 MB (11957735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:1dfd87c41615b541fc4f37949a0ce36d912f25e283496ecd7372b83897b656c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:c2b389f8cd8f11e2900d67bbacc9827f16489235e63656640d24fada8e762ad4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411561732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18049789f0008d9c3f37c8a8841127af1eba5771fe9a118eafcae58e504bc746`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:17 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:04:11 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 15 Jul 2026 23:04:12 GMT
ENV DOCKER_VERSION=29.6.1
# Wed, 15 Jul 2026 23:04:13 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.6.1.zip
# Wed, 15 Jul 2026 23:04:40 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:41 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.windows-amd64.exe
# Wed, 15 Jul 2026 23:04:42 GMT
ENV DOCKER_BUILDX_SHA256=8076395009787cd1d30c94edeb5d7ac3945273374fc162c00e9810c3e9325ebe
# Wed, 15 Jul 2026 23:04:52 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_VERSION=5.2.0
# Wed, 15 Jul 2026 23:04:53 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.2.0/docker-compose-windows-x86_64.exe
# Wed, 15 Jul 2026 23:04:54 GMT
ENV DOCKER_COMPOSE_SHA256=90c81af6cd12227d84665b01e14a89b07920c42d6d04e8f6f391a415f7a8d6a4
# Wed, 15 Jul 2026 23:05:08 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2085c3db024288fc478fb62815fd678aad6214a4cadef12c88a10b0ae9c9e10`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39c0248b75a4ee2ef139a785aa92badfba4dc8b009e6ab4908d5ceef918ed03`  
		Last Modified: Wed, 15 Jul 2026 23:05:18 GMT  
		Size: 382.1 KB (382133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69234e14e261dad77a6cf51b0eabba81dc5b3f965d5fed62bfc53c06d8a764a2`  
		Last Modified: Wed, 15 Jul 2026 23:05:17 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4539fd67326fa317750db628a2f1a4d3f5f9db73fd86c143a82bf467a32d47`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c846b5662624fd3ebfe0e3021130e8bdf7a33f0dab2b7eacbc540755b5ec51`  
		Last Modified: Wed, 15 Jul 2026 23:05:19 GMT  
		Size: 20.2 MB (20220063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425cca9457aad03f806d50fc3d834251cd234ac53ea7d666a7fff44f48733bfb`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85038b32ac498db56e754365261030c412c9b80e5a4ebb4816d8fecf747fc1f0`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99f228b2dc1ee2c7aae72c2161463b77c770632d7b9005720494fff7bd4915f`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7b534788fb6c61cc388746eb3fa65f616b4e735fd879464f59b69c2e4949b`  
		Last Modified: Wed, 15 Jul 2026 23:05:16 GMT  
		Size: 23.9 MB (23944636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230bdaa6e2caa76f2b9b3b850efbc53d1495c485a8e25a9c8259ebf219016df`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c45d7967f989527e856a0b6978996cd4e71c6358d2a53683d58e76a41667a50`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0823deb16c310112f9dd993e019c4763ffd60f5cf29c6b30055890a236117cff`  
		Last Modified: Wed, 15 Jul 2026 23:05:13 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:893cdf81c4ffce0c932887e8e429e6ac7022ac9d7cd477986792e5c6c7467688`  
		Last Modified: Wed, 15 Jul 2026 23:05:15 GMT  
		Size: 12.0 MB (11995157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
