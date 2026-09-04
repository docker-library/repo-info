<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:29`](#docker29)
-	[`docker:29-cli`](#docker29-cli)
-	[`docker:29-dind`](#docker29-dind)
-	[`docker:29-dind-rootless`](#docker29-dind-rootless)
-	[`docker:29-windowsservercore`](#docker29-windowsservercore)
-	[`docker:29-windowsservercore-ltsc2022`](#docker29-windowsservercore-ltsc2022)
-	[`docker:29-windowsservercore-ltsc2025`](#docker29-windowsservercore-ltsc2025)
-	[`docker:29.8`](#docker298)
-	[`docker:29.8-cli`](#docker298-cli)
-	[`docker:29.8-dind`](#docker298-dind)
-	[`docker:29.8-dind-rootless`](#docker298-dind-rootless)
-	[`docker:29.8-windowsservercore`](#docker298-windowsservercore)
-	[`docker:29.8-windowsservercore-ltsc2022`](#docker298-windowsservercore-ltsc2022)
-	[`docker:29.8-windowsservercore-ltsc2025`](#docker298-windowsservercore-ltsc2025)
-	[`docker:29.8.0`](#docker2980)
-	[`docker:29.8.0-alpine3.24`](#docker2980-alpine324)
-	[`docker:29.8.0-cli`](#docker2980-cli)
-	[`docker:29.8.0-cli-alpine3.24`](#docker2980-cli-alpine324)
-	[`docker:29.8.0-dind`](#docker2980-dind)
-	[`docker:29.8.0-dind-alpine3.24`](#docker2980-dind-alpine324)
-	[`docker:29.8.0-dind-rootless`](#docker2980-dind-rootless)
-	[`docker:29.8.0-windowsservercore`](#docker2980-windowsservercore)
-	[`docker:29.8.0-windowsservercore-ltsc2022`](#docker2980-windowsservercore-ltsc2022)
-	[`docker:29.8.0-windowsservercore-ltsc2025`](#docker2980-windowsservercore-ltsc2025)
-	[`docker:cli`](#dockercli)
-	[`docker:dind`](#dockerdind)
-	[`docker:dind-rootless`](#dockerdind-rootless)
-	[`docker:latest`](#dockerlatest)
-	[`docker:windowsservercore`](#dockerwindowsservercore)
-	[`docker:windowsservercore-ltsc2022`](#dockerwindowsservercore-ltsc2022)
-	[`docker:windowsservercore-ltsc2025`](#dockerwindowsservercore-ltsc2025)

## `docker:29`

```console
$ docker pull docker@sha256:3ef33f2e220b79ed3ef3b99d81746f06f306cd6340e2cb7331d17ae996e74cb6
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
$ docker pull docker@sha256:6acc6aaf783ac1c1100822e542534c3dab3f1d38782760b0bdcb688280574d9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.3 MB (147290177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cdb6d492106752d557cda50e628b88e7bb303a7eaea91a10bdf672b95ad4f52`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:11:10 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 19:11:11 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 19:11:11 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 19:11:13 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 19:11:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 19:11:13 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 19:11:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 19:11:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 19:11:15 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 19:11:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:15 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 20:30:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 20:30:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 20:30:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 20:30:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 20:30:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 20:30:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 20:30:15 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d37cd08d6a8f9360afa725cf5d505e231b99e725d7d10a5460ed28caf052a0d`  
		Last Modified: Mon, 31 Aug 2026 19:11:21 GMT  
		Size: 8.2 MB (8184218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9387f989641442ec4b21453ebcf143fd83a3cd250a8d7859806f900f203c29`  
		Last Modified: Mon, 31 Aug 2026 19:11:21 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd895a910f595d122d0f6b4156ba9cddba4c3e186a79c690617d518ab984f5a0`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 19.5 MB (19543199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f060871d91b060b1ec1528da71ac9d2873647d5bd0040c37839a9e60bca9b4cb`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 22.9 MB (22880301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd29c36f537e77602695723260687aeee03c6842ece0a0b7f7fc404b557333cc`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 15.8 MB (15783096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ce15e3085bad8cf9568f1a9725fff80a1f8dc7e2ba1d4e8adaa8aaf5bfc406`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38672a0ac8f1d5a38bde7dbb171485fbe5b2a633d5820d66b29a9506521e8c3`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5344821372070c5f9fed1da3625ffeaaf20831749ff06e383f2ee99e817b90b7`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8ec4efa5f39fc0946eb5ac0d468689687c5990b377a4a8de3237255cd65ce3`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 9.5 MB (9539472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7607780255e2202ff5fece306f5a214b15ea8d455bc28d5651730504c13875`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 91.4 KB (91380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95db3f39b9c9755ff5a6744cce8380a1289b8491317036269b96fc935a2e336`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66825af8442e4e8bf2e9c8d4a0a631a8419517f5403bb55c3f0767355e23f709`  
		Last Modified: Mon, 31 Aug 2026 20:30:28 GMT  
		Size: 67.4 MB (67413971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4867d7942bd40fe68eb74a90c18ee8f83efeae0021601f52694d797eaba7d30e`  
		Last Modified: Mon, 31 Aug 2026 20:30:27 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ce10ff4b4ecf31f35a8d5b93ad920439690f3c11196814361fa49a8c24552f`  
		Last Modified: Mon, 31 Aug 2026 20:30:27 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:71b65121bf4cf6219a3ecf7a5b1e581efd88893197cf08b28aff1fe7542ff4f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6685fababd48a0733770cb8e311a3aea34e1ff756fe32c3674b9cb25a730bcb`

```dockerfile
```

-	Layers:
	-	`sha256:524614de5c4c07df60d3f48222d01249b02606872dd9f0ad16f05752bca7b3e0`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v6

```console
$ docker pull docker@sha256:ba33b9a29cf168871927247f987ac0bb7ec8ce6e33c01670422aba7b7e6c479f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138609134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1242223751ec0f83ad94990e8b93d124b4e38ad659ece521aa5c981e084ea9f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 18:20:19 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 18:20:19 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 18:20:19 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 18:20:23 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 18:20:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 18:20:23 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 18:20:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 18:20:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 18:20:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 18:20:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 18:20:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:20:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 18:20:27 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 18:20:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 18:20:27 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 18:22:28 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 18:22:29 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 18:22:29 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 18:22:32 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 18:22:32 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 18:22:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 18:22:32 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0a5a018f64c91a8e5704d3b4039c120e9293f97d88e958ec13337721607bda`  
		Last Modified: Mon, 31 Aug 2026 18:20:33 GMT  
		Size: 8.1 MB (8085227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7275d6849b719e556a012ea60c464d64ba3f67450576fb1b7f57a3ed024b1d3`  
		Last Modified: Mon, 31 Aug 2026 18:20:33 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae5a3f578b6397ccd50972bc4e796807639da8f8cecd510d0df5bec15037d55f`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 18.2 MB (18176717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d95905b03c9bb3d675e1ca632dbade20689bc0f5d05c80a664d534fd508363c`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 21.5 MB (21504852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b28f633a59d9dd6bff0f19ba5176ad9a8775db390f85ec3a33f5b33fd84708`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 15.0 MB (14958273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe8afb65acc197e663d9d11e6494036b960ffdec4b10a1994ea7628a7e20f63`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d8bb07fd34aec2e6b5a7b12d47cee2530b16cab04158281975f98ec64381b8`  
		Last Modified: Mon, 31 Aug 2026 18:20:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7673a9f592963f40f9766b12cf6a4ba7a2246ba6a98bbe4693b4ff7a196c97a8`  
		Last Modified: Mon, 31 Aug 2026 18:20:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf308b17e8207af1ab2d646067bab6c8b5e4201dddcb3321d06c7c25e2fb17e`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 9.5 MB (9522600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ec74cf23a535eb4e66445306a0fb81b4ff7919914ade21b9ed6bdf0324f698`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 90.7 KB (90744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b68710ceb709a5f69aae68c141df82f1d2714dff086e6a3faf81db7419fbee`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f92c8284603e3154d0090288cbf4f4d7114d2b4ecfbbfd5f9bca8050156b85`  
		Last Modified: Mon, 31 Aug 2026 18:22:44 GMT  
		Size: 62.7 MB (62709116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3454fa926971f8c8ffc59be58308cd27d4dc5306f01f545f9ad7d6d00d6599`  
		Last Modified: Mon, 31 Aug 2026 18:22:43 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1626f53d3e55ba4c6054d1bfcbdfd41b82bb910873c14728a4eb039a2808867b`  
		Last Modified: Mon, 31 Aug 2026 18:22:43 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:f8a8e7efe02a373dbb013b4eb3b9d8391abb691d331ad619a45d04d7eff7d2f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9b9ab70252d31182d4644328fb94f8c184c04be5afc5dcba80fa5574cd02a7`

```dockerfile
```

-	Layers:
	-	`sha256:d4332da7b7db3cf66855429641d94f17576f593c5dac6afe134ddcb6cd6285cb`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v7

```console
$ docker pull docker@sha256:9ecbfb865f2208a7cfe2a2a979d06beb292d9ba148fdf4810034205357b2bf8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.5 MB (136499446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84293a716752a955a7f41d56f3ce3623b9f183b9820cae928fa0c84cd1917090`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:13:27 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 19:13:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 19:13:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 19:13:33 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 19:13:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 19:13:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 19:13:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 19:13:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 19:13:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 19:13:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:13:37 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 20:12:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 20:12:27 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 20:12:27 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 20:12:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 20:12:30 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 20:12:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 20:12:30 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a1b3335f5a569bc2faed8791c9723c590e6b4b0318d8cbc7a7d301f5aa32f2`  
		Last Modified: Mon, 31 Aug 2026 19:13:43 GMT  
		Size: 7.4 MB (7381338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba51ba79dd242cbe225c6d8e4deeb7f0f8ed80890db3acd84a177debda5bbb6`  
		Last Modified: Mon, 31 Aug 2026 19:13:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f6c1b308c04b2a0ed1b1f5e51913722c83d8ef8bb8dadb91a2e24eb6939aba`  
		Last Modified: Mon, 31 Aug 2026 19:13:44 GMT  
		Size: 18.2 MB (18160970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42473acafd93b244f4c3bafcaa09691e89dffffa9c0a51713b372275aa9c780`  
		Last Modified: Mon, 31 Aug 2026 19:13:44 GMT  
		Size: 21.5 MB (21487109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa977ed825f4843dc94118b0e466fb6867f0313ff187a6a9f031ec278ee9375`  
		Last Modified: Mon, 31 Aug 2026 19:13:45 GMT  
		Size: 14.9 MB (14945594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7a1f1b78041ce095f96e932f3ae25489af8b980d032ae7705e69994cd419b1`  
		Last Modified: Mon, 31 Aug 2026 19:13:45 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe54fc820ce3c325f181267d7f921c587150f131b4cce18a640935f6c7b493`  
		Last Modified: Mon, 31 Aug 2026 19:13:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867b32e22df8a0b48304624c71bd4c335a4b288525d435af6cfcad6d31d5de35`  
		Last Modified: Mon, 31 Aug 2026 19:13:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2208fafaaecddead87636f836c37e1db7b17f201b4831aed8002359cf905273f`  
		Last Modified: Mon, 31 Aug 2026 20:12:41 GMT  
		Size: 8.7 MB (8652556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab645a2fd92ed95e0393ce665ca105be79b7ea70d9d85fe8e28f751ee56737a7`  
		Last Modified: Mon, 31 Aug 2026 20:12:41 GMT  
		Size: 87.0 KB (87027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a01434e21e08569a43c4164284b2895cc4b43fc52f7ee24dd0f5299b6eeb1f`  
		Last Modified: Mon, 31 Aug 2026 20:12:40 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f46a342c7af244bf520a2fabf269d326a21490c2443b0c945af331a9c9e9b49`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 62.5 MB (62516082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2ae0f00fb4d944f5550e891dae3f9e87d6ba9e2ff4daacad2d82284f7164be`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799910b85099418cbc63ae86cf4206cf485e5c2333aedc38b4814545e028f84c`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:a3f30fcf52508ee48f5d0374708c558fc818b984c540c32bdf48ab109e8b04e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b654c3d6fe3b41539b1ca202bd4aa3a2b0573a7ab93d44be5cabf26d0608e31c`

```dockerfile
```

-	Layers:
	-	`sha256:b5246b35d3748df779790b1467a3ecd22f3fe97570e13cb88ee308a57d69437a`  
		Last Modified: Mon, 31 Aug 2026 20:12:40 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:1cf1cad2a305cb46c39d4b5d2920508fe8a4b81a8dcd2963cae3d72f7f3c8ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136751897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed1dc4514a7c57d11d569ee69aa54f3a4d4aeaa9ccb9e04877cbd56b8592b4d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 18:19:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 18:19:35 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 18:19:35 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 18:19:38 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 18:19:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 18:19:38 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 18:19:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 18:19:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 18:19:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 18:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 18:19:40 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 19:28:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 19:28:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 19:28:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 19:28:26 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b1971fe58e8f05049d914d7309634d77eb89221e1f4969c4274597b3d38011`  
		Last Modified: Mon, 31 Aug 2026 18:19:46 GMT  
		Size: 8.2 MB (8236332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9c71f8991041810ae667bb563b76a167627bcd163060d001dacc0df895af04`  
		Last Modified: Mon, 31 Aug 2026 18:19:45 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac6c492e1395379cff61f176e210e0225cf641031807d4b66acf91c0cdcc9cc`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 18.0 MB (17981578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b4d808d155c74557fbd31c8c01f45034e1934c6c4f904bb76bcffc824fab04`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 20.7 MB (20723311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468f9e8cc89eb885f7ff43e0cd1c27b444a33c5cac52223ecda3432a0e64a7b4`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 14.3 MB (14309336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c393ec93164ea67c57c7dd527faa4b438dbd45c43429ff2ab6d9474c6fc3f0df`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de56bd567886194ca4241fd286116bdcb21f3163715d90a5e273d0d1736d2f6`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2b38859dab066c0107627a59620053d77f1fedaf6cbf368995b7a2d47eaa10`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b920683393f457090edd72ec42ddf9dcd152fd300fe19e8f8700f5762ceaf4`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 10.1 MB (10119009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02fc1fd375a10c09108d8f5e1d01b3ac1553577cea85f495fa73c78916598164`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 100.0 KB (99972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2fc6eb588fbfd17d052221b437b9415c94e75988efa0a9be15e325a2166974`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd705720d846ee8c4539c9b330de3e947ddf27bd36cea5ce657e9aa31734d5`  
		Last Modified: Mon, 31 Aug 2026 19:28:38 GMT  
		Size: 61.1 MB (61091164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513d6862d8635ae871847c817564e4cd01da9e2499d11f7abca95a7ce0d5bc71`  
		Last Modified: Mon, 31 Aug 2026 19:28:37 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b41ac202ff907218c6fcba1f69bfec0626abab360f3873152ae0e9418a82081`  
		Last Modified: Mon, 31 Aug 2026 19:28:37 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:5cd43bc03969a794bbc9e3ab4b3d06c6e08b617e8cc9e0153d98d045bf3515d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e68e4a1149c9648562f15d2229f6e965bce1f7bf837a68ec227ba540ae6e681`

```dockerfile
```

-	Layers:
	-	`sha256:f4b9eea2d5651b26ce5f9b8fd3a6f4f6a38efe3cf6e9431f7b6129885d30edb5`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 34.8 KB (34784 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-cli`

```console
$ docker pull docker@sha256:eccaacfeed644c7de222ff047483568cb988dde95476fbaaf10ea2d04921bb66
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
$ docker pull docker@sha256:f5b8bb0333cfaa027640106e5f02e48b0a8e0c00f7165015f581d58783c76fcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66543804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3bf33f3d4c8a86745323554dad9fcfa84d16884c8fce55dee2f13be54d99b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:d8d989317bf4cf1622a01a949d2794e3b756f5e6ed7f1122c9d1d7f3b7c928cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c713d3a0596f9bd1fff4841bf5b897070215b4923f2de21aabfc5b50ec9e2e60`

```dockerfile
```

-	Layers:
	-	`sha256:a84963d1371cb9dc90bcadf5db6f2fff4d53e34fcfa9adb56255b8b6f464e253`  
		Last Modified: Fri, 04 Sep 2026 21:06:15 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:96779f5187b48b45837d3bff0d79d9b356bbe34758ea2ca5ed04587a2ff7e2e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62730675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86620a052456fbae7d2bacff6aa07a0514b7b06a95d8080a3dfd585761a54e04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:1f0b5c16c6c1d8d93344765dc8621f272aba40cfbfbfd72e30848a7213c59bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffd9122756c809637cdfbf298d1466105823d10aed8f6294149391a2d6e372b`

```dockerfile
```

-	Layers:
	-	`sha256:ba8fb255546c4ae17bd5bd5ce610c0e20c0100f7d5fd8096e93e008b23f83515`  
		Last Modified: Fri, 04 Sep 2026 21:08:39 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:44e8531e6e365253a33ff4c932d9e38c8bd474f5f5f95801e2b843f81cb5ffa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61690692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114df7ad8fd44f5d00d18c22726ab59bc6f16edd8f3c21ec4d6e47de3cc86d32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:005b7249ffc5c0b96592669e57dbe9e03f2cd030b8dbe8447854bfb5d11e1737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29d0c1d043268a6ae3f06110a948a1114b43693665419ffa36fdac1ba49d766c`

```dockerfile
```

-	Layers:
	-	`sha256:a29b2e52d3df1e2f263dfe521830d5c57a3644a10b2304dd0fe51197a2bfea7a`  
		Last Modified: Fri, 04 Sep 2026 21:09:00 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e3b2a54a2e4a4c8db2d0b89a1aa5e350238ccc4b219e3587537322975c0c56e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62142357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d597ef1bdd23acd1e4b47df9330cc610f3c2b356ad63bda4918c81c8c8c1d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:35540e2844c993f791c40ba2d334a923c00c403dda613d295975561233f76303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d45c9f084271c16e9bd6b694bba2183650ebf23b5a2974c7b8372e152d6122`

```dockerfile
```

-	Layers:
	-	`sha256:a298305a6dfe10d7e06cb799f6688ceaf0af2b2b53a17302268ec9f60adfc86c`  
		Last Modified: Fri, 04 Sep 2026 21:06:00 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind`

```console
$ docker pull docker@sha256:3ef33f2e220b79ed3ef3b99d81746f06f306cd6340e2cb7331d17ae996e74cb6
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
$ docker pull docker@sha256:6acc6aaf783ac1c1100822e542534c3dab3f1d38782760b0bdcb688280574d9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.3 MB (147290177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cdb6d492106752d557cda50e628b88e7bb303a7eaea91a10bdf672b95ad4f52`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:11:10 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 19:11:11 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 19:11:11 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 19:11:13 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 19:11:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 19:11:13 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 19:11:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 19:11:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 19:11:15 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 19:11:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:15 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 20:30:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 20:30:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 20:30:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 20:30:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 20:30:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 20:30:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 20:30:15 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d37cd08d6a8f9360afa725cf5d505e231b99e725d7d10a5460ed28caf052a0d`  
		Last Modified: Mon, 31 Aug 2026 19:11:21 GMT  
		Size: 8.2 MB (8184218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9387f989641442ec4b21453ebcf143fd83a3cd250a8d7859806f900f203c29`  
		Last Modified: Mon, 31 Aug 2026 19:11:21 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd895a910f595d122d0f6b4156ba9cddba4c3e186a79c690617d518ab984f5a0`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 19.5 MB (19543199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f060871d91b060b1ec1528da71ac9d2873647d5bd0040c37839a9e60bca9b4cb`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 22.9 MB (22880301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd29c36f537e77602695723260687aeee03c6842ece0a0b7f7fc404b557333cc`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 15.8 MB (15783096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ce15e3085bad8cf9568f1a9725fff80a1f8dc7e2ba1d4e8adaa8aaf5bfc406`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38672a0ac8f1d5a38bde7dbb171485fbe5b2a633d5820d66b29a9506521e8c3`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5344821372070c5f9fed1da3625ffeaaf20831749ff06e383f2ee99e817b90b7`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8ec4efa5f39fc0946eb5ac0d468689687c5990b377a4a8de3237255cd65ce3`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 9.5 MB (9539472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7607780255e2202ff5fece306f5a214b15ea8d455bc28d5651730504c13875`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 91.4 KB (91380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95db3f39b9c9755ff5a6744cce8380a1289b8491317036269b96fc935a2e336`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66825af8442e4e8bf2e9c8d4a0a631a8419517f5403bb55c3f0767355e23f709`  
		Last Modified: Mon, 31 Aug 2026 20:30:28 GMT  
		Size: 67.4 MB (67413971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4867d7942bd40fe68eb74a90c18ee8f83efeae0021601f52694d797eaba7d30e`  
		Last Modified: Mon, 31 Aug 2026 20:30:27 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ce10ff4b4ecf31f35a8d5b93ad920439690f3c11196814361fa49a8c24552f`  
		Last Modified: Mon, 31 Aug 2026 20:30:27 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:71b65121bf4cf6219a3ecf7a5b1e581efd88893197cf08b28aff1fe7542ff4f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6685fababd48a0733770cb8e311a3aea34e1ff756fe32c3674b9cb25a730bcb`

```dockerfile
```

-	Layers:
	-	`sha256:524614de5c4c07df60d3f48222d01249b02606872dd9f0ad16f05752bca7b3e0`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:ba33b9a29cf168871927247f987ac0bb7ec8ce6e33c01670422aba7b7e6c479f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138609134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1242223751ec0f83ad94990e8b93d124b4e38ad659ece521aa5c981e084ea9f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 18:20:19 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 18:20:19 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 18:20:19 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 18:20:23 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 18:20:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 18:20:23 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 18:20:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 18:20:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 18:20:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 18:20:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 18:20:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:20:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 18:20:27 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 18:20:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 18:20:27 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 18:22:28 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 18:22:29 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 18:22:29 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 18:22:32 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 18:22:32 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 18:22:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 18:22:32 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0a5a018f64c91a8e5704d3b4039c120e9293f97d88e958ec13337721607bda`  
		Last Modified: Mon, 31 Aug 2026 18:20:33 GMT  
		Size: 8.1 MB (8085227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7275d6849b719e556a012ea60c464d64ba3f67450576fb1b7f57a3ed024b1d3`  
		Last Modified: Mon, 31 Aug 2026 18:20:33 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae5a3f578b6397ccd50972bc4e796807639da8f8cecd510d0df5bec15037d55f`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 18.2 MB (18176717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d95905b03c9bb3d675e1ca632dbade20689bc0f5d05c80a664d534fd508363c`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 21.5 MB (21504852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b28f633a59d9dd6bff0f19ba5176ad9a8775db390f85ec3a33f5b33fd84708`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 15.0 MB (14958273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe8afb65acc197e663d9d11e6494036b960ffdec4b10a1994ea7628a7e20f63`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d8bb07fd34aec2e6b5a7b12d47cee2530b16cab04158281975f98ec64381b8`  
		Last Modified: Mon, 31 Aug 2026 18:20:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7673a9f592963f40f9766b12cf6a4ba7a2246ba6a98bbe4693b4ff7a196c97a8`  
		Last Modified: Mon, 31 Aug 2026 18:20:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf308b17e8207af1ab2d646067bab6c8b5e4201dddcb3321d06c7c25e2fb17e`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 9.5 MB (9522600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ec74cf23a535eb4e66445306a0fb81b4ff7919914ade21b9ed6bdf0324f698`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 90.7 KB (90744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b68710ceb709a5f69aae68c141df82f1d2714dff086e6a3faf81db7419fbee`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f92c8284603e3154d0090288cbf4f4d7114d2b4ecfbbfd5f9bca8050156b85`  
		Last Modified: Mon, 31 Aug 2026 18:22:44 GMT  
		Size: 62.7 MB (62709116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3454fa926971f8c8ffc59be58308cd27d4dc5306f01f545f9ad7d6d00d6599`  
		Last Modified: Mon, 31 Aug 2026 18:22:43 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1626f53d3e55ba4c6054d1bfcbdfd41b82bb910873c14728a4eb039a2808867b`  
		Last Modified: Mon, 31 Aug 2026 18:22:43 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:f8a8e7efe02a373dbb013b4eb3b9d8391abb691d331ad619a45d04d7eff7d2f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9b9ab70252d31182d4644328fb94f8c184c04be5afc5dcba80fa5574cd02a7`

```dockerfile
```

-	Layers:
	-	`sha256:d4332da7b7db3cf66855429641d94f17576f593c5dac6afe134ddcb6cd6285cb`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:9ecbfb865f2208a7cfe2a2a979d06beb292d9ba148fdf4810034205357b2bf8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.5 MB (136499446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84293a716752a955a7f41d56f3ce3623b9f183b9820cae928fa0c84cd1917090`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:13:27 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 19:13:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 19:13:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 19:13:33 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 19:13:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 19:13:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 19:13:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 19:13:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 19:13:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 19:13:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:13:37 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 20:12:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 20:12:27 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 20:12:27 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 20:12:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 20:12:30 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 20:12:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 20:12:30 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a1b3335f5a569bc2faed8791c9723c590e6b4b0318d8cbc7a7d301f5aa32f2`  
		Last Modified: Mon, 31 Aug 2026 19:13:43 GMT  
		Size: 7.4 MB (7381338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba51ba79dd242cbe225c6d8e4deeb7f0f8ed80890db3acd84a177debda5bbb6`  
		Last Modified: Mon, 31 Aug 2026 19:13:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f6c1b308c04b2a0ed1b1f5e51913722c83d8ef8bb8dadb91a2e24eb6939aba`  
		Last Modified: Mon, 31 Aug 2026 19:13:44 GMT  
		Size: 18.2 MB (18160970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42473acafd93b244f4c3bafcaa09691e89dffffa9c0a51713b372275aa9c780`  
		Last Modified: Mon, 31 Aug 2026 19:13:44 GMT  
		Size: 21.5 MB (21487109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa977ed825f4843dc94118b0e466fb6867f0313ff187a6a9f031ec278ee9375`  
		Last Modified: Mon, 31 Aug 2026 19:13:45 GMT  
		Size: 14.9 MB (14945594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7a1f1b78041ce095f96e932f3ae25489af8b980d032ae7705e69994cd419b1`  
		Last Modified: Mon, 31 Aug 2026 19:13:45 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe54fc820ce3c325f181267d7f921c587150f131b4cce18a640935f6c7b493`  
		Last Modified: Mon, 31 Aug 2026 19:13:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867b32e22df8a0b48304624c71bd4c335a4b288525d435af6cfcad6d31d5de35`  
		Last Modified: Mon, 31 Aug 2026 19:13:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2208fafaaecddead87636f836c37e1db7b17f201b4831aed8002359cf905273f`  
		Last Modified: Mon, 31 Aug 2026 20:12:41 GMT  
		Size: 8.7 MB (8652556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab645a2fd92ed95e0393ce665ca105be79b7ea70d9d85fe8e28f751ee56737a7`  
		Last Modified: Mon, 31 Aug 2026 20:12:41 GMT  
		Size: 87.0 KB (87027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a01434e21e08569a43c4164284b2895cc4b43fc52f7ee24dd0f5299b6eeb1f`  
		Last Modified: Mon, 31 Aug 2026 20:12:40 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f46a342c7af244bf520a2fabf269d326a21490c2443b0c945af331a9c9e9b49`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 62.5 MB (62516082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2ae0f00fb4d944f5550e891dae3f9e87d6ba9e2ff4daacad2d82284f7164be`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799910b85099418cbc63ae86cf4206cf485e5c2333aedc38b4814545e028f84c`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:a3f30fcf52508ee48f5d0374708c558fc818b984c540c32bdf48ab109e8b04e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b654c3d6fe3b41539b1ca202bd4aa3a2b0573a7ab93d44be5cabf26d0608e31c`

```dockerfile
```

-	Layers:
	-	`sha256:b5246b35d3748df779790b1467a3ecd22f3fe97570e13cb88ee308a57d69437a`  
		Last Modified: Mon, 31 Aug 2026 20:12:40 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:1cf1cad2a305cb46c39d4b5d2920508fe8a4b81a8dcd2963cae3d72f7f3c8ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136751897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed1dc4514a7c57d11d569ee69aa54f3a4d4aeaa9ccb9e04877cbd56b8592b4d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 18:19:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 18:19:35 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 18:19:35 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 18:19:38 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 18:19:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 18:19:38 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 18:19:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 18:19:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 18:19:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 18:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 18:19:40 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 19:28:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 19:28:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 19:28:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 19:28:26 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b1971fe58e8f05049d914d7309634d77eb89221e1f4969c4274597b3d38011`  
		Last Modified: Mon, 31 Aug 2026 18:19:46 GMT  
		Size: 8.2 MB (8236332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9c71f8991041810ae667bb563b76a167627bcd163060d001dacc0df895af04`  
		Last Modified: Mon, 31 Aug 2026 18:19:45 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac6c492e1395379cff61f176e210e0225cf641031807d4b66acf91c0cdcc9cc`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 18.0 MB (17981578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b4d808d155c74557fbd31c8c01f45034e1934c6c4f904bb76bcffc824fab04`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 20.7 MB (20723311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468f9e8cc89eb885f7ff43e0cd1c27b444a33c5cac52223ecda3432a0e64a7b4`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 14.3 MB (14309336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c393ec93164ea67c57c7dd527faa4b438dbd45c43429ff2ab6d9474c6fc3f0df`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de56bd567886194ca4241fd286116bdcb21f3163715d90a5e273d0d1736d2f6`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2b38859dab066c0107627a59620053d77f1fedaf6cbf368995b7a2d47eaa10`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b920683393f457090edd72ec42ddf9dcd152fd300fe19e8f8700f5762ceaf4`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 10.1 MB (10119009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02fc1fd375a10c09108d8f5e1d01b3ac1553577cea85f495fa73c78916598164`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 100.0 KB (99972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2fc6eb588fbfd17d052221b437b9415c94e75988efa0a9be15e325a2166974`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd705720d846ee8c4539c9b330de3e947ddf27bd36cea5ce657e9aa31734d5`  
		Last Modified: Mon, 31 Aug 2026 19:28:38 GMT  
		Size: 61.1 MB (61091164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513d6862d8635ae871847c817564e4cd01da9e2499d11f7abca95a7ce0d5bc71`  
		Last Modified: Mon, 31 Aug 2026 19:28:37 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b41ac202ff907218c6fcba1f69bfec0626abab360f3873152ae0e9418a82081`  
		Last Modified: Mon, 31 Aug 2026 19:28:37 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:5cd43bc03969a794bbc9e3ab4b3d06c6e08b617e8cc9e0153d98d045bf3515d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e68e4a1149c9648562f15d2229f6e965bce1f7bf837a68ec227ba540ae6e681`

```dockerfile
```

-	Layers:
	-	`sha256:f4b9eea2d5651b26ce5f9b8fd3a6f4f6a38efe3cf6e9431f7b6129885d30edb5`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 34.8 KB (34784 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:ec3201de648f98b94882e4dd8a3d30df8b3ca6723a242fab76150f25127e194e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:b7260fa07417377325640c1286dd7e4da6f786a24cd04841cf1394156cefb450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.9 MB (162869908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c413369499ca1b6f70c5033c546abacb462885408be35123f371303d80e00674`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:11:10 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 19:11:11 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 19:11:11 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 19:11:13 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 19:11:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 19:11:13 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 19:11:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 19:11:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 19:11:15 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 19:11:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:15 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 20:30:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 20:30:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 20:30:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 20:30:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 20:30:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 20:30:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 20:30:15 GMT
CMD []
# Mon, 31 Aug 2026 21:12:36 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Mon, 31 Aug 2026 21:12:36 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Mon, 31 Aug 2026 21:12:36 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 21:12:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Mon, 31 Aug 2026 21:12:37 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Mon, 31 Aug 2026 21:12:37 GMT
VOLUME [/home/rootless/.local/share/docker]
# Mon, 31 Aug 2026 21:12:37 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d37cd08d6a8f9360afa725cf5d505e231b99e725d7d10a5460ed28caf052a0d`  
		Last Modified: Mon, 31 Aug 2026 19:11:21 GMT  
		Size: 8.2 MB (8184218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9387f989641442ec4b21453ebcf143fd83a3cd250a8d7859806f900f203c29`  
		Last Modified: Mon, 31 Aug 2026 19:11:21 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd895a910f595d122d0f6b4156ba9cddba4c3e186a79c690617d518ab984f5a0`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 19.5 MB (19543199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f060871d91b060b1ec1528da71ac9d2873647d5bd0040c37839a9e60bca9b4cb`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 22.9 MB (22880301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd29c36f537e77602695723260687aeee03c6842ece0a0b7f7fc404b557333cc`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 15.8 MB (15783096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ce15e3085bad8cf9568f1a9725fff80a1f8dc7e2ba1d4e8adaa8aaf5bfc406`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38672a0ac8f1d5a38bde7dbb171485fbe5b2a633d5820d66b29a9506521e8c3`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5344821372070c5f9fed1da3625ffeaaf20831749ff06e383f2ee99e817b90b7`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8ec4efa5f39fc0946eb5ac0d468689687c5990b377a4a8de3237255cd65ce3`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 9.5 MB (9539472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7607780255e2202ff5fece306f5a214b15ea8d455bc28d5651730504c13875`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 91.4 KB (91380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95db3f39b9c9755ff5a6744cce8380a1289b8491317036269b96fc935a2e336`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66825af8442e4e8bf2e9c8d4a0a631a8419517f5403bb55c3f0767355e23f709`  
		Last Modified: Mon, 31 Aug 2026 20:30:28 GMT  
		Size: 67.4 MB (67413971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4867d7942bd40fe68eb74a90c18ee8f83efeae0021601f52694d797eaba7d30e`  
		Last Modified: Mon, 31 Aug 2026 20:30:27 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ce10ff4b4ecf31f35a8d5b93ad920439690f3c11196814361fa49a8c24552f`  
		Last Modified: Mon, 31 Aug 2026 20:30:27 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a105b93a1a6059ff88dd88f715e566c01f58392859602d1a212d4e39ef464b97`  
		Last Modified: Mon, 31 Aug 2026 21:12:43 GMT  
		Size: 3.5 MB (3471358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e799724df157cb354135d725fac7a496c0e5b5f45338527be2a03c39fbf5ff2`  
		Last Modified: Mon, 31 Aug 2026 21:12:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eada33a50524720a8e689d7ba40ada3e3758f7cd4cbb73fe31734bd7d27a7468`  
		Last Modified: Mon, 31 Aug 2026 21:12:42 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc43369fc65dc1753197ccafd4c6c1ad59fd93282a34f52575fcf06e5dca5ee`  
		Last Modified: Mon, 31 Aug 2026 21:12:43 GMT  
		Size: 12.1 MB (12107032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3933fcb3755dcef0ff87a54201dcd03967d950d43d016d2a6d91b96c49c9e7a`  
		Last Modified: Mon, 31 Aug 2026 21:12:43 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:2e31a9d09c14f558d7b292c2bb5a7577dfbf4c7b7f9223778dc93f4f5ab06c9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5e7b24e030b4dd5556b9245e67f6c242dba4c81131fa4a38af656f3501070b`

```dockerfile
```

-	Layers:
	-	`sha256:9d7ca58c06621588626d504c0827634e4a16cbbec16458627930a53dfc842107`  
		Last Modified: Mon, 31 Aug 2026 21:12:42 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cac84af5928c5d88e920165ce675b17c03ab2165e5418abb3c0c25cb8a1e3cbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151442237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7bce8af1abd7d0a55e376f6e9f0fcdf5d2939b82359bb1b9817786c47cb5ce6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 18:19:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 18:19:35 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 18:19:35 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 18:19:38 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 18:19:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 18:19:38 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 18:19:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 18:19:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 18:19:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 18:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 18:19:40 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 19:28:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 19:28:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 19:28:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 19:28:26 GMT
CMD []
# Mon, 31 Aug 2026 20:12:56 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Mon, 31 Aug 2026 20:12:56 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Mon, 31 Aug 2026 20:12:56 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 20:12:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Mon, 31 Aug 2026 20:12:57 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Mon, 31 Aug 2026 20:12:57 GMT
VOLUME [/home/rootless/.local/share/docker]
# Mon, 31 Aug 2026 20:12:57 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b1971fe58e8f05049d914d7309634d77eb89221e1f4969c4274597b3d38011`  
		Last Modified: Mon, 31 Aug 2026 18:19:46 GMT  
		Size: 8.2 MB (8236332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9c71f8991041810ae667bb563b76a167627bcd163060d001dacc0df895af04`  
		Last Modified: Mon, 31 Aug 2026 18:19:45 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac6c492e1395379cff61f176e210e0225cf641031807d4b66acf91c0cdcc9cc`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 18.0 MB (17981578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b4d808d155c74557fbd31c8c01f45034e1934c6c4f904bb76bcffc824fab04`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 20.7 MB (20723311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468f9e8cc89eb885f7ff43e0cd1c27b444a33c5cac52223ecda3432a0e64a7b4`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 14.3 MB (14309336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c393ec93164ea67c57c7dd527faa4b438dbd45c43429ff2ab6d9474c6fc3f0df`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de56bd567886194ca4241fd286116bdcb21f3163715d90a5e273d0d1736d2f6`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2b38859dab066c0107627a59620053d77f1fedaf6cbf368995b7a2d47eaa10`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b920683393f457090edd72ec42ddf9dcd152fd300fe19e8f8700f5762ceaf4`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 10.1 MB (10119009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02fc1fd375a10c09108d8f5e1d01b3ac1553577cea85f495fa73c78916598164`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 100.0 KB (99972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2fc6eb588fbfd17d052221b437b9415c94e75988efa0a9be15e325a2166974`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd705720d846ee8c4539c9b330de3e947ddf27bd36cea5ce657e9aa31734d5`  
		Last Modified: Mon, 31 Aug 2026 19:28:38 GMT  
		Size: 61.1 MB (61091164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513d6862d8635ae871847c817564e4cd01da9e2499d11f7abca95a7ce0d5bc71`  
		Last Modified: Mon, 31 Aug 2026 19:28:37 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b41ac202ff907218c6fcba1f69bfec0626abab360f3873152ae0e9418a82081`  
		Last Modified: Mon, 31 Aug 2026 19:28:37 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24e7195b55421df78843dfa2ce3541975fc1f3fbc3d59ee7f97344c26324216`  
		Last Modified: Mon, 31 Aug 2026 20:13:02 GMT  
		Size: 3.4 MB (3448909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737b6ba8a946b65d2afa379f6ddbde9b97c3dd9846c5f20fa0ac7060e630e71e`  
		Last Modified: Mon, 31 Aug 2026 20:13:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49de71c222d52d56203a2bd6fa12469fdf1b956410d41747125e3babba8f9a64`  
		Last Modified: Mon, 31 Aug 2026 20:13:02 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af1b7ee85fc5c22a51fd7768c66e469ed91866412888f3b65ab14da85635068`  
		Last Modified: Mon, 31 Aug 2026 20:13:02 GMT  
		Size: 11.2 MB (11240090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95299d9f7bd4ca2be62ba134b22520626265e988325f2aecf4dab8b2031f5835`  
		Last Modified: Mon, 31 Aug 2026 20:13:03 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:da3a0e57811ed72223d1d9ce68454c4b543385029b767a7181a3df1e4ddc258f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9cc72de8501623cd0ca7078c562a62d61b9cce8369623c8bf9119d4c53d25cf`

```dockerfile
```

-	Layers:
	-	`sha256:9367e41f6d17d217023113aaec86a04785d048b31d0fbf7c28fb9b9cc1faaf28`  
		Last Modified: Mon, 31 Aug 2026 20:13:02 GMT  
		Size: 30.7 KB (30663 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:381483bce27fba2118caf4d56677aa9f26dfbcfe439cf40a53d8b8d259cd95aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull docker@sha256:1d69a266cc5724a69acb717bca06e61197ca594b7d7c01b6fadf6e8e006328a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2497996538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a889a96d7a10b0da8eda9a7a355ff5d6dfa7c1a858f4c487b08122018257ae1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 04 Sep 2026 21:05:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:29 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:30 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:31 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:07:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:07:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:07:12 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bc90c028b577bfb3ba1a6bf2a81063a8edda7a81640b5290cbbfa8e00a5ee8`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7eb5452e5507373f5a15d7bafdf63b611b75eafcff908790bf15ba690e460e`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 386.3 KB (386286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91376a166d58a5775066a9c2651297557742cd11c4b245c6c14eaab80afd354`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681b3c3e9fc1d98bb4bc7fa91bc6ca4405238b40e551b981d4ad6a725c258a60`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5adac1ef2d0065ee256cb32fb6731ff2741855399651ce40f00f5598fad0719`  
		Last Modified: Fri, 04 Sep 2026 21:07:21 GMT  
		Size: 20.9 MB (20922137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f87cd85cbd0116f4f8ad286288aab8747ea157bd1492a90b56940af638bfb58`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec0d361f1ec20624a14dd76d01ec8c980c4b60471ee94f809d5041ed3e1dc3`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff5b4719988fc689cab3219a99f099a68f2b30e629bf5faf8ab07f4d7494bb1`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11caab8a6aa5b00b82113facf56e73fd3ae11fe996926194fa3704ab18c319a`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 24.0 MB (24007443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d9505401d0f17d361f4644bbe18a93db1f5e5df41cd749a2ae0291fced5edc`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dfa8cde90f383566a6fb9c13931b737c448bf71a365581276c0c40c490f7908`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c90ff0ced5d86874c888c06df3d8bb343e3d9e773de2adff793602b8df5f79`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32611f2ce57453a5ddb6e14965fe47e49b8a76d66fd3883a281c5fbd22f88293`  
		Last Modified: Fri, 04 Sep 2026 21:07:18 GMT  
		Size: 11.9 MB (11883638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull docker@sha256:0895671a43d42e56cd7a697193a88a454d4b0625642784019b4a0c47f9bf4237
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2241093136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e5ef0ec5f1f92316d46113778717942c683539035e1ecd0518433e66d70b10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 04 Sep 2026 21:05:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:22 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:06:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:06:58 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af679bec006459bf8d23d10318897132b8303235e96208074ca7cb6f69a6f8`  
		Last Modified: Fri, 04 Sep 2026 21:07:07 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348fe597a321a8138e890cc252331dbc1549d62f0d007509d5f1360dd0de1643`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 360.8 KB (360829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a419121314bc37f537aec7dac1dc2208fe8a8ef7185ceb553119cd65363b665e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e9174e968c20d6667121eb2f0d4c167c6a98728bfba40766307a5c5a7bd84e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8339abef71bce0cdfbce4ff59e738ee263e959ad763b5ace293d016e4dc92b1d`  
		Last Modified: Fri, 04 Sep 2026 21:07:08 GMT  
		Size: 20.9 MB (20887234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d973ea452b7db8e938e60c647b1231d9879760656a4000357681b70e42c7f1bb`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bb8d245334fce6a8ac8b044e6466890685d0a06e002b93c801554783c4e84f`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bf67a975465a9c630f7f75d518639bd4ceaa23b01c21b7a942ad800d3cc83d`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297eebc68c30eb2f574c31dcfc28c4de630bde3349fe6a8fabcb49582fe50739`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 24.0 MB (23982111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a64f02a29abe917fb37a462fb5d67600e777bdbffeb5dc20ee527a6307a209`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a062af31ab0d1fc9fad6c8ebb241f1ff7517325ebe372602a61c07413e5c21a3`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defadbf0e3d4794f792445d09c615f538d811163385bfff0c898f7ce3b1ba2e2`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0070ff774e26a6f86239fb865e898ca6f998d343ed97600685cb6fbe5a865a9`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 11.9 MB (11853697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:170f51606a5d2d5e3e19c9d843c7e0dafffbeef30ce7af35dc5bf7132a51889c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull docker@sha256:0895671a43d42e56cd7a697193a88a454d4b0625642784019b4a0c47f9bf4237
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2241093136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e5ef0ec5f1f92316d46113778717942c683539035e1ecd0518433e66d70b10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 04 Sep 2026 21:05:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:22 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:06:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:06:58 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af679bec006459bf8d23d10318897132b8303235e96208074ca7cb6f69a6f8`  
		Last Modified: Fri, 04 Sep 2026 21:07:07 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348fe597a321a8138e890cc252331dbc1549d62f0d007509d5f1360dd0de1643`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 360.8 KB (360829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a419121314bc37f537aec7dac1dc2208fe8a8ef7185ceb553119cd65363b665e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e9174e968c20d6667121eb2f0d4c167c6a98728bfba40766307a5c5a7bd84e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8339abef71bce0cdfbce4ff59e738ee263e959ad763b5ace293d016e4dc92b1d`  
		Last Modified: Fri, 04 Sep 2026 21:07:08 GMT  
		Size: 20.9 MB (20887234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d973ea452b7db8e938e60c647b1231d9879760656a4000357681b70e42c7f1bb`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bb8d245334fce6a8ac8b044e6466890685d0a06e002b93c801554783c4e84f`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bf67a975465a9c630f7f75d518639bd4ceaa23b01c21b7a942ad800d3cc83d`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297eebc68c30eb2f574c31dcfc28c4de630bde3349fe6a8fabcb49582fe50739`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 24.0 MB (23982111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a64f02a29abe917fb37a462fb5d67600e777bdbffeb5dc20ee527a6307a209`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a062af31ab0d1fc9fad6c8ebb241f1ff7517325ebe372602a61c07413e5c21a3`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defadbf0e3d4794f792445d09c615f538d811163385bfff0c898f7ce3b1ba2e2`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0070ff774e26a6f86239fb865e898ca6f998d343ed97600685cb6fbe5a865a9`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 11.9 MB (11853697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:f85b670babfb84f8c4a9cec9b6d98ae803b0c11188c028d77e2ac4d88125e733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `docker:29-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull docker@sha256:1d69a266cc5724a69acb717bca06e61197ca594b7d7c01b6fadf6e8e006328a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2497996538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a889a96d7a10b0da8eda9a7a355ff5d6dfa7c1a858f4c487b08122018257ae1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 04 Sep 2026 21:05:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:29 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:30 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:31 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:07:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:07:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:07:12 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bc90c028b577bfb3ba1a6bf2a81063a8edda7a81640b5290cbbfa8e00a5ee8`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7eb5452e5507373f5a15d7bafdf63b611b75eafcff908790bf15ba690e460e`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 386.3 KB (386286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91376a166d58a5775066a9c2651297557742cd11c4b245c6c14eaab80afd354`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681b3c3e9fc1d98bb4bc7fa91bc6ca4405238b40e551b981d4ad6a725c258a60`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5adac1ef2d0065ee256cb32fb6731ff2741855399651ce40f00f5598fad0719`  
		Last Modified: Fri, 04 Sep 2026 21:07:21 GMT  
		Size: 20.9 MB (20922137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f87cd85cbd0116f4f8ad286288aab8747ea157bd1492a90b56940af638bfb58`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec0d361f1ec20624a14dd76d01ec8c980c4b60471ee94f809d5041ed3e1dc3`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff5b4719988fc689cab3219a99f099a68f2b30e629bf5faf8ab07f4d7494bb1`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11caab8a6aa5b00b82113facf56e73fd3ae11fe996926194fa3704ab18c319a`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 24.0 MB (24007443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d9505401d0f17d361f4644bbe18a93db1f5e5df41cd749a2ae0291fced5edc`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dfa8cde90f383566a6fb9c13931b737c448bf71a365581276c0c40c490f7908`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c90ff0ced5d86874c888c06df3d8bb343e3d9e773de2adff793602b8df5f79`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32611f2ce57453a5ddb6e14965fe47e49b8a76d66fd3883a281c5fbd22f88293`  
		Last Modified: Fri, 04 Sep 2026 21:07:18 GMT  
		Size: 11.9 MB (11883638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8`

```console
$ docker pull docker@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `docker:29.8-cli`

```console
$ docker pull docker@sha256:eccaacfeed644c7de222ff047483568cb988dde95476fbaaf10ea2d04921bb66
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

### `docker:29.8-cli` - linux; amd64

```console
$ docker pull docker@sha256:f5b8bb0333cfaa027640106e5f02e48b0a8e0c00f7165015f581d58783c76fcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66543804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3bf33f3d4c8a86745323554dad9fcfa84d16884c8fce55dee2f13be54d99b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.8-cli` - unknown; unknown

```console
$ docker pull docker@sha256:d8d989317bf4cf1622a01a949d2794e3b756f5e6ed7f1122c9d1d7f3b7c928cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c713d3a0596f9bd1fff4841bf5b897070215b4923f2de21aabfc5b50ec9e2e60`

```dockerfile
```

-	Layers:
	-	`sha256:a84963d1371cb9dc90bcadf5db6f2fff4d53e34fcfa9adb56255b8b6f464e253`  
		Last Modified: Fri, 04 Sep 2026 21:06:15 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:96779f5187b48b45837d3bff0d79d9b356bbe34758ea2ca5ed04587a2ff7e2e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62730675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86620a052456fbae7d2bacff6aa07a0514b7b06a95d8080a3dfd585761a54e04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.8-cli` - unknown; unknown

```console
$ docker pull docker@sha256:1f0b5c16c6c1d8d93344765dc8621f272aba40cfbfbfd72e30848a7213c59bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffd9122756c809637cdfbf298d1466105823d10aed8f6294149391a2d6e372b`

```dockerfile
```

-	Layers:
	-	`sha256:ba8fb255546c4ae17bd5bd5ce610c0e20c0100f7d5fd8096e93e008b23f83515`  
		Last Modified: Fri, 04 Sep 2026 21:08:39 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:44e8531e6e365253a33ff4c932d9e38c8bd474f5f5f95801e2b843f81cb5ffa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61690692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114df7ad8fd44f5d00d18c22726ab59bc6f16edd8f3c21ec4d6e47de3cc86d32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.8-cli` - unknown; unknown

```console
$ docker pull docker@sha256:005b7249ffc5c0b96592669e57dbe9e03f2cd030b8dbe8447854bfb5d11e1737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29d0c1d043268a6ae3f06110a948a1114b43693665419ffa36fdac1ba49d766c`

```dockerfile
```

-	Layers:
	-	`sha256:a29b2e52d3df1e2f263dfe521830d5c57a3644a10b2304dd0fe51197a2bfea7a`  
		Last Modified: Fri, 04 Sep 2026 21:09:00 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e3b2a54a2e4a4c8db2d0b89a1aa5e350238ccc4b219e3587537322975c0c56e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62142357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d597ef1bdd23acd1e4b47df9330cc610f3c2b356ad63bda4918c81c8c8c1d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.8-cli` - unknown; unknown

```console
$ docker pull docker@sha256:35540e2844c993f791c40ba2d334a923c00c403dda613d295975561233f76303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d45c9f084271c16e9bd6b694bba2183650ebf23b5a2974c7b8372e152d6122`

```dockerfile
```

-	Layers:
	-	`sha256:a298305a6dfe10d7e06cb799f6688ceaf0af2b2b53a17302268ec9f60adfc86c`  
		Last Modified: Fri, 04 Sep 2026 21:06:00 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8-dind`

```console
$ docker pull docker@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `docker:29.8-dind-rootless`

```console
$ docker pull docker@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `docker:29.8-windowsservercore`

```console
$ docker pull docker@sha256:381483bce27fba2118caf4d56677aa9f26dfbcfe439cf40a53d8b8d259cd95aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `docker:29.8-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull docker@sha256:1d69a266cc5724a69acb717bca06e61197ca594b7d7c01b6fadf6e8e006328a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2497996538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a889a96d7a10b0da8eda9a7a355ff5d6dfa7c1a858f4c487b08122018257ae1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 04 Sep 2026 21:05:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:29 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:30 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:31 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:07:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:07:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:07:12 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bc90c028b577bfb3ba1a6bf2a81063a8edda7a81640b5290cbbfa8e00a5ee8`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7eb5452e5507373f5a15d7bafdf63b611b75eafcff908790bf15ba690e460e`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 386.3 KB (386286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91376a166d58a5775066a9c2651297557742cd11c4b245c6c14eaab80afd354`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681b3c3e9fc1d98bb4bc7fa91bc6ca4405238b40e551b981d4ad6a725c258a60`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5adac1ef2d0065ee256cb32fb6731ff2741855399651ce40f00f5598fad0719`  
		Last Modified: Fri, 04 Sep 2026 21:07:21 GMT  
		Size: 20.9 MB (20922137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f87cd85cbd0116f4f8ad286288aab8747ea157bd1492a90b56940af638bfb58`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec0d361f1ec20624a14dd76d01ec8c980c4b60471ee94f809d5041ed3e1dc3`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff5b4719988fc689cab3219a99f099a68f2b30e629bf5faf8ab07f4d7494bb1`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11caab8a6aa5b00b82113facf56e73fd3ae11fe996926194fa3704ab18c319a`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 24.0 MB (24007443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d9505401d0f17d361f4644bbe18a93db1f5e5df41cd749a2ae0291fced5edc`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dfa8cde90f383566a6fb9c13931b737c448bf71a365581276c0c40c490f7908`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c90ff0ced5d86874c888c06df3d8bb343e3d9e773de2adff793602b8df5f79`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32611f2ce57453a5ddb6e14965fe47e49b8a76d66fd3883a281c5fbd22f88293`  
		Last Modified: Fri, 04 Sep 2026 21:07:18 GMT  
		Size: 11.9 MB (11883638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.8-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull docker@sha256:0895671a43d42e56cd7a697193a88a454d4b0625642784019b4a0c47f9bf4237
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2241093136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e5ef0ec5f1f92316d46113778717942c683539035e1ecd0518433e66d70b10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 04 Sep 2026 21:05:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:22 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:06:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:06:58 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af679bec006459bf8d23d10318897132b8303235e96208074ca7cb6f69a6f8`  
		Last Modified: Fri, 04 Sep 2026 21:07:07 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348fe597a321a8138e890cc252331dbc1549d62f0d007509d5f1360dd0de1643`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 360.8 KB (360829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a419121314bc37f537aec7dac1dc2208fe8a8ef7185ceb553119cd65363b665e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e9174e968c20d6667121eb2f0d4c167c6a98728bfba40766307a5c5a7bd84e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8339abef71bce0cdfbce4ff59e738ee263e959ad763b5ace293d016e4dc92b1d`  
		Last Modified: Fri, 04 Sep 2026 21:07:08 GMT  
		Size: 20.9 MB (20887234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d973ea452b7db8e938e60c647b1231d9879760656a4000357681b70e42c7f1bb`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bb8d245334fce6a8ac8b044e6466890685d0a06e002b93c801554783c4e84f`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bf67a975465a9c630f7f75d518639bd4ceaa23b01c21b7a942ad800d3cc83d`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297eebc68c30eb2f574c31dcfc28c4de630bde3349fe6a8fabcb49582fe50739`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 24.0 MB (23982111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a64f02a29abe917fb37a462fb5d67600e777bdbffeb5dc20ee527a6307a209`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a062af31ab0d1fc9fad6c8ebb241f1ff7517325ebe372602a61c07413e5c21a3`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defadbf0e3d4794f792445d09c615f538d811163385bfff0c898f7ce3b1ba2e2`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0070ff774e26a6f86239fb865e898ca6f998d343ed97600685cb6fbe5a865a9`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 11.9 MB (11853697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:170f51606a5d2d5e3e19c9d843c7e0dafffbeef30ce7af35dc5bf7132a51889c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `docker:29.8-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull docker@sha256:0895671a43d42e56cd7a697193a88a454d4b0625642784019b4a0c47f9bf4237
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2241093136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e5ef0ec5f1f92316d46113778717942c683539035e1ecd0518433e66d70b10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 04 Sep 2026 21:05:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:22 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:06:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:06:58 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af679bec006459bf8d23d10318897132b8303235e96208074ca7cb6f69a6f8`  
		Last Modified: Fri, 04 Sep 2026 21:07:07 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348fe597a321a8138e890cc252331dbc1549d62f0d007509d5f1360dd0de1643`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 360.8 KB (360829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a419121314bc37f537aec7dac1dc2208fe8a8ef7185ceb553119cd65363b665e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e9174e968c20d6667121eb2f0d4c167c6a98728bfba40766307a5c5a7bd84e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8339abef71bce0cdfbce4ff59e738ee263e959ad763b5ace293d016e4dc92b1d`  
		Last Modified: Fri, 04 Sep 2026 21:07:08 GMT  
		Size: 20.9 MB (20887234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d973ea452b7db8e938e60c647b1231d9879760656a4000357681b70e42c7f1bb`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bb8d245334fce6a8ac8b044e6466890685d0a06e002b93c801554783c4e84f`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bf67a975465a9c630f7f75d518639bd4ceaa23b01c21b7a942ad800d3cc83d`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297eebc68c30eb2f574c31dcfc28c4de630bde3349fe6a8fabcb49582fe50739`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 24.0 MB (23982111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a64f02a29abe917fb37a462fb5d67600e777bdbffeb5dc20ee527a6307a209`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a062af31ab0d1fc9fad6c8ebb241f1ff7517325ebe372602a61c07413e5c21a3`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defadbf0e3d4794f792445d09c615f538d811163385bfff0c898f7ce3b1ba2e2`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0070ff774e26a6f86239fb865e898ca6f998d343ed97600685cb6fbe5a865a9`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 11.9 MB (11853697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:f85b670babfb84f8c4a9cec9b6d98ae803b0c11188c028d77e2ac4d88125e733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `docker:29.8-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull docker@sha256:1d69a266cc5724a69acb717bca06e61197ca594b7d7c01b6fadf6e8e006328a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2497996538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a889a96d7a10b0da8eda9a7a355ff5d6dfa7c1a858f4c487b08122018257ae1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 04 Sep 2026 21:05:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:29 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:30 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:31 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:07:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:07:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:07:12 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bc90c028b577bfb3ba1a6bf2a81063a8edda7a81640b5290cbbfa8e00a5ee8`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7eb5452e5507373f5a15d7bafdf63b611b75eafcff908790bf15ba690e460e`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 386.3 KB (386286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91376a166d58a5775066a9c2651297557742cd11c4b245c6c14eaab80afd354`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681b3c3e9fc1d98bb4bc7fa91bc6ca4405238b40e551b981d4ad6a725c258a60`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5adac1ef2d0065ee256cb32fb6731ff2741855399651ce40f00f5598fad0719`  
		Last Modified: Fri, 04 Sep 2026 21:07:21 GMT  
		Size: 20.9 MB (20922137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f87cd85cbd0116f4f8ad286288aab8747ea157bd1492a90b56940af638bfb58`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec0d361f1ec20624a14dd76d01ec8c980c4b60471ee94f809d5041ed3e1dc3`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff5b4719988fc689cab3219a99f099a68f2b30e629bf5faf8ab07f4d7494bb1`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11caab8a6aa5b00b82113facf56e73fd3ae11fe996926194fa3704ab18c319a`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 24.0 MB (24007443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d9505401d0f17d361f4644bbe18a93db1f5e5df41cd749a2ae0291fced5edc`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dfa8cde90f383566a6fb9c13931b737c448bf71a365581276c0c40c490f7908`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c90ff0ced5d86874c888c06df3d8bb343e3d9e773de2adff793602b8df5f79`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32611f2ce57453a5ddb6e14965fe47e49b8a76d66fd3883a281c5fbd22f88293`  
		Last Modified: Fri, 04 Sep 2026 21:07:18 GMT  
		Size: 11.9 MB (11883638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8.0`

```console
$ docker pull docker@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `docker:29.8.0-alpine3.24`

```console
$ docker pull docker@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `docker:29.8.0-cli`

```console
$ docker pull docker@sha256:eccaacfeed644c7de222ff047483568cb988dde95476fbaaf10ea2d04921bb66
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

### `docker:29.8.0-cli` - linux; amd64

```console
$ docker pull docker@sha256:f5b8bb0333cfaa027640106e5f02e48b0a8e0c00f7165015f581d58783c76fcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66543804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3bf33f3d4c8a86745323554dad9fcfa84d16884c8fce55dee2f13be54d99b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.8.0-cli` - unknown; unknown

```console
$ docker pull docker@sha256:d8d989317bf4cf1622a01a949d2794e3b756f5e6ed7f1122c9d1d7f3b7c928cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c713d3a0596f9bd1fff4841bf5b897070215b4923f2de21aabfc5b50ec9e2e60`

```dockerfile
```

-	Layers:
	-	`sha256:a84963d1371cb9dc90bcadf5db6f2fff4d53e34fcfa9adb56255b8b6f464e253`  
		Last Modified: Fri, 04 Sep 2026 21:06:15 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.0-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:96779f5187b48b45837d3bff0d79d9b356bbe34758ea2ca5ed04587a2ff7e2e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62730675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86620a052456fbae7d2bacff6aa07a0514b7b06a95d8080a3dfd585761a54e04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.8.0-cli` - unknown; unknown

```console
$ docker pull docker@sha256:1f0b5c16c6c1d8d93344765dc8621f272aba40cfbfbfd72e30848a7213c59bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffd9122756c809637cdfbf298d1466105823d10aed8f6294149391a2d6e372b`

```dockerfile
```

-	Layers:
	-	`sha256:ba8fb255546c4ae17bd5bd5ce610c0e20c0100f7d5fd8096e93e008b23f83515`  
		Last Modified: Fri, 04 Sep 2026 21:08:39 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.0-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:44e8531e6e365253a33ff4c932d9e38c8bd474f5f5f95801e2b843f81cb5ffa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61690692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114df7ad8fd44f5d00d18c22726ab59bc6f16edd8f3c21ec4d6e47de3cc86d32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.8.0-cli` - unknown; unknown

```console
$ docker pull docker@sha256:005b7249ffc5c0b96592669e57dbe9e03f2cd030b8dbe8447854bfb5d11e1737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29d0c1d043268a6ae3f06110a948a1114b43693665419ffa36fdac1ba49d766c`

```dockerfile
```

-	Layers:
	-	`sha256:a29b2e52d3df1e2f263dfe521830d5c57a3644a10b2304dd0fe51197a2bfea7a`  
		Last Modified: Fri, 04 Sep 2026 21:09:00 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.0-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e3b2a54a2e4a4c8db2d0b89a1aa5e350238ccc4b219e3587537322975c0c56e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62142357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d597ef1bdd23acd1e4b47df9330cc610f3c2b356ad63bda4918c81c8c8c1d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.8.0-cli` - unknown; unknown

```console
$ docker pull docker@sha256:35540e2844c993f791c40ba2d334a923c00c403dda613d295975561233f76303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d45c9f084271c16e9bd6b694bba2183650ebf23b5a2974c7b8372e152d6122`

```dockerfile
```

-	Layers:
	-	`sha256:a298305a6dfe10d7e06cb799f6688ceaf0af2b2b53a17302268ec9f60adfc86c`  
		Last Modified: Fri, 04 Sep 2026 21:06:00 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8.0-cli-alpine3.24`

```console
$ docker pull docker@sha256:eccaacfeed644c7de222ff047483568cb988dde95476fbaaf10ea2d04921bb66
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

### `docker:29.8.0-cli-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:f5b8bb0333cfaa027640106e5f02e48b0a8e0c00f7165015f581d58783c76fcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66543804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3bf33f3d4c8a86745323554dad9fcfa84d16884c8fce55dee2f13be54d99b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.8.0-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:d8d989317bf4cf1622a01a949d2794e3b756f5e6ed7f1122c9d1d7f3b7c928cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c713d3a0596f9bd1fff4841bf5b897070215b4923f2de21aabfc5b50ec9e2e60`

```dockerfile
```

-	Layers:
	-	`sha256:a84963d1371cb9dc90bcadf5db6f2fff4d53e34fcfa9adb56255b8b6f464e253`  
		Last Modified: Fri, 04 Sep 2026 21:06:15 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.0-cli-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:96779f5187b48b45837d3bff0d79d9b356bbe34758ea2ca5ed04587a2ff7e2e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62730675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86620a052456fbae7d2bacff6aa07a0514b7b06a95d8080a3dfd585761a54e04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.8.0-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:1f0b5c16c6c1d8d93344765dc8621f272aba40cfbfbfd72e30848a7213c59bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffd9122756c809637cdfbf298d1466105823d10aed8f6294149391a2d6e372b`

```dockerfile
```

-	Layers:
	-	`sha256:ba8fb255546c4ae17bd5bd5ce610c0e20c0100f7d5fd8096e93e008b23f83515`  
		Last Modified: Fri, 04 Sep 2026 21:08:39 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.0-cli-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:44e8531e6e365253a33ff4c932d9e38c8bd474f5f5f95801e2b843f81cb5ffa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61690692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114df7ad8fd44f5d00d18c22726ab59bc6f16edd8f3c21ec4d6e47de3cc86d32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.8.0-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:005b7249ffc5c0b96592669e57dbe9e03f2cd030b8dbe8447854bfb5d11e1737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29d0c1d043268a6ae3f06110a948a1114b43693665419ffa36fdac1ba49d766c`

```dockerfile
```

-	Layers:
	-	`sha256:a29b2e52d3df1e2f263dfe521830d5c57a3644a10b2304dd0fe51197a2bfea7a`  
		Last Modified: Fri, 04 Sep 2026 21:09:00 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.0-cli-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e3b2a54a2e4a4c8db2d0b89a1aa5e350238ccc4b219e3587537322975c0c56e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62142357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d597ef1bdd23acd1e4b47df9330cc610f3c2b356ad63bda4918c81c8c8c1d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.8.0-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:35540e2844c993f791c40ba2d334a923c00c403dda613d295975561233f76303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d45c9f084271c16e9bd6b694bba2183650ebf23b5a2974c7b8372e152d6122`

```dockerfile
```

-	Layers:
	-	`sha256:a298305a6dfe10d7e06cb799f6688ceaf0af2b2b53a17302268ec9f60adfc86c`  
		Last Modified: Fri, 04 Sep 2026 21:06:00 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8.0-dind`

```console
$ docker pull docker@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `docker:29.8.0-dind-alpine3.24`

```console
$ docker pull docker@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `docker:29.8.0-dind-rootless`

```console
$ docker pull docker@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `docker:29.8.0-windowsservercore`

```console
$ docker pull docker@sha256:381483bce27fba2118caf4d56677aa9f26dfbcfe439cf40a53d8b8d259cd95aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `docker:29.8.0-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull docker@sha256:1d69a266cc5724a69acb717bca06e61197ca594b7d7c01b6fadf6e8e006328a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2497996538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a889a96d7a10b0da8eda9a7a355ff5d6dfa7c1a858f4c487b08122018257ae1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 04 Sep 2026 21:05:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:29 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:30 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:31 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:07:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:07:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:07:12 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bc90c028b577bfb3ba1a6bf2a81063a8edda7a81640b5290cbbfa8e00a5ee8`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7eb5452e5507373f5a15d7bafdf63b611b75eafcff908790bf15ba690e460e`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 386.3 KB (386286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91376a166d58a5775066a9c2651297557742cd11c4b245c6c14eaab80afd354`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681b3c3e9fc1d98bb4bc7fa91bc6ca4405238b40e551b981d4ad6a725c258a60`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5adac1ef2d0065ee256cb32fb6731ff2741855399651ce40f00f5598fad0719`  
		Last Modified: Fri, 04 Sep 2026 21:07:21 GMT  
		Size: 20.9 MB (20922137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f87cd85cbd0116f4f8ad286288aab8747ea157bd1492a90b56940af638bfb58`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec0d361f1ec20624a14dd76d01ec8c980c4b60471ee94f809d5041ed3e1dc3`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff5b4719988fc689cab3219a99f099a68f2b30e629bf5faf8ab07f4d7494bb1`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11caab8a6aa5b00b82113facf56e73fd3ae11fe996926194fa3704ab18c319a`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 24.0 MB (24007443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d9505401d0f17d361f4644bbe18a93db1f5e5df41cd749a2ae0291fced5edc`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dfa8cde90f383566a6fb9c13931b737c448bf71a365581276c0c40c490f7908`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c90ff0ced5d86874c888c06df3d8bb343e3d9e773de2adff793602b8df5f79`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32611f2ce57453a5ddb6e14965fe47e49b8a76d66fd3883a281c5fbd22f88293`  
		Last Modified: Fri, 04 Sep 2026 21:07:18 GMT  
		Size: 11.9 MB (11883638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.8.0-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull docker@sha256:0895671a43d42e56cd7a697193a88a454d4b0625642784019b4a0c47f9bf4237
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2241093136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e5ef0ec5f1f92316d46113778717942c683539035e1ecd0518433e66d70b10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 04 Sep 2026 21:05:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:22 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:06:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:06:58 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af679bec006459bf8d23d10318897132b8303235e96208074ca7cb6f69a6f8`  
		Last Modified: Fri, 04 Sep 2026 21:07:07 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348fe597a321a8138e890cc252331dbc1549d62f0d007509d5f1360dd0de1643`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 360.8 KB (360829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a419121314bc37f537aec7dac1dc2208fe8a8ef7185ceb553119cd65363b665e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e9174e968c20d6667121eb2f0d4c167c6a98728bfba40766307a5c5a7bd84e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8339abef71bce0cdfbce4ff59e738ee263e959ad763b5ace293d016e4dc92b1d`  
		Last Modified: Fri, 04 Sep 2026 21:07:08 GMT  
		Size: 20.9 MB (20887234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d973ea452b7db8e938e60c647b1231d9879760656a4000357681b70e42c7f1bb`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bb8d245334fce6a8ac8b044e6466890685d0a06e002b93c801554783c4e84f`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bf67a975465a9c630f7f75d518639bd4ceaa23b01c21b7a942ad800d3cc83d`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297eebc68c30eb2f574c31dcfc28c4de630bde3349fe6a8fabcb49582fe50739`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 24.0 MB (23982111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a64f02a29abe917fb37a462fb5d67600e777bdbffeb5dc20ee527a6307a209`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a062af31ab0d1fc9fad6c8ebb241f1ff7517325ebe372602a61c07413e5c21a3`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defadbf0e3d4794f792445d09c615f538d811163385bfff0c898f7ce3b1ba2e2`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0070ff774e26a6f86239fb865e898ca6f998d343ed97600685cb6fbe5a865a9`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 11.9 MB (11853697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8.0-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:170f51606a5d2d5e3e19c9d843c7e0dafffbeef30ce7af35dc5bf7132a51889c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `docker:29.8.0-windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull docker@sha256:0895671a43d42e56cd7a697193a88a454d4b0625642784019b4a0c47f9bf4237
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2241093136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e5ef0ec5f1f92316d46113778717942c683539035e1ecd0518433e66d70b10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 04 Sep 2026 21:05:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:22 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:06:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:06:58 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af679bec006459bf8d23d10318897132b8303235e96208074ca7cb6f69a6f8`  
		Last Modified: Fri, 04 Sep 2026 21:07:07 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348fe597a321a8138e890cc252331dbc1549d62f0d007509d5f1360dd0de1643`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 360.8 KB (360829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a419121314bc37f537aec7dac1dc2208fe8a8ef7185ceb553119cd65363b665e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e9174e968c20d6667121eb2f0d4c167c6a98728bfba40766307a5c5a7bd84e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8339abef71bce0cdfbce4ff59e738ee263e959ad763b5ace293d016e4dc92b1d`  
		Last Modified: Fri, 04 Sep 2026 21:07:08 GMT  
		Size: 20.9 MB (20887234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d973ea452b7db8e938e60c647b1231d9879760656a4000357681b70e42c7f1bb`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bb8d245334fce6a8ac8b044e6466890685d0a06e002b93c801554783c4e84f`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bf67a975465a9c630f7f75d518639bd4ceaa23b01c21b7a942ad800d3cc83d`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297eebc68c30eb2f574c31dcfc28c4de630bde3349fe6a8fabcb49582fe50739`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 24.0 MB (23982111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a64f02a29abe917fb37a462fb5d67600e777bdbffeb5dc20ee527a6307a209`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a062af31ab0d1fc9fad6c8ebb241f1ff7517325ebe372602a61c07413e5c21a3`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defadbf0e3d4794f792445d09c615f538d811163385bfff0c898f7ce3b1ba2e2`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0070ff774e26a6f86239fb865e898ca6f998d343ed97600685cb6fbe5a865a9`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 11.9 MB (11853697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8.0-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:f85b670babfb84f8c4a9cec9b6d98ae803b0c11188c028d77e2ac4d88125e733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `docker:29.8.0-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull docker@sha256:1d69a266cc5724a69acb717bca06e61197ca594b7d7c01b6fadf6e8e006328a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2497996538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a889a96d7a10b0da8eda9a7a355ff5d6dfa7c1a858f4c487b08122018257ae1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 04 Sep 2026 21:05:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:29 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:30 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:31 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:07:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:07:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:07:12 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bc90c028b577bfb3ba1a6bf2a81063a8edda7a81640b5290cbbfa8e00a5ee8`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7eb5452e5507373f5a15d7bafdf63b611b75eafcff908790bf15ba690e460e`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 386.3 KB (386286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91376a166d58a5775066a9c2651297557742cd11c4b245c6c14eaab80afd354`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681b3c3e9fc1d98bb4bc7fa91bc6ca4405238b40e551b981d4ad6a725c258a60`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5adac1ef2d0065ee256cb32fb6731ff2741855399651ce40f00f5598fad0719`  
		Last Modified: Fri, 04 Sep 2026 21:07:21 GMT  
		Size: 20.9 MB (20922137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f87cd85cbd0116f4f8ad286288aab8747ea157bd1492a90b56940af638bfb58`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec0d361f1ec20624a14dd76d01ec8c980c4b60471ee94f809d5041ed3e1dc3`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff5b4719988fc689cab3219a99f099a68f2b30e629bf5faf8ab07f4d7494bb1`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11caab8a6aa5b00b82113facf56e73fd3ae11fe996926194fa3704ab18c319a`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 24.0 MB (24007443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d9505401d0f17d361f4644bbe18a93db1f5e5df41cd749a2ae0291fced5edc`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dfa8cde90f383566a6fb9c13931b737c448bf71a365581276c0c40c490f7908`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c90ff0ced5d86874c888c06df3d8bb343e3d9e773de2adff793602b8df5f79`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32611f2ce57453a5ddb6e14965fe47e49b8a76d66fd3883a281c5fbd22f88293`  
		Last Modified: Fri, 04 Sep 2026 21:07:18 GMT  
		Size: 11.9 MB (11883638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:cli`

```console
$ docker pull docker@sha256:eccaacfeed644c7de222ff047483568cb988dde95476fbaaf10ea2d04921bb66
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
$ docker pull docker@sha256:f5b8bb0333cfaa027640106e5f02e48b0a8e0c00f7165015f581d58783c76fcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66543804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f3bf33f3d4c8a86745323554dad9fcfa84d16884c8fce55dee2f13be54d99b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:d8d989317bf4cf1622a01a949d2794e3b756f5e6ed7f1122c9d1d7f3b7c928cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c713d3a0596f9bd1fff4841bf5b897070215b4923f2de21aabfc5b50ec9e2e60`

```dockerfile
```

-	Layers:
	-	`sha256:a84963d1371cb9dc90bcadf5db6f2fff4d53e34fcfa9adb56255b8b6f464e253`  
		Last Modified: Fri, 04 Sep 2026 21:06:15 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:96779f5187b48b45837d3bff0d79d9b356bbe34758ea2ca5ed04587a2ff7e2e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62730675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86620a052456fbae7d2bacff6aa07a0514b7b06a95d8080a3dfd585761a54e04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:1f0b5c16c6c1d8d93344765dc8621f272aba40cfbfbfd72e30848a7213c59bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffd9122756c809637cdfbf298d1466105823d10aed8f6294149391a2d6e372b`

```dockerfile
```

-	Layers:
	-	`sha256:ba8fb255546c4ae17bd5bd5ce610c0e20c0100f7d5fd8096e93e008b23f83515`  
		Last Modified: Fri, 04 Sep 2026 21:08:39 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:44e8531e6e365253a33ff4c932d9e38c8bd474f5f5f95801e2b843f81cb5ffa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61690692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114df7ad8fd44f5d00d18c22726ab59bc6f16edd8f3c21ec4d6e47de3cc86d32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:005b7249ffc5c0b96592669e57dbe9e03f2cd030b8dbe8447854bfb5d11e1737
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29d0c1d043268a6ae3f06110a948a1114b43693665419ffa36fdac1ba49d766c`

```dockerfile
```

-	Layers:
	-	`sha256:a29b2e52d3df1e2f263dfe521830d5c57a3644a10b2304dd0fe51197a2bfea7a`  
		Last Modified: Fri, 04 Sep 2026 21:09:00 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:e3b2a54a2e4a4c8db2d0b89a1aa5e350238ccc4b219e3587537322975c0c56e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62142357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d597ef1bdd23acd1e4b47df9330cc610f3c2b356ad63bda4918c81c8c8c1d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:35540e2844c993f791c40ba2d334a923c00c403dda613d295975561233f76303
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d45c9f084271c16e9bd6b694bba2183650ebf23b5a2974c7b8372e152d6122`

```dockerfile
```

-	Layers:
	-	`sha256:a298305a6dfe10d7e06cb799f6688ceaf0af2b2b53a17302268ec9f60adfc86c`  
		Last Modified: Fri, 04 Sep 2026 21:06:00 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind`

```console
$ docker pull docker@sha256:3ef33f2e220b79ed3ef3b99d81746f06f306cd6340e2cb7331d17ae996e74cb6
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
$ docker pull docker@sha256:6acc6aaf783ac1c1100822e542534c3dab3f1d38782760b0bdcb688280574d9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.3 MB (147290177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cdb6d492106752d557cda50e628b88e7bb303a7eaea91a10bdf672b95ad4f52`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:11:10 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 19:11:11 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 19:11:11 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 19:11:13 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 19:11:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 19:11:13 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 19:11:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 19:11:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 19:11:15 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 19:11:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:15 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 20:30:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 20:30:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 20:30:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 20:30:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 20:30:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 20:30:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 20:30:15 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d37cd08d6a8f9360afa725cf5d505e231b99e725d7d10a5460ed28caf052a0d`  
		Last Modified: Mon, 31 Aug 2026 19:11:21 GMT  
		Size: 8.2 MB (8184218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9387f989641442ec4b21453ebcf143fd83a3cd250a8d7859806f900f203c29`  
		Last Modified: Mon, 31 Aug 2026 19:11:21 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd895a910f595d122d0f6b4156ba9cddba4c3e186a79c690617d518ab984f5a0`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 19.5 MB (19543199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f060871d91b060b1ec1528da71ac9d2873647d5bd0040c37839a9e60bca9b4cb`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 22.9 MB (22880301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd29c36f537e77602695723260687aeee03c6842ece0a0b7f7fc404b557333cc`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 15.8 MB (15783096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ce15e3085bad8cf9568f1a9725fff80a1f8dc7e2ba1d4e8adaa8aaf5bfc406`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38672a0ac8f1d5a38bde7dbb171485fbe5b2a633d5820d66b29a9506521e8c3`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5344821372070c5f9fed1da3625ffeaaf20831749ff06e383f2ee99e817b90b7`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8ec4efa5f39fc0946eb5ac0d468689687c5990b377a4a8de3237255cd65ce3`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 9.5 MB (9539472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7607780255e2202ff5fece306f5a214b15ea8d455bc28d5651730504c13875`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 91.4 KB (91380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95db3f39b9c9755ff5a6744cce8380a1289b8491317036269b96fc935a2e336`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66825af8442e4e8bf2e9c8d4a0a631a8419517f5403bb55c3f0767355e23f709`  
		Last Modified: Mon, 31 Aug 2026 20:30:28 GMT  
		Size: 67.4 MB (67413971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4867d7942bd40fe68eb74a90c18ee8f83efeae0021601f52694d797eaba7d30e`  
		Last Modified: Mon, 31 Aug 2026 20:30:27 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ce10ff4b4ecf31f35a8d5b93ad920439690f3c11196814361fa49a8c24552f`  
		Last Modified: Mon, 31 Aug 2026 20:30:27 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:71b65121bf4cf6219a3ecf7a5b1e581efd88893197cf08b28aff1fe7542ff4f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6685fababd48a0733770cb8e311a3aea34e1ff756fe32c3674b9cb25a730bcb`

```dockerfile
```

-	Layers:
	-	`sha256:524614de5c4c07df60d3f48222d01249b02606872dd9f0ad16f05752bca7b3e0`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:ba33b9a29cf168871927247f987ac0bb7ec8ce6e33c01670422aba7b7e6c479f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138609134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1242223751ec0f83ad94990e8b93d124b4e38ad659ece521aa5c981e084ea9f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 18:20:19 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 18:20:19 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 18:20:19 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 18:20:23 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 18:20:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 18:20:23 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 18:20:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 18:20:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 18:20:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 18:20:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 18:20:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:20:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 18:20:27 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 18:20:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 18:20:27 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 18:22:28 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 18:22:29 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 18:22:29 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 18:22:32 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 18:22:32 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 18:22:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 18:22:32 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0a5a018f64c91a8e5704d3b4039c120e9293f97d88e958ec13337721607bda`  
		Last Modified: Mon, 31 Aug 2026 18:20:33 GMT  
		Size: 8.1 MB (8085227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7275d6849b719e556a012ea60c464d64ba3f67450576fb1b7f57a3ed024b1d3`  
		Last Modified: Mon, 31 Aug 2026 18:20:33 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae5a3f578b6397ccd50972bc4e796807639da8f8cecd510d0df5bec15037d55f`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 18.2 MB (18176717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d95905b03c9bb3d675e1ca632dbade20689bc0f5d05c80a664d534fd508363c`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 21.5 MB (21504852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b28f633a59d9dd6bff0f19ba5176ad9a8775db390f85ec3a33f5b33fd84708`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 15.0 MB (14958273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe8afb65acc197e663d9d11e6494036b960ffdec4b10a1994ea7628a7e20f63`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d8bb07fd34aec2e6b5a7b12d47cee2530b16cab04158281975f98ec64381b8`  
		Last Modified: Mon, 31 Aug 2026 18:20:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7673a9f592963f40f9766b12cf6a4ba7a2246ba6a98bbe4693b4ff7a196c97a8`  
		Last Modified: Mon, 31 Aug 2026 18:20:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf308b17e8207af1ab2d646067bab6c8b5e4201dddcb3321d06c7c25e2fb17e`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 9.5 MB (9522600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ec74cf23a535eb4e66445306a0fb81b4ff7919914ade21b9ed6bdf0324f698`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 90.7 KB (90744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b68710ceb709a5f69aae68c141df82f1d2714dff086e6a3faf81db7419fbee`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f92c8284603e3154d0090288cbf4f4d7114d2b4ecfbbfd5f9bca8050156b85`  
		Last Modified: Mon, 31 Aug 2026 18:22:44 GMT  
		Size: 62.7 MB (62709116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3454fa926971f8c8ffc59be58308cd27d4dc5306f01f545f9ad7d6d00d6599`  
		Last Modified: Mon, 31 Aug 2026 18:22:43 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1626f53d3e55ba4c6054d1bfcbdfd41b82bb910873c14728a4eb039a2808867b`  
		Last Modified: Mon, 31 Aug 2026 18:22:43 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:f8a8e7efe02a373dbb013b4eb3b9d8391abb691d331ad619a45d04d7eff7d2f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9b9ab70252d31182d4644328fb94f8c184c04be5afc5dcba80fa5574cd02a7`

```dockerfile
```

-	Layers:
	-	`sha256:d4332da7b7db3cf66855429641d94f17576f593c5dac6afe134ddcb6cd6285cb`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:9ecbfb865f2208a7cfe2a2a979d06beb292d9ba148fdf4810034205357b2bf8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.5 MB (136499446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84293a716752a955a7f41d56f3ce3623b9f183b9820cae928fa0c84cd1917090`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:13:27 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 19:13:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 19:13:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 19:13:33 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 19:13:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 19:13:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 19:13:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 19:13:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 19:13:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 19:13:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:13:37 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 20:12:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 20:12:27 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 20:12:27 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 20:12:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 20:12:30 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 20:12:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 20:12:30 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a1b3335f5a569bc2faed8791c9723c590e6b4b0318d8cbc7a7d301f5aa32f2`  
		Last Modified: Mon, 31 Aug 2026 19:13:43 GMT  
		Size: 7.4 MB (7381338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba51ba79dd242cbe225c6d8e4deeb7f0f8ed80890db3acd84a177debda5bbb6`  
		Last Modified: Mon, 31 Aug 2026 19:13:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f6c1b308c04b2a0ed1b1f5e51913722c83d8ef8bb8dadb91a2e24eb6939aba`  
		Last Modified: Mon, 31 Aug 2026 19:13:44 GMT  
		Size: 18.2 MB (18160970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42473acafd93b244f4c3bafcaa09691e89dffffa9c0a51713b372275aa9c780`  
		Last Modified: Mon, 31 Aug 2026 19:13:44 GMT  
		Size: 21.5 MB (21487109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa977ed825f4843dc94118b0e466fb6867f0313ff187a6a9f031ec278ee9375`  
		Last Modified: Mon, 31 Aug 2026 19:13:45 GMT  
		Size: 14.9 MB (14945594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7a1f1b78041ce095f96e932f3ae25489af8b980d032ae7705e69994cd419b1`  
		Last Modified: Mon, 31 Aug 2026 19:13:45 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe54fc820ce3c325f181267d7f921c587150f131b4cce18a640935f6c7b493`  
		Last Modified: Mon, 31 Aug 2026 19:13:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867b32e22df8a0b48304624c71bd4c335a4b288525d435af6cfcad6d31d5de35`  
		Last Modified: Mon, 31 Aug 2026 19:13:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2208fafaaecddead87636f836c37e1db7b17f201b4831aed8002359cf905273f`  
		Last Modified: Mon, 31 Aug 2026 20:12:41 GMT  
		Size: 8.7 MB (8652556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab645a2fd92ed95e0393ce665ca105be79b7ea70d9d85fe8e28f751ee56737a7`  
		Last Modified: Mon, 31 Aug 2026 20:12:41 GMT  
		Size: 87.0 KB (87027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a01434e21e08569a43c4164284b2895cc4b43fc52f7ee24dd0f5299b6eeb1f`  
		Last Modified: Mon, 31 Aug 2026 20:12:40 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f46a342c7af244bf520a2fabf269d326a21490c2443b0c945af331a9c9e9b49`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 62.5 MB (62516082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2ae0f00fb4d944f5550e891dae3f9e87d6ba9e2ff4daacad2d82284f7164be`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799910b85099418cbc63ae86cf4206cf485e5c2333aedc38b4814545e028f84c`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:a3f30fcf52508ee48f5d0374708c558fc818b984c540c32bdf48ab109e8b04e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b654c3d6fe3b41539b1ca202bd4aa3a2b0573a7ab93d44be5cabf26d0608e31c`

```dockerfile
```

-	Layers:
	-	`sha256:b5246b35d3748df779790b1467a3ecd22f3fe97570e13cb88ee308a57d69437a`  
		Last Modified: Mon, 31 Aug 2026 20:12:40 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:1cf1cad2a305cb46c39d4b5d2920508fe8a4b81a8dcd2963cae3d72f7f3c8ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136751897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed1dc4514a7c57d11d569ee69aa54f3a4d4aeaa9ccb9e04877cbd56b8592b4d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 18:19:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 18:19:35 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 18:19:35 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 18:19:38 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 18:19:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 18:19:38 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 18:19:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 18:19:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 18:19:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 18:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 18:19:40 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 19:28:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 19:28:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 19:28:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 19:28:26 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b1971fe58e8f05049d914d7309634d77eb89221e1f4969c4274597b3d38011`  
		Last Modified: Mon, 31 Aug 2026 18:19:46 GMT  
		Size: 8.2 MB (8236332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9c71f8991041810ae667bb563b76a167627bcd163060d001dacc0df895af04`  
		Last Modified: Mon, 31 Aug 2026 18:19:45 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac6c492e1395379cff61f176e210e0225cf641031807d4b66acf91c0cdcc9cc`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 18.0 MB (17981578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b4d808d155c74557fbd31c8c01f45034e1934c6c4f904bb76bcffc824fab04`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 20.7 MB (20723311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468f9e8cc89eb885f7ff43e0cd1c27b444a33c5cac52223ecda3432a0e64a7b4`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 14.3 MB (14309336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c393ec93164ea67c57c7dd527faa4b438dbd45c43429ff2ab6d9474c6fc3f0df`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de56bd567886194ca4241fd286116bdcb21f3163715d90a5e273d0d1736d2f6`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2b38859dab066c0107627a59620053d77f1fedaf6cbf368995b7a2d47eaa10`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b920683393f457090edd72ec42ddf9dcd152fd300fe19e8f8700f5762ceaf4`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 10.1 MB (10119009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02fc1fd375a10c09108d8f5e1d01b3ac1553577cea85f495fa73c78916598164`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 100.0 KB (99972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2fc6eb588fbfd17d052221b437b9415c94e75988efa0a9be15e325a2166974`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd705720d846ee8c4539c9b330de3e947ddf27bd36cea5ce657e9aa31734d5`  
		Last Modified: Mon, 31 Aug 2026 19:28:38 GMT  
		Size: 61.1 MB (61091164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513d6862d8635ae871847c817564e4cd01da9e2499d11f7abca95a7ce0d5bc71`  
		Last Modified: Mon, 31 Aug 2026 19:28:37 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b41ac202ff907218c6fcba1f69bfec0626abab360f3873152ae0e9418a82081`  
		Last Modified: Mon, 31 Aug 2026 19:28:37 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:5cd43bc03969a794bbc9e3ab4b3d06c6e08b617e8cc9e0153d98d045bf3515d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e68e4a1149c9648562f15d2229f6e965bce1f7bf837a68ec227ba540ae6e681`

```dockerfile
```

-	Layers:
	-	`sha256:f4b9eea2d5651b26ce5f9b8fd3a6f4f6a38efe3cf6e9431f7b6129885d30edb5`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 34.8 KB (34784 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind-rootless`

```console
$ docker pull docker@sha256:ec3201de648f98b94882e4dd8a3d30df8b3ca6723a242fab76150f25127e194e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:b7260fa07417377325640c1286dd7e4da6f786a24cd04841cf1394156cefb450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.9 MB (162869908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c413369499ca1b6f70c5033c546abacb462885408be35123f371303d80e00674`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:11:10 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 19:11:11 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 19:11:11 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 19:11:13 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 19:11:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 19:11:13 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 19:11:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 19:11:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 19:11:15 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 19:11:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:15 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 20:30:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 20:30:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 20:30:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 20:30:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 20:30:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 20:30:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 20:30:15 GMT
CMD []
# Mon, 31 Aug 2026 21:12:36 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Mon, 31 Aug 2026 21:12:36 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Mon, 31 Aug 2026 21:12:36 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 21:12:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Mon, 31 Aug 2026 21:12:37 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Mon, 31 Aug 2026 21:12:37 GMT
VOLUME [/home/rootless/.local/share/docker]
# Mon, 31 Aug 2026 21:12:37 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d37cd08d6a8f9360afa725cf5d505e231b99e725d7d10a5460ed28caf052a0d`  
		Last Modified: Mon, 31 Aug 2026 19:11:21 GMT  
		Size: 8.2 MB (8184218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9387f989641442ec4b21453ebcf143fd83a3cd250a8d7859806f900f203c29`  
		Last Modified: Mon, 31 Aug 2026 19:11:21 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd895a910f595d122d0f6b4156ba9cddba4c3e186a79c690617d518ab984f5a0`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 19.5 MB (19543199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f060871d91b060b1ec1528da71ac9d2873647d5bd0040c37839a9e60bca9b4cb`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 22.9 MB (22880301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd29c36f537e77602695723260687aeee03c6842ece0a0b7f7fc404b557333cc`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 15.8 MB (15783096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ce15e3085bad8cf9568f1a9725fff80a1f8dc7e2ba1d4e8adaa8aaf5bfc406`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38672a0ac8f1d5a38bde7dbb171485fbe5b2a633d5820d66b29a9506521e8c3`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5344821372070c5f9fed1da3625ffeaaf20831749ff06e383f2ee99e817b90b7`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8ec4efa5f39fc0946eb5ac0d468689687c5990b377a4a8de3237255cd65ce3`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 9.5 MB (9539472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7607780255e2202ff5fece306f5a214b15ea8d455bc28d5651730504c13875`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 91.4 KB (91380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95db3f39b9c9755ff5a6744cce8380a1289b8491317036269b96fc935a2e336`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66825af8442e4e8bf2e9c8d4a0a631a8419517f5403bb55c3f0767355e23f709`  
		Last Modified: Mon, 31 Aug 2026 20:30:28 GMT  
		Size: 67.4 MB (67413971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4867d7942bd40fe68eb74a90c18ee8f83efeae0021601f52694d797eaba7d30e`  
		Last Modified: Mon, 31 Aug 2026 20:30:27 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ce10ff4b4ecf31f35a8d5b93ad920439690f3c11196814361fa49a8c24552f`  
		Last Modified: Mon, 31 Aug 2026 20:30:27 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a105b93a1a6059ff88dd88f715e566c01f58392859602d1a212d4e39ef464b97`  
		Last Modified: Mon, 31 Aug 2026 21:12:43 GMT  
		Size: 3.5 MB (3471358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e799724df157cb354135d725fac7a496c0e5b5f45338527be2a03c39fbf5ff2`  
		Last Modified: Mon, 31 Aug 2026 21:12:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eada33a50524720a8e689d7ba40ada3e3758f7cd4cbb73fe31734bd7d27a7468`  
		Last Modified: Mon, 31 Aug 2026 21:12:42 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc43369fc65dc1753197ccafd4c6c1ad59fd93282a34f52575fcf06e5dca5ee`  
		Last Modified: Mon, 31 Aug 2026 21:12:43 GMT  
		Size: 12.1 MB (12107032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3933fcb3755dcef0ff87a54201dcd03967d950d43d016d2a6d91b96c49c9e7a`  
		Last Modified: Mon, 31 Aug 2026 21:12:43 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:2e31a9d09c14f558d7b292c2bb5a7577dfbf4c7b7f9223778dc93f4f5ab06c9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5e7b24e030b4dd5556b9245e67f6c242dba4c81131fa4a38af656f3501070b`

```dockerfile
```

-	Layers:
	-	`sha256:9d7ca58c06621588626d504c0827634e4a16cbbec16458627930a53dfc842107`  
		Last Modified: Mon, 31 Aug 2026 21:12:42 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cac84af5928c5d88e920165ce675b17c03ab2165e5418abb3c0c25cb8a1e3cbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151442237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7bce8af1abd7d0a55e376f6e9f0fcdf5d2939b82359bb1b9817786c47cb5ce6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 18:19:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 18:19:35 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 18:19:35 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 18:19:38 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 18:19:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 18:19:38 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 18:19:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 18:19:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 18:19:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 18:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 18:19:40 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 19:28:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 19:28:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 19:28:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 19:28:26 GMT
CMD []
# Mon, 31 Aug 2026 20:12:56 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Mon, 31 Aug 2026 20:12:56 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Mon, 31 Aug 2026 20:12:56 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 20:12:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Mon, 31 Aug 2026 20:12:57 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Mon, 31 Aug 2026 20:12:57 GMT
VOLUME [/home/rootless/.local/share/docker]
# Mon, 31 Aug 2026 20:12:57 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b1971fe58e8f05049d914d7309634d77eb89221e1f4969c4274597b3d38011`  
		Last Modified: Mon, 31 Aug 2026 18:19:46 GMT  
		Size: 8.2 MB (8236332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9c71f8991041810ae667bb563b76a167627bcd163060d001dacc0df895af04`  
		Last Modified: Mon, 31 Aug 2026 18:19:45 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac6c492e1395379cff61f176e210e0225cf641031807d4b66acf91c0cdcc9cc`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 18.0 MB (17981578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b4d808d155c74557fbd31c8c01f45034e1934c6c4f904bb76bcffc824fab04`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 20.7 MB (20723311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468f9e8cc89eb885f7ff43e0cd1c27b444a33c5cac52223ecda3432a0e64a7b4`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 14.3 MB (14309336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c393ec93164ea67c57c7dd527faa4b438dbd45c43429ff2ab6d9474c6fc3f0df`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de56bd567886194ca4241fd286116bdcb21f3163715d90a5e273d0d1736d2f6`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2b38859dab066c0107627a59620053d77f1fedaf6cbf368995b7a2d47eaa10`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b920683393f457090edd72ec42ddf9dcd152fd300fe19e8f8700f5762ceaf4`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 10.1 MB (10119009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02fc1fd375a10c09108d8f5e1d01b3ac1553577cea85f495fa73c78916598164`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 100.0 KB (99972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2fc6eb588fbfd17d052221b437b9415c94e75988efa0a9be15e325a2166974`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd705720d846ee8c4539c9b330de3e947ddf27bd36cea5ce657e9aa31734d5`  
		Last Modified: Mon, 31 Aug 2026 19:28:38 GMT  
		Size: 61.1 MB (61091164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513d6862d8635ae871847c817564e4cd01da9e2499d11f7abca95a7ce0d5bc71`  
		Last Modified: Mon, 31 Aug 2026 19:28:37 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b41ac202ff907218c6fcba1f69bfec0626abab360f3873152ae0e9418a82081`  
		Last Modified: Mon, 31 Aug 2026 19:28:37 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a24e7195b55421df78843dfa2ce3541975fc1f3fbc3d59ee7f97344c26324216`  
		Last Modified: Mon, 31 Aug 2026 20:13:02 GMT  
		Size: 3.4 MB (3448909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:737b6ba8a946b65d2afa379f6ddbde9b97c3dd9846c5f20fa0ac7060e630e71e`  
		Last Modified: Mon, 31 Aug 2026 20:13:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49de71c222d52d56203a2bd6fa12469fdf1b956410d41747125e3babba8f9a64`  
		Last Modified: Mon, 31 Aug 2026 20:13:02 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af1b7ee85fc5c22a51fd7768c66e469ed91866412888f3b65ab14da85635068`  
		Last Modified: Mon, 31 Aug 2026 20:13:02 GMT  
		Size: 11.2 MB (11240090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95299d9f7bd4ca2be62ba134b22520626265e988325f2aecf4dab8b2031f5835`  
		Last Modified: Mon, 31 Aug 2026 20:13:03 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:da3a0e57811ed72223d1d9ce68454c4b543385029b767a7181a3df1e4ddc258f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9cc72de8501623cd0ca7078c562a62d61b9cce8369623c8bf9119d4c53d25cf`

```dockerfile
```

-	Layers:
	-	`sha256:9367e41f6d17d217023113aaec86a04785d048b31d0fbf7c28fb9b9cc1faaf28`  
		Last Modified: Mon, 31 Aug 2026 20:13:02 GMT  
		Size: 30.7 KB (30663 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:latest`

```console
$ docker pull docker@sha256:3ef33f2e220b79ed3ef3b99d81746f06f306cd6340e2cb7331d17ae996e74cb6
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
$ docker pull docker@sha256:6acc6aaf783ac1c1100822e542534c3dab3f1d38782760b0bdcb688280574d9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.3 MB (147290177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cdb6d492106752d557cda50e628b88e7bb303a7eaea91a10bdf672b95ad4f52`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:11:10 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 19:11:11 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 19:11:11 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 19:11:13 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 19:11:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 19:11:13 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 19:11:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 19:11:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:11:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 19:11:15 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 19:11:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:11:15 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 20:30:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 20:30:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 20:30:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 20:30:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 20:30:15 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 20:30:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 20:30:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 20:30:15 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d37cd08d6a8f9360afa725cf5d505e231b99e725d7d10a5460ed28caf052a0d`  
		Last Modified: Mon, 31 Aug 2026 19:11:21 GMT  
		Size: 8.2 MB (8184218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9387f989641442ec4b21453ebcf143fd83a3cd250a8d7859806f900f203c29`  
		Last Modified: Mon, 31 Aug 2026 19:11:21 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd895a910f595d122d0f6b4156ba9cddba4c3e186a79c690617d518ab984f5a0`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 19.5 MB (19543199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f060871d91b060b1ec1528da71ac9d2873647d5bd0040c37839a9e60bca9b4cb`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 22.9 MB (22880301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd29c36f537e77602695723260687aeee03c6842ece0a0b7f7fc404b557333cc`  
		Last Modified: Mon, 31 Aug 2026 19:11:22 GMT  
		Size: 15.8 MB (15783096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ce15e3085bad8cf9568f1a9725fff80a1f8dc7e2ba1d4e8adaa8aaf5bfc406`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38672a0ac8f1d5a38bde7dbb171485fbe5b2a633d5820d66b29a9506521e8c3`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5344821372070c5f9fed1da3625ffeaaf20831749ff06e383f2ee99e817b90b7`  
		Last Modified: Mon, 31 Aug 2026 19:11:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8ec4efa5f39fc0946eb5ac0d468689687c5990b377a4a8de3237255cd65ce3`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 9.5 MB (9539472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7607780255e2202ff5fece306f5a214b15ea8d455bc28d5651730504c13875`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 91.4 KB (91380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95db3f39b9c9755ff5a6744cce8380a1289b8491317036269b96fc935a2e336`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66825af8442e4e8bf2e9c8d4a0a631a8419517f5403bb55c3f0767355e23f709`  
		Last Modified: Mon, 31 Aug 2026 20:30:28 GMT  
		Size: 67.4 MB (67413971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4867d7942bd40fe68eb74a90c18ee8f83efeae0021601f52694d797eaba7d30e`  
		Last Modified: Mon, 31 Aug 2026 20:30:27 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ce10ff4b4ecf31f35a8d5b93ad920439690f3c11196814361fa49a8c24552f`  
		Last Modified: Mon, 31 Aug 2026 20:30:27 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:71b65121bf4cf6219a3ecf7a5b1e581efd88893197cf08b28aff1fe7542ff4f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6685fababd48a0733770cb8e311a3aea34e1ff756fe32c3674b9cb25a730bcb`

```dockerfile
```

-	Layers:
	-	`sha256:524614de5c4c07df60d3f48222d01249b02606872dd9f0ad16f05752bca7b3e0`  
		Last Modified: Mon, 31 Aug 2026 20:30:26 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:ba33b9a29cf168871927247f987ac0bb7ec8ce6e33c01670422aba7b7e6c479f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138609134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1242223751ec0f83ad94990e8b93d124b4e38ad659ece521aa5c981e084ea9f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 18:20:19 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 18:20:19 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 18:20:19 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 18:20:23 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 18:20:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 18:20:23 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 18:20:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 18:20:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 18:20:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 18:20:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 18:20:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:20:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 18:20:27 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 18:20:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 18:20:27 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 18:22:28 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 18:22:29 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 18:22:29 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 18:22:32 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:22:32 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 18:22:32 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 18:22:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 18:22:32 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0a5a018f64c91a8e5704d3b4039c120e9293f97d88e958ec13337721607bda`  
		Last Modified: Mon, 31 Aug 2026 18:20:33 GMT  
		Size: 8.1 MB (8085227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7275d6849b719e556a012ea60c464d64ba3f67450576fb1b7f57a3ed024b1d3`  
		Last Modified: Mon, 31 Aug 2026 18:20:33 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae5a3f578b6397ccd50972bc4e796807639da8f8cecd510d0df5bec15037d55f`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 18.2 MB (18176717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d95905b03c9bb3d675e1ca632dbade20689bc0f5d05c80a664d534fd508363c`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 21.5 MB (21504852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b28f633a59d9dd6bff0f19ba5176ad9a8775db390f85ec3a33f5b33fd84708`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 15.0 MB (14958273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe8afb65acc197e663d9d11e6494036b960ffdec4b10a1994ea7628a7e20f63`  
		Last Modified: Mon, 31 Aug 2026 18:20:34 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d8bb07fd34aec2e6b5a7b12d47cee2530b16cab04158281975f98ec64381b8`  
		Last Modified: Mon, 31 Aug 2026 18:20:35 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7673a9f592963f40f9766b12cf6a4ba7a2246ba6a98bbe4693b4ff7a196c97a8`  
		Last Modified: Mon, 31 Aug 2026 18:20:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf308b17e8207af1ab2d646067bab6c8b5e4201dddcb3321d06c7c25e2fb17e`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 9.5 MB (9522600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ec74cf23a535eb4e66445306a0fb81b4ff7919914ade21b9ed6bdf0324f698`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 90.7 KB (90744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b68710ceb709a5f69aae68c141df82f1d2714dff086e6a3faf81db7419fbee`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f92c8284603e3154d0090288cbf4f4d7114d2b4ecfbbfd5f9bca8050156b85`  
		Last Modified: Mon, 31 Aug 2026 18:22:44 GMT  
		Size: 62.7 MB (62709116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3454fa926971f8c8ffc59be58308cd27d4dc5306f01f545f9ad7d6d00d6599`  
		Last Modified: Mon, 31 Aug 2026 18:22:43 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1626f53d3e55ba4c6054d1bfcbdfd41b82bb910873c14728a4eb039a2808867b`  
		Last Modified: Mon, 31 Aug 2026 18:22:43 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:f8a8e7efe02a373dbb013b4eb3b9d8391abb691d331ad619a45d04d7eff7d2f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9b9ab70252d31182d4644328fb94f8c184c04be5afc5dcba80fa5574cd02a7`

```dockerfile
```

-	Layers:
	-	`sha256:d4332da7b7db3cf66855429641d94f17576f593c5dac6afe134ddcb6cd6285cb`  
		Last Modified: Mon, 31 Aug 2026 18:22:42 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:9ecbfb865f2208a7cfe2a2a979d06beb292d9ba148fdf4810034205357b2bf8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.5 MB (136499446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84293a716752a955a7f41d56f3ce3623b9f183b9820cae928fa0c84cd1917090`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:13:27 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 19:13:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 19:13:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 19:13:33 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 19:13:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 19:13:33 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 19:13:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 19:13:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 19:13:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 19:13:37 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 19:13:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 19:13:37 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 20:12:26 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 20:12:27 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 20:12:27 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 20:12:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 20:12:30 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 20:12:30 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 20:12:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 20:12:30 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a1b3335f5a569bc2faed8791c9723c590e6b4b0318d8cbc7a7d301f5aa32f2`  
		Last Modified: Mon, 31 Aug 2026 19:13:43 GMT  
		Size: 7.4 MB (7381338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba51ba79dd242cbe225c6d8e4deeb7f0f8ed80890db3acd84a177debda5bbb6`  
		Last Modified: Mon, 31 Aug 2026 19:13:43 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f6c1b308c04b2a0ed1b1f5e51913722c83d8ef8bb8dadb91a2e24eb6939aba`  
		Last Modified: Mon, 31 Aug 2026 19:13:44 GMT  
		Size: 18.2 MB (18160970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42473acafd93b244f4c3bafcaa09691e89dffffa9c0a51713b372275aa9c780`  
		Last Modified: Mon, 31 Aug 2026 19:13:44 GMT  
		Size: 21.5 MB (21487109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa977ed825f4843dc94118b0e466fb6867f0313ff187a6a9f031ec278ee9375`  
		Last Modified: Mon, 31 Aug 2026 19:13:45 GMT  
		Size: 14.9 MB (14945594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7a1f1b78041ce095f96e932f3ae25489af8b980d032ae7705e69994cd419b1`  
		Last Modified: Mon, 31 Aug 2026 19:13:45 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fe54fc820ce3c325f181267d7f921c587150f131b4cce18a640935f6c7b493`  
		Last Modified: Mon, 31 Aug 2026 19:13:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867b32e22df8a0b48304624c71bd4c335a4b288525d435af6cfcad6d31d5de35`  
		Last Modified: Mon, 31 Aug 2026 19:13:46 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2208fafaaecddead87636f836c37e1db7b17f201b4831aed8002359cf905273f`  
		Last Modified: Mon, 31 Aug 2026 20:12:41 GMT  
		Size: 8.7 MB (8652556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab645a2fd92ed95e0393ce665ca105be79b7ea70d9d85fe8e28f751ee56737a7`  
		Last Modified: Mon, 31 Aug 2026 20:12:41 GMT  
		Size: 87.0 KB (87027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a01434e21e08569a43c4164284b2895cc4b43fc52f7ee24dd0f5299b6eeb1f`  
		Last Modified: Mon, 31 Aug 2026 20:12:40 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f46a342c7af244bf520a2fabf269d326a21490c2443b0c945af331a9c9e9b49`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 62.5 MB (62516082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2ae0f00fb4d944f5550e891dae3f9e87d6ba9e2ff4daacad2d82284f7164be`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799910b85099418cbc63ae86cf4206cf485e5c2333aedc38b4814545e028f84c`  
		Last Modified: Mon, 31 Aug 2026 20:12:42 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:a3f30fcf52508ee48f5d0374708c558fc818b984c540c32bdf48ab109e8b04e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b654c3d6fe3b41539b1ca202bd4aa3a2b0573a7ab93d44be5cabf26d0608e31c`

```dockerfile
```

-	Layers:
	-	`sha256:b5246b35d3748df779790b1467a3ecd22f3fe97570e13cb88ee308a57d69437a`  
		Last Modified: Mon, 31 Aug 2026 20:12:40 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:1cf1cad2a305cb46c39d4b5d2920508fe8a4b81a8dcd2963cae3d72f7f3c8ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136751897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed1dc4514a7c57d11d569ee69aa54f3a4d4aeaa9ccb9e04877cbd56b8592b4d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 18:19:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 31 Aug 2026 18:19:35 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 31 Aug 2026 18:19:35 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 31 Aug 2026 18:19:38 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 31 Aug 2026 18:19:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 31 Aug 2026 18:19:38 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 31 Aug 2026 18:19:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.0
# Mon, 31 Aug 2026 18:19:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-x86_64'; 			sha256='c57ab918abd5b05ca7e7d0f275875dd1330a695074f309dc9eab1b49efafcd4b'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv6'; 			sha256='fad8dc4c8ab0a80395ccb3dbd3d7da46c85024818dcc7b90305ad6971de61f43'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-armv7'; 			sha256='50a7c5bc659f0d619f71f5600b1f15981b99f86df6167d600e0445ef179d5a06'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-aarch64'; 			sha256='ff42489f5a9b879d5d117c5ffea6defc27390b3286da8ad52cbc9c6ab5df590e'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-ppc64le'; 			sha256='75fc29e87b04b7573c8deb7cf98ea4c2ab58b6c73f74a1d467ecc40485725be9'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-riscv64'; 			sha256='d782b976282d629b6100477ddd4ed2e0439b0892e3d05d36bc4fc82fa1d6de5b'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.0/docker-compose-linux-s390x'; 			sha256='abf5f4044cec07af2dcf08e90629e95cb8efd61c877f60f02d7c11308cce105d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 18:19:39 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 31 Aug 2026 18:19:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 31 Aug 2026 18:19:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 18:19:40 GMT
CMD ["sh"]
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 31 Aug 2026 19:28:23 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 31 Aug 2026 19:28:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:28:26 GMT
VOLUME [/var/lib/docker]
# Mon, 31 Aug 2026 19:28:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 31 Aug 2026 19:28:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 31 Aug 2026 19:28:26 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b1971fe58e8f05049d914d7309634d77eb89221e1f4969c4274597b3d38011`  
		Last Modified: Mon, 31 Aug 2026 18:19:46 GMT  
		Size: 8.2 MB (8236332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9c71f8991041810ae667bb563b76a167627bcd163060d001dacc0df895af04`  
		Last Modified: Mon, 31 Aug 2026 18:19:45 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac6c492e1395379cff61f176e210e0225cf641031807d4b66acf91c0cdcc9cc`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 18.0 MB (17981578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b4d808d155c74557fbd31c8c01f45034e1934c6c4f904bb76bcffc824fab04`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 20.7 MB (20723311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468f9e8cc89eb885f7ff43e0cd1c27b444a33c5cac52223ecda3432a0e64a7b4`  
		Last Modified: Mon, 31 Aug 2026 18:19:47 GMT  
		Size: 14.3 MB (14309336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c393ec93164ea67c57c7dd527faa4b438dbd45c43429ff2ab6d9474c6fc3f0df`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de56bd567886194ca4241fd286116bdcb21f3163715d90a5e273d0d1736d2f6`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2b38859dab066c0107627a59620053d77f1fedaf6cbf368995b7a2d47eaa10`  
		Last Modified: Mon, 31 Aug 2026 18:19:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b920683393f457090edd72ec42ddf9dcd152fd300fe19e8f8700f5762ceaf4`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 10.1 MB (10119009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02fc1fd375a10c09108d8f5e1d01b3ac1553577cea85f495fa73c78916598164`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 100.0 KB (99972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2fc6eb588fbfd17d052221b437b9415c94e75988efa0a9be15e325a2166974`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cbd705720d846ee8c4539c9b330de3e947ddf27bd36cea5ce657e9aa31734d5`  
		Last Modified: Mon, 31 Aug 2026 19:28:38 GMT  
		Size: 61.1 MB (61091164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513d6862d8635ae871847c817564e4cd01da9e2499d11f7abca95a7ce0d5bc71`  
		Last Modified: Mon, 31 Aug 2026 19:28:37 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b41ac202ff907218c6fcba1f69bfec0626abab360f3873152ae0e9418a82081`  
		Last Modified: Mon, 31 Aug 2026 19:28:37 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:5cd43bc03969a794bbc9e3ab4b3d06c6e08b617e8cc9e0153d98d045bf3515d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e68e4a1149c9648562f15d2229f6e965bce1f7bf837a68ec227ba540ae6e681`

```dockerfile
```

-	Layers:
	-	`sha256:f4b9eea2d5651b26ce5f9b8fd3a6f4f6a38efe3cf6e9431f7b6129885d30edb5`  
		Last Modified: Mon, 31 Aug 2026 19:28:36 GMT  
		Size: 34.8 KB (34784 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:windowsservercore`

```console
$ docker pull docker@sha256:381483bce27fba2118caf4d56677aa9f26dfbcfe439cf40a53d8b8d259cd95aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull docker@sha256:1d69a266cc5724a69acb717bca06e61197ca594b7d7c01b6fadf6e8e006328a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2497996538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a889a96d7a10b0da8eda9a7a355ff5d6dfa7c1a858f4c487b08122018257ae1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 04 Sep 2026 21:05:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:29 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:30 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:31 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:07:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:07:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:07:12 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bc90c028b577bfb3ba1a6bf2a81063a8edda7a81640b5290cbbfa8e00a5ee8`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7eb5452e5507373f5a15d7bafdf63b611b75eafcff908790bf15ba690e460e`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 386.3 KB (386286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91376a166d58a5775066a9c2651297557742cd11c4b245c6c14eaab80afd354`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681b3c3e9fc1d98bb4bc7fa91bc6ca4405238b40e551b981d4ad6a725c258a60`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5adac1ef2d0065ee256cb32fb6731ff2741855399651ce40f00f5598fad0719`  
		Last Modified: Fri, 04 Sep 2026 21:07:21 GMT  
		Size: 20.9 MB (20922137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f87cd85cbd0116f4f8ad286288aab8747ea157bd1492a90b56940af638bfb58`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec0d361f1ec20624a14dd76d01ec8c980c4b60471ee94f809d5041ed3e1dc3`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff5b4719988fc689cab3219a99f099a68f2b30e629bf5faf8ab07f4d7494bb1`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11caab8a6aa5b00b82113facf56e73fd3ae11fe996926194fa3704ab18c319a`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 24.0 MB (24007443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d9505401d0f17d361f4644bbe18a93db1f5e5df41cd749a2ae0291fced5edc`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dfa8cde90f383566a6fb9c13931b737c448bf71a365581276c0c40c490f7908`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c90ff0ced5d86874c888c06df3d8bb343e3d9e773de2adff793602b8df5f79`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32611f2ce57453a5ddb6e14965fe47e49b8a76d66fd3883a281c5fbd22f88293`  
		Last Modified: Fri, 04 Sep 2026 21:07:18 GMT  
		Size: 11.9 MB (11883638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull docker@sha256:0895671a43d42e56cd7a697193a88a454d4b0625642784019b4a0c47f9bf4237
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2241093136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e5ef0ec5f1f92316d46113778717942c683539035e1ecd0518433e66d70b10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 04 Sep 2026 21:05:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:22 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:06:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:06:58 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af679bec006459bf8d23d10318897132b8303235e96208074ca7cb6f69a6f8`  
		Last Modified: Fri, 04 Sep 2026 21:07:07 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348fe597a321a8138e890cc252331dbc1549d62f0d007509d5f1360dd0de1643`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 360.8 KB (360829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a419121314bc37f537aec7dac1dc2208fe8a8ef7185ceb553119cd65363b665e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e9174e968c20d6667121eb2f0d4c167c6a98728bfba40766307a5c5a7bd84e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8339abef71bce0cdfbce4ff59e738ee263e959ad763b5ace293d016e4dc92b1d`  
		Last Modified: Fri, 04 Sep 2026 21:07:08 GMT  
		Size: 20.9 MB (20887234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d973ea452b7db8e938e60c647b1231d9879760656a4000357681b70e42c7f1bb`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bb8d245334fce6a8ac8b044e6466890685d0a06e002b93c801554783c4e84f`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bf67a975465a9c630f7f75d518639bd4ceaa23b01c21b7a942ad800d3cc83d`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297eebc68c30eb2f574c31dcfc28c4de630bde3349fe6a8fabcb49582fe50739`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 24.0 MB (23982111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a64f02a29abe917fb37a462fb5d67600e777bdbffeb5dc20ee527a6307a209`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a062af31ab0d1fc9fad6c8ebb241f1ff7517325ebe372602a61c07413e5c21a3`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defadbf0e3d4794f792445d09c615f538d811163385bfff0c898f7ce3b1ba2e2`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0070ff774e26a6f86239fb865e898ca6f998d343ed97600685cb6fbe5a865a9`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 11.9 MB (11853697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:170f51606a5d2d5e3e19c9d843c7e0dafffbeef30ce7af35dc5bf7132a51889c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5499; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5499; amd64

```console
$ docker pull docker@sha256:0895671a43d42e56cd7a697193a88a454d4b0625642784019b4a0c47f9bf4237
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2241093136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e5ef0ec5f1f92316d46113778717942c683539035e1ecd0518433e66d70b10`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Fri, 04 Sep 2026 21:05:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:22 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:23 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:38 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:06:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:06:58 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af679bec006459bf8d23d10318897132b8303235e96208074ca7cb6f69a6f8`  
		Last Modified: Fri, 04 Sep 2026 21:07:07 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348fe597a321a8138e890cc252331dbc1549d62f0d007509d5f1360dd0de1643`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 360.8 KB (360829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a419121314bc37f537aec7dac1dc2208fe8a8ef7185ceb553119cd65363b665e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e9174e968c20d6667121eb2f0d4c167c6a98728bfba40766307a5c5a7bd84e`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8339abef71bce0cdfbce4ff59e738ee263e959ad763b5ace293d016e4dc92b1d`  
		Last Modified: Fri, 04 Sep 2026 21:07:08 GMT  
		Size: 20.9 MB (20887234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d973ea452b7db8e938e60c647b1231d9879760656a4000357681b70e42c7f1bb`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bb8d245334fce6a8ac8b044e6466890685d0a06e002b93c801554783c4e84f`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bf67a975465a9c630f7f75d518639bd4ceaa23b01c21b7a942ad800d3cc83d`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297eebc68c30eb2f574c31dcfc28c4de630bde3349fe6a8fabcb49582fe50739`  
		Last Modified: Fri, 04 Sep 2026 21:07:06 GMT  
		Size: 24.0 MB (23982111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a64f02a29abe917fb37a462fb5d67600e777bdbffeb5dc20ee527a6307a209`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a062af31ab0d1fc9fad6c8ebb241f1ff7517325ebe372602a61c07413e5c21a3`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defadbf0e3d4794f792445d09c615f538d811163385bfff0c898f7ce3b1ba2e2`  
		Last Modified: Fri, 04 Sep 2026 21:07:03 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0070ff774e26a6f86239fb865e898ca6f998d343ed97600685cb6fbe5a865a9`  
		Last Modified: Fri, 04 Sep 2026 21:07:04 GMT  
		Size: 11.9 MB (11853697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:f85b670babfb84f8c4a9cec9b6d98ae803b0c11188c028d77e2ac4d88125e733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

```console
$ docker pull docker@sha256:1d69a266cc5724a69acb717bca06e61197ca594b7d7c01b6fadf6e8e006328a6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2497996538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a889a96d7a10b0da8eda9a7a355ff5d6dfa7c1a858f4c487b08122018257ae1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Fri, 04 Sep 2026 21:05:43 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 04 Sep 2026 21:06:29 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 04 Sep 2026 21:06:30 GMT
ENV DOCKER_VERSION=29.8.0
# Fri, 04 Sep 2026 21:06:31 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.0.zip
# Fri, 04 Sep 2026 21:06:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:06:48 GMT
ENV DOCKER_BUILDX_VERSION=0.37.0
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.0/buildx-v0.37.0.windows-amd64.exe
# Fri, 04 Sep 2026 21:06:49 GMT
ENV DOCKER_BUILDX_SHA256=f49fa81c676e178ebac4679cc33c6560f14a56b586f33c9e298a917313cd909b
# Fri, 04 Sep 2026 21:07:00 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Fri, 04 Sep 2026 21:07:01 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Fri, 04 Sep 2026 21:07:02 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Fri, 04 Sep 2026 21:07:12 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bc90c028b577bfb3ba1a6bf2a81063a8edda7a81640b5290cbbfa8e00a5ee8`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e7eb5452e5507373f5a15d7bafdf63b611b75eafcff908790bf15ba690e460e`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 386.3 KB (386286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c91376a166d58a5775066a9c2651297557742cd11c4b245c6c14eaab80afd354`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681b3c3e9fc1d98bb4bc7fa91bc6ca4405238b40e551b981d4ad6a725c258a60`  
		Last Modified: Fri, 04 Sep 2026 21:07:19 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5adac1ef2d0065ee256cb32fb6731ff2741855399651ce40f00f5598fad0719`  
		Last Modified: Fri, 04 Sep 2026 21:07:21 GMT  
		Size: 20.9 MB (20922137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f87cd85cbd0116f4f8ad286288aab8747ea157bd1492a90b56940af638bfb58`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90ec0d361f1ec20624a14dd76d01ec8c980c4b60471ee94f809d5041ed3e1dc3`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff5b4719988fc689cab3219a99f099a68f2b30e629bf5faf8ab07f4d7494bb1`  
		Last Modified: Fri, 04 Sep 2026 21:07:17 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11caab8a6aa5b00b82113facf56e73fd3ae11fe996926194fa3704ab18c319a`  
		Last Modified: Fri, 04 Sep 2026 21:07:20 GMT  
		Size: 24.0 MB (24007443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d9505401d0f17d361f4644bbe18a93db1f5e5df41cd749a2ae0291fced5edc`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dfa8cde90f383566a6fb9c13931b737c448bf71a365581276c0c40c490f7908`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c90ff0ced5d86874c888c06df3d8bb343e3d9e773de2adff793602b8df5f79`  
		Last Modified: Fri, 04 Sep 2026 21:07:16 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32611f2ce57453a5ddb6e14965fe47e49b8a76d66fd3883a281c5fbd22f88293`  
		Last Modified: Fri, 04 Sep 2026 21:07:18 GMT  
		Size: 11.9 MB (11883638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
