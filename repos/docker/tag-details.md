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
-	[`docker:29.8.1`](#docker2981)
-	[`docker:29.8.1-alpine3.24`](#docker2981-alpine324)
-	[`docker:29.8.1-cli`](#docker2981-cli)
-	[`docker:29.8.1-cli-alpine3.24`](#docker2981-cli-alpine324)
-	[`docker:29.8.1-dind`](#docker2981-dind)
-	[`docker:29.8.1-dind-alpine3.24`](#docker2981-dind-alpine324)
-	[`docker:29.8.1-dind-rootless`](#docker2981-dind-rootless)
-	[`docker:29.8.1-windowsservercore`](#docker2981-windowsservercore)
-	[`docker:29.8.1-windowsservercore-ltsc2022`](#docker2981-windowsservercore-ltsc2022)
-	[`docker:29.8.1-windowsservercore-ltsc2025`](#docker2981-windowsservercore-ltsc2025)
-	[`docker:cli`](#dockercli)
-	[`docker:dind`](#dockerdind)
-	[`docker:dind-rootless`](#dockerdind-rootless)
-	[`docker:latest`](#dockerlatest)
-	[`docker:windowsservercore`](#dockerwindowsservercore)
-	[`docker:windowsservercore-ltsc2022`](#dockerwindowsservercore-ltsc2022)
-	[`docker:windowsservercore-ltsc2025`](#dockerwindowsservercore-ltsc2025)

## `docker:29`

```console
$ docker pull docker@sha256:76cd6bbc3ab600fced21a7e1bea77ac00cb7c545eb95d5767e4ec4ffbcb242dc
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
$ docker pull docker@sha256:2ed826e92388178e49d1a81cbafcbb56d5f6c8dad2fbf5e1f41ae7501c8c525f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137783129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a365b64dc50e3dec0a4b5687b6b4708e6f120bcbc11468574c9096a447f83f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:38:01 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:38:05 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:38:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:38:05 GMT
CMD []
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
	-	`sha256:4e87dd5da4e5ef6960c88ae1df7960a21f52edfca95c1bf7ea25b3fddcfe1ef2`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 4.1 MB (4074988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0a4f70905efcc07de79a56cf648158405bd856b1f4fa7486747247ed4863bc`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 81.1 KB (81092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60a830b82765ceb72b79da36b753ab25a8a1461dbcb89e653e97b94ba99f735`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a1889958343c89fa6c4945bce76ac383c0eb453d5cd845f0002f3ec55cc985`  
		Last Modified: Tue, 15 Sep 2026 23:38:17 GMT  
		Size: 67.1 MB (67073301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda0dfb224405de5cb0909614cb8bedc633fad0ae89ae45c336a773ea3702eec`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725c1a3851991782b2a4e2904e71d53eb6efa832b25c945ffa24876fe60c0084`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:6d723a55e3bb259b997228b7edbc3bf4858c1f7379a0e934a26464441e0d1cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334113c8afade62f95b5ab9592b4a57c315e06b156a37069c4648340ddeb05f2`

```dockerfile
```

-	Layers:
	-	`sha256:0653063129d8744734c226a48bc8a1758e91c6aad4380abfed7f29f1588fae56`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v6

```console
$ docker pull docker@sha256:7fb0728f53061ac4f1ea73dbef3a25d82bafede09cf8499f033dcdf3e6032cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129007955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afba1777e701a9db31378cd407e6341e16c76ea37f2a776fd7df3606efc94024`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:40:15 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:40:19 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:40:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:40:19 GMT
CMD []
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
	-	`sha256:e0e9a69b8fcc7e2830e2be7e833021284b2e9af7a4fc0d6fdbf5536b43349b48`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 3.7 MB (3711045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc26824bc5981a5498251a8f1451aec1f1417dcef6762c1f89118904f4a974d`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 79.8 KB (79792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae14a434967bb7a41fdaf05d988b63d026b1a05614910bfbfeef41969984625`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb29dc57ae486c1e5957568e94b9c63d95a85d2281ae75395116a9623b4c6a4`  
		Last Modified: Tue, 15 Sep 2026 23:40:32 GMT  
		Size: 62.5 MB (62474091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee3c8b923e8f8d0d4947df79343b1c81f787d8bb14efd8bb08c71b6b1357851`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6960a02400d51d8806e1d0e1c05c6def65d27636b46688194d7146681aae15`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 3.3 KB (3298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:b5f0f8188034f87aa28293e7be549ce407eafa1d052f1f897b3592abb6f9d132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad52914cd71b8352536decf818dff831036da2ddd3d104463ecb5edc86190c17`

```dockerfile
```

-	Layers:
	-	`sha256:55fc5397ad44431475f3e96ad23ddbed30c97b3e2d86a6b5dbaa637e4b63ab54`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v7

```console
$ docker pull docker@sha256:09cdc830618f29992714d8786a3997c89388aa8f96ee3f78f8d730199e68b625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127511668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dcb1066bbaf1663c0ebc9045760fd2eba86220f7a52098c8745d426d6d7e5b5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:41:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:41:06 GMT
CMD []
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
	-	`sha256:14b170b97813bb5085c30143f1586878d2facd718e14fa73b78a3f2178b0d13b`  
		Last Modified: Tue, 15 Sep 2026 23:41:17 GMT  
		Size: 3.4 MB (3435064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc4626806b34f82eee96908ca018f22238bf7902c31aa9797a28b63497a45cf`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 76.2 KB (76159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9973da56d8a03ebcb40742d52c8ccc1152eda58af73c98ae65acdc08dfe02be0`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38927e611cb384f7501c2aa512d8385ff784288b4c0663a7527de558a204c1e`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 62.3 MB (62295743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd64529a9a562976533808c305de5fb84f8846a8959dad9f3d1cc76a322a425`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0935d2452d1cc660a862608c73270472d544329d1ef2f8124e795179d6128224`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:43f343d7c1a18a30482d44b410b24ef71858a1c323b1331017622ace2ed6aa40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad7b4dca102472689e173c6011b7902a3cea48cfe373ad0234a6a12022dba68`

```dockerfile
```

-	Layers:
	-	`sha256:2f5da5c9001a00066d2d5e4f4f117c8810b85ec2242e09032ab43b7731d43fe7`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b17882d07b6ab725b70b372259f2919166e1ceec47f517d7872c23dd55366b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127674252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ac680ab72270dab30fe53ec7098f1d93376f5e27c60400babe6504d25d1358`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:37:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:37:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:37:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:37:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:37:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:37:49 GMT
CMD []
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
	-	`sha256:e7f31adfbbfe1ddd9795278c468b5ee8df7674d04fd884550ab3308cb952aa99`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 4.6 MB (4616877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a6203c4036465ee974d6d30f2bdc716dd58ed8772d9b8e95d8e5fe09f014bb`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 90.4 KB (90408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8885901ddf5008261f7126df1a0e8870ba2120f642ebf2ca245b4d33fa2cf6ed`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c91750b0dc1a2f4ae4deaed7cbb525dd8c3ea8d419a81d6941d3ce57bca774a`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 60.8 MB (60816942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a1427fa42dfd7fe1c56a3dcc512752c75610cae75c7b72213d8261ef26c933`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f827cead56725c977de8763a27d41ed20bdb644cfbd6ae6d821451490f6f83`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:efa0525f3e1221f51b6cce71d06dd45a95a2e046fe355938eb878d7db3a46eff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4090ae604b768cdf9bd855106d49d5a798fa01581534af652544643dd1a23b`

```dockerfile
```

-	Layers:
	-	`sha256:d9b0333066801918997f4e0bff2a3272cbed2fbc88f81511c527df50d332606d`  
		Last Modified: Tue, 15 Sep 2026 23:37:57 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

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

## `docker:29-dind`

```console
$ docker pull docker@sha256:76cd6bbc3ab600fced21a7e1bea77ac00cb7c545eb95d5767e4ec4ffbcb242dc
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
$ docker pull docker@sha256:2ed826e92388178e49d1a81cbafcbb56d5f6c8dad2fbf5e1f41ae7501c8c525f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137783129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a365b64dc50e3dec0a4b5687b6b4708e6f120bcbc11468574c9096a447f83f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:38:01 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:38:05 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:38:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:38:05 GMT
CMD []
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
	-	`sha256:4e87dd5da4e5ef6960c88ae1df7960a21f52edfca95c1bf7ea25b3fddcfe1ef2`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 4.1 MB (4074988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0a4f70905efcc07de79a56cf648158405bd856b1f4fa7486747247ed4863bc`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 81.1 KB (81092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60a830b82765ceb72b79da36b753ab25a8a1461dbcb89e653e97b94ba99f735`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a1889958343c89fa6c4945bce76ac383c0eb453d5cd845f0002f3ec55cc985`  
		Last Modified: Tue, 15 Sep 2026 23:38:17 GMT  
		Size: 67.1 MB (67073301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda0dfb224405de5cb0909614cb8bedc633fad0ae89ae45c336a773ea3702eec`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725c1a3851991782b2a4e2904e71d53eb6efa832b25c945ffa24876fe60c0084`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:6d723a55e3bb259b997228b7edbc3bf4858c1f7379a0e934a26464441e0d1cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334113c8afade62f95b5ab9592b4a57c315e06b156a37069c4648340ddeb05f2`

```dockerfile
```

-	Layers:
	-	`sha256:0653063129d8744734c226a48bc8a1758e91c6aad4380abfed7f29f1588fae56`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:7fb0728f53061ac4f1ea73dbef3a25d82bafede09cf8499f033dcdf3e6032cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129007955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afba1777e701a9db31378cd407e6341e16c76ea37f2a776fd7df3606efc94024`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:40:15 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:40:19 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:40:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:40:19 GMT
CMD []
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
	-	`sha256:e0e9a69b8fcc7e2830e2be7e833021284b2e9af7a4fc0d6fdbf5536b43349b48`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 3.7 MB (3711045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc26824bc5981a5498251a8f1451aec1f1417dcef6762c1f89118904f4a974d`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 79.8 KB (79792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae14a434967bb7a41fdaf05d988b63d026b1a05614910bfbfeef41969984625`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb29dc57ae486c1e5957568e94b9c63d95a85d2281ae75395116a9623b4c6a4`  
		Last Modified: Tue, 15 Sep 2026 23:40:32 GMT  
		Size: 62.5 MB (62474091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee3c8b923e8f8d0d4947df79343b1c81f787d8bb14efd8bb08c71b6b1357851`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6960a02400d51d8806e1d0e1c05c6def65d27636b46688194d7146681aae15`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 3.3 KB (3298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:b5f0f8188034f87aa28293e7be549ce407eafa1d052f1f897b3592abb6f9d132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad52914cd71b8352536decf818dff831036da2ddd3d104463ecb5edc86190c17`

```dockerfile
```

-	Layers:
	-	`sha256:55fc5397ad44431475f3e96ad23ddbed30c97b3e2d86a6b5dbaa637e4b63ab54`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:09cdc830618f29992714d8786a3997c89388aa8f96ee3f78f8d730199e68b625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127511668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dcb1066bbaf1663c0ebc9045760fd2eba86220f7a52098c8745d426d6d7e5b5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:41:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:41:06 GMT
CMD []
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
	-	`sha256:14b170b97813bb5085c30143f1586878d2facd718e14fa73b78a3f2178b0d13b`  
		Last Modified: Tue, 15 Sep 2026 23:41:17 GMT  
		Size: 3.4 MB (3435064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc4626806b34f82eee96908ca018f22238bf7902c31aa9797a28b63497a45cf`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 76.2 KB (76159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9973da56d8a03ebcb40742d52c8ccc1152eda58af73c98ae65acdc08dfe02be0`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38927e611cb384f7501c2aa512d8385ff784288b4c0663a7527de558a204c1e`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 62.3 MB (62295743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd64529a9a562976533808c305de5fb84f8846a8959dad9f3d1cc76a322a425`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0935d2452d1cc660a862608c73270472d544329d1ef2f8124e795179d6128224`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:43f343d7c1a18a30482d44b410b24ef71858a1c323b1331017622ace2ed6aa40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad7b4dca102472689e173c6011b7902a3cea48cfe373ad0234a6a12022dba68`

```dockerfile
```

-	Layers:
	-	`sha256:2f5da5c9001a00066d2d5e4f4f117c8810b85ec2242e09032ab43b7731d43fe7`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b17882d07b6ab725b70b372259f2919166e1ceec47f517d7872c23dd55366b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127674252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ac680ab72270dab30fe53ec7098f1d93376f5e27c60400babe6504d25d1358`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:37:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:37:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:37:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:37:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:37:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:37:49 GMT
CMD []
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
	-	`sha256:e7f31adfbbfe1ddd9795278c468b5ee8df7674d04fd884550ab3308cb952aa99`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 4.6 MB (4616877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a6203c4036465ee974d6d30f2bdc716dd58ed8772d9b8e95d8e5fe09f014bb`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 90.4 KB (90408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8885901ddf5008261f7126df1a0e8870ba2120f642ebf2ca245b4d33fa2cf6ed`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c91750b0dc1a2f4ae4deaed7cbb525dd8c3ea8d419a81d6941d3ce57bca774a`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 60.8 MB (60816942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a1427fa42dfd7fe1c56a3dcc512752c75610cae75c7b72213d8261ef26c933`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f827cead56725c977de8763a27d41ed20bdb644cfbd6ae6d821451490f6f83`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:efa0525f3e1221f51b6cce71d06dd45a95a2e046fe355938eb878d7db3a46eff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4090ae604b768cdf9bd855106d49d5a798fa01581534af652544643dd1a23b`

```dockerfile
```

-	Layers:
	-	`sha256:d9b0333066801918997f4e0bff2a3272cbed2fbc88f81511c527df50d332606d`  
		Last Modified: Tue, 15 Sep 2026 23:37:57 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:e17fa54c2ffd511d8407c746eec77f7814e6f74fe20caf822dad1870599984c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:03d00e52a056d9126139f7fb1bafd890552b89382b97b783a35b9b87fdc13f4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156649835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a99a5d9ef2c5d50042d2937ba6836b782f5001ca93995add006241a71c69639`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Fri, 04 Sep 2026 21:48:29 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 		zfs 	; # buildkit
# Fri, 04 Sep 2026 21:48:30 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 04 Sep 2026 21:48:30 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 04 Sep 2026 21:48:33 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
VOLUME [/var/lib/docker]
# Fri, 04 Sep 2026 21:48:33 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 04 Sep 2026 21:48:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 04 Sep 2026 21:48:33 GMT
CMD []
# Fri, 04 Sep 2026 22:10:07 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 04 Sep 2026 22:10:07 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 04 Sep 2026 22:10:07 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 22:10:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 04 Sep 2026 22:10:08 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 04 Sep 2026 22:10:08 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 04 Sep 2026 22:10:08 GMT
USER rootless
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
	-	`sha256:00a34f0b90201abff8bcc9c4a10d3feb7a4383d0e45fb50df3359979f594f668`  
		Last Modified: Fri, 04 Sep 2026 21:48:43 GMT  
		Size: 7.3 MB (7277482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1033f2a9eb0f5af58e17fb2165fdd031f7148da6fff80c1d310cfa9008d2b29c`  
		Last Modified: Fri, 04 Sep 2026 21:48:43 GMT  
		Size: 87.9 KB (87868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26787ad8590b1be38758cee8a60ad27d76129a0bbc62071818dc1b25a046f9c9`  
		Last Modified: Fri, 04 Sep 2026 21:48:43 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c5926a040429553b04ded9b33b9cca944b731c7ef4ea7b2fb5a7bf282dc291`  
		Last Modified: Fri, 04 Sep 2026 21:48:45 GMT  
		Size: 67.1 MB (67145184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172d4398b5edd1287960590b5d14c2d6d050ba17a5710d651c7d9b59adc123b7`  
		Last Modified: Fri, 04 Sep 2026 21:48:44 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2940ffd2cce01481e6a4ee9ccb9a154831e0b7ec2ff0fa24c844ffe9f283592e`  
		Last Modified: Fri, 04 Sep 2026 21:48:44 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acbc2990db320e9710355491f9bcc94f0b27f76dc8e684a8c6513474fcb60c5`  
		Last Modified: Fri, 04 Sep 2026 22:10:13 GMT  
		Size: 3.5 MB (3466090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38a8d0ecfa27b138d1180134a608095239bc413265f95242a0b5a96b9e26e901`  
		Last Modified: Fri, 04 Sep 2026 22:10:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d524947de289255938b9fddf39189a2e8d8d41067b26dc411553f9aad02e98f`  
		Last Modified: Fri, 04 Sep 2026 22:10:13 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1beae32a291f7faece5197dc15b314d0f3ce54b34fbebb7b40e5df6b6d80a25d`  
		Last Modified: Fri, 04 Sep 2026 22:10:13 GMT  
		Size: 12.1 MB (12122062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab3ea9613ea7aad61a8f117af59aaecabdc3f5067d7f037fc75c02a4e049a9ee`  
		Last Modified: Fri, 04 Sep 2026 22:10:14 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:e6591040cb65da31d794efed855d9ba96e3df6ba3c967ddcdeacb96f9c0b4549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ea28ac5be3ca6ece8e442098732ea9fd8705aedfc050da84b8909a5ea44544`

```dockerfile
```

-	Layers:
	-	`sha256:3feb5c16ae775d621951977c0b14a0bb08c85ad0c992197d10f664eafc99a0b3`  
		Last Modified: Fri, 04 Sep 2026 22:10:12 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:19b6d666831cda38537c1fc60c76f32bd0f17c77f46d53b080d98b39e1f7cefb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145612523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31fffa92767a7e23a2148621dbad72ab547ddd6933fbaeaddc35adda8e1a6b6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Fri, 04 Sep 2026 21:48:27 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 		zfs 	; # buildkit
# Fri, 04 Sep 2026 21:48:28 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 04 Sep 2026 21:48:28 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 21:48:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 04 Sep 2026 21:48:31 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 04 Sep 2026 21:48:31 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 04 Sep 2026 21:48:31 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 04 Sep 2026 21:48:31 GMT
VOLUME [/var/lib/docker]
# Fri, 04 Sep 2026 21:48:31 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 04 Sep 2026 21:48:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 04 Sep 2026 21:48:31 GMT
CMD []
# Fri, 04 Sep 2026 22:09:46 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 04 Sep 2026 22:09:47 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 04 Sep 2026 22:09:47 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 22:09:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 04 Sep 2026 22:09:47 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 04 Sep 2026 22:09:47 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 04 Sep 2026 22:09:47 GMT
USER rootless
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
	-	`sha256:faca1f1d54a4d170bc5649bdbbf54767f493c522a20f757264e92bbb2b05e785`  
		Last Modified: Fri, 04 Sep 2026 21:48:41 GMT  
		Size: 7.8 MB (7803471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206d6697351ee5534cac2cceef72dd2be1e304f2cfd0703c70890b85c75e4542`  
		Last Modified: Fri, 04 Sep 2026 21:48:40 GMT  
		Size: 96.8 KB (96796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c157df887fbd7acb025ee1b818e434fe0e6a4de3bd772f44eca356d5a91d81`  
		Last Modified: Fri, 04 Sep 2026 21:48:40 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3434b2a31d30bd6ffb0af6393e471f8d1f12b56e56199839427b21773b47a2e4`  
		Last Modified: Fri, 04 Sep 2026 21:48:42 GMT  
		Size: 60.9 MB (60866515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae8e54398278befd5ae37493eec5d9cc08744bcc98fb4dd1cc41e01e5c6f761`  
		Last Modified: Fri, 04 Sep 2026 21:48:42 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc0daefd182a762c61055a8637a595f5dbcad6e1e5bc3a11dcd6a28f3f3cee5`  
		Last Modified: Fri, 04 Sep 2026 21:48:42 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff5d55a9e1ebcebba63a45096f8ec6bb9e3959524505b6c62213076295d6f96`  
		Last Modified: Fri, 04 Sep 2026 22:09:53 GMT  
		Size: 3.4 MB (3445390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d262a973f5e52a5e0661cc289078ad75e8fdf996e64a8db0c6f65fb16ddeb28`  
		Last Modified: Fri, 04 Sep 2026 22:09:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff32e1181c2e1603c36cd4efdca50573ee76302ac42ded49cd221aa41dab72e8`  
		Last Modified: Fri, 04 Sep 2026 22:09:53 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:833a54a36f598b9df8de07678f4cb7ba5352e0fb2ee8d1ffeb9b5d32759e9fde`  
		Last Modified: Fri, 04 Sep 2026 22:09:53 GMT  
		Size: 11.3 MB (11250650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9742aeabd6d685a0695f80adb8518afd4d6e88ab22a908684b88b3f0e7a7c3a9`  
		Last Modified: Fri, 04 Sep 2026 22:09:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:f85661d9412dc1c0864f9f4ba01060dd61c917121b268a9106bb5ce084cff53c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a98e324bb36d6acf54b0226abdb87a928baeace8c5e2d349dc50625758f1453e`

```dockerfile
```

-	Layers:
	-	`sha256:ce6fe7c217d57817329bccb5ccc1eadda454cab3d3f0c731235b073ee9c3ca6b`  
		Last Modified: Fri, 04 Sep 2026 22:09:52 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:56cb830d5214a985bf883c5c20bce067e352e5bfccfb2a87c44ab6202931374d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:43295e24d9571cbc4a77945302868f7a8c8dd222312e92c6b8ded4fa69c4f94e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514881984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3401f3252da7c543d71d9f5b60ae940e4f5d262eeec6f5c0bf44b571846d79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Tue, 15 Sep 2026 23:37:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:19 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:20 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:22 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:53 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:39:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:06 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c785a2e960c3bdfe1048c97eef776ae467ad09c173756ab1431943d9aebeae62`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee192afef0fc55eddadfb6d4d064d28a3d21a72905a7267ad903c6dda1ae771`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 385.9 KB (385914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550d8bc8d72b5f6850aee8f846464dc8da622df77c87ea1fa27094aa108168f3`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c653d2d2be21d7e8b0af0806b741d52a2294b650cb3b1bf280ac7b328b315d`  
		Last Modified: Tue, 15 Sep 2026 23:39:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b72aa3f62f0f2206c95787330bad1159d6576f0eae8efd108d2397a42db652`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 20.9 MB (20928690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999aea969d9d11d2fc3f6580695ffc2f3fb59eb17bb4f04fbacad544e5d773c6`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0f25a1bb7fb2366e410c6aec4ebac1e23605c17a1f693ff0826b31115762d4`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a2854c927ca9a786ed22ef8417833ba18e10513823ec6cbf35f4ea03eba5d1`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19f04dbaabc95b9d48cecba97ed540de8e8741edc4d5ad3cc8aa02a838cd424`  
		Last Modified: Tue, 15 Sep 2026 23:39:46 GMT  
		Size: 24.0 MB (24008795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa861e82998cfaf89545927ed0475bb31d2ba17321d95018e790ca9daafff6e`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd74d1034e8d778099ea04bb9bba6440441cdb55bc6fb367e65d18dfe851bf02`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc36c88ef9d37e30faf5c1c9e34cafb6425876e06d7c2afa4934ac211100bc2`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af7a7da407dcca7bf29402ff14517a17f93dcd22e701dd5c4e883ede03acdb8`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 11.9 MB (11917419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:df3d40210c8f4d8794aa8b543071c9bfe7132d27b8c1beffbc9b1586494c2ab9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276591913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab2feb597895037cee4eefe71798fb23c2a65cc36accee30ffe6e4e999dde7c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 23:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:13 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:14 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:15 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:40 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:38:57 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:38:59 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:00 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:13 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176be13a581f7b039327e85af7857331598f90d41fcd14cf73b80dfc25a723ef`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9850154bdaa7ef5f3ef6da850fd73d3f5c922e0716ba8b999fe5ab24b4aefc82`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 360.1 KB (360081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9bc1f7caae06f7263852defc6f14cd2608f6d1c431b254102d859a7718c8d`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e0d186a840aa1f2c5fa2df94c479a816ec15d0c8dca89b7ddeb153880adb71`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31595d3f0dd8620336916a891d400b4ef764e1ef88071898402232902d41209`  
		Last Modified: Tue, 15 Sep 2026 23:39:23 GMT  
		Size: 20.9 MB (20896042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543128c1c91d36863d249152b0aa1af21cdf3dbe9a3d0584c6ccd9cf6602575a`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e9f2ce6452ef78db1affd147aae7880ef727ccdf9a752ffa9c841a56a7affa`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea264089e11e5e2119488f98988af1c3b8e7a5a3e6a877d92b1eb539e19bf08`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532da97df2d01c14433cd89508ea47663f889a8d1a998c6f1b3a642ac2497c1f`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 24.0 MB (23981505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e48a4ca9ebf2a3982ae8e46750ac33dda36755b7e938de2c5455f061f9a75a`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95af5e67d30131626b9e919ed0997832699890da6313a908b6aa036fa2e5a68`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542a9d5ecb2520348e5df21a93d78879be34dc291044e8907bf58cbc18d3a227`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f734037e3944c771609e059481286ac2b2e1e1a088a0c4ae58eb7bdfde5ef022`  
		Last Modified: Tue, 15 Sep 2026 23:39:20 GMT  
		Size: 11.9 MB (11853772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:87045610be5a75da485a0b776b16a1d8db5b9807eebcdc7fbcf244d68e3de767
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:df3d40210c8f4d8794aa8b543071c9bfe7132d27b8c1beffbc9b1586494c2ab9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276591913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab2feb597895037cee4eefe71798fb23c2a65cc36accee30ffe6e4e999dde7c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 23:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:13 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:14 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:15 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:40 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:38:57 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:38:59 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:00 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:13 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176be13a581f7b039327e85af7857331598f90d41fcd14cf73b80dfc25a723ef`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9850154bdaa7ef5f3ef6da850fd73d3f5c922e0716ba8b999fe5ab24b4aefc82`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 360.1 KB (360081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9bc1f7caae06f7263852defc6f14cd2608f6d1c431b254102d859a7718c8d`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e0d186a840aa1f2c5fa2df94c479a816ec15d0c8dca89b7ddeb153880adb71`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31595d3f0dd8620336916a891d400b4ef764e1ef88071898402232902d41209`  
		Last Modified: Tue, 15 Sep 2026 23:39:23 GMT  
		Size: 20.9 MB (20896042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543128c1c91d36863d249152b0aa1af21cdf3dbe9a3d0584c6ccd9cf6602575a`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e9f2ce6452ef78db1affd147aae7880ef727ccdf9a752ffa9c841a56a7affa`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea264089e11e5e2119488f98988af1c3b8e7a5a3e6a877d92b1eb539e19bf08`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532da97df2d01c14433cd89508ea47663f889a8d1a998c6f1b3a642ac2497c1f`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 24.0 MB (23981505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e48a4ca9ebf2a3982ae8e46750ac33dda36755b7e938de2c5455f061f9a75a`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95af5e67d30131626b9e919ed0997832699890da6313a908b6aa036fa2e5a68`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542a9d5ecb2520348e5df21a93d78879be34dc291044e8907bf58cbc18d3a227`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f734037e3944c771609e059481286ac2b2e1e1a088a0c4ae58eb7bdfde5ef022`  
		Last Modified: Tue, 15 Sep 2026 23:39:20 GMT  
		Size: 11.9 MB (11853772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:6db9c08cc76ccbd17564a49900870dcf9de481ab2f0624e918a093c5c533c943
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `docker:29-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:43295e24d9571cbc4a77945302868f7a8c8dd222312e92c6b8ded4fa69c4f94e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514881984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3401f3252da7c543d71d9f5b60ae940e4f5d262eeec6f5c0bf44b571846d79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Tue, 15 Sep 2026 23:37:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:19 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:20 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:22 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:53 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:39:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:06 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c785a2e960c3bdfe1048c97eef776ae467ad09c173756ab1431943d9aebeae62`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee192afef0fc55eddadfb6d4d064d28a3d21a72905a7267ad903c6dda1ae771`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 385.9 KB (385914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550d8bc8d72b5f6850aee8f846464dc8da622df77c87ea1fa27094aa108168f3`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c653d2d2be21d7e8b0af0806b741d52a2294b650cb3b1bf280ac7b328b315d`  
		Last Modified: Tue, 15 Sep 2026 23:39:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b72aa3f62f0f2206c95787330bad1159d6576f0eae8efd108d2397a42db652`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 20.9 MB (20928690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999aea969d9d11d2fc3f6580695ffc2f3fb59eb17bb4f04fbacad544e5d773c6`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0f25a1bb7fb2366e410c6aec4ebac1e23605c17a1f693ff0826b31115762d4`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a2854c927ca9a786ed22ef8417833ba18e10513823ec6cbf35f4ea03eba5d1`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19f04dbaabc95b9d48cecba97ed540de8e8741edc4d5ad3cc8aa02a838cd424`  
		Last Modified: Tue, 15 Sep 2026 23:39:46 GMT  
		Size: 24.0 MB (24008795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa861e82998cfaf89545927ed0475bb31d2ba17321d95018e790ca9daafff6e`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd74d1034e8d778099ea04bb9bba6440441cdb55bc6fb367e65d18dfe851bf02`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc36c88ef9d37e30faf5c1c9e34cafb6425876e06d7c2afa4934ac211100bc2`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af7a7da407dcca7bf29402ff14517a17f93dcd22e701dd5c4e883ede03acdb8`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 11.9 MB (11917419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8`

```console
$ docker pull docker@sha256:76cd6bbc3ab600fced21a7e1bea77ac00cb7c545eb95d5767e4ec4ffbcb242dc
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

### `docker:29.8` - linux; amd64

```console
$ docker pull docker@sha256:2ed826e92388178e49d1a81cbafcbb56d5f6c8dad2fbf5e1f41ae7501c8c525f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137783129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a365b64dc50e3dec0a4b5687b6b4708e6f120bcbc11468574c9096a447f83f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:38:01 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:38:05 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:38:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:38:05 GMT
CMD []
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
	-	`sha256:4e87dd5da4e5ef6960c88ae1df7960a21f52edfca95c1bf7ea25b3fddcfe1ef2`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 4.1 MB (4074988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0a4f70905efcc07de79a56cf648158405bd856b1f4fa7486747247ed4863bc`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 81.1 KB (81092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60a830b82765ceb72b79da36b753ab25a8a1461dbcb89e653e97b94ba99f735`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a1889958343c89fa6c4945bce76ac383c0eb453d5cd845f0002f3ec55cc985`  
		Last Modified: Tue, 15 Sep 2026 23:38:17 GMT  
		Size: 67.1 MB (67073301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda0dfb224405de5cb0909614cb8bedc633fad0ae89ae45c336a773ea3702eec`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725c1a3851991782b2a4e2904e71d53eb6efa832b25c945ffa24876fe60c0084`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8` - unknown; unknown

```console
$ docker pull docker@sha256:6d723a55e3bb259b997228b7edbc3bf4858c1f7379a0e934a26464441e0d1cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334113c8afade62f95b5ab9592b4a57c315e06b156a37069c4648340ddeb05f2`

```dockerfile
```

-	Layers:
	-	`sha256:0653063129d8744734c226a48bc8a1758e91c6aad4380abfed7f29f1588fae56`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8` - linux; arm variant v6

```console
$ docker pull docker@sha256:7fb0728f53061ac4f1ea73dbef3a25d82bafede09cf8499f033dcdf3e6032cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129007955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afba1777e701a9db31378cd407e6341e16c76ea37f2a776fd7df3606efc94024`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:40:15 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:40:19 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:40:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:40:19 GMT
CMD []
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
	-	`sha256:e0e9a69b8fcc7e2830e2be7e833021284b2e9af7a4fc0d6fdbf5536b43349b48`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 3.7 MB (3711045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc26824bc5981a5498251a8f1451aec1f1417dcef6762c1f89118904f4a974d`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 79.8 KB (79792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae14a434967bb7a41fdaf05d988b63d026b1a05614910bfbfeef41969984625`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb29dc57ae486c1e5957568e94b9c63d95a85d2281ae75395116a9623b4c6a4`  
		Last Modified: Tue, 15 Sep 2026 23:40:32 GMT  
		Size: 62.5 MB (62474091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee3c8b923e8f8d0d4947df79343b1c81f787d8bb14efd8bb08c71b6b1357851`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6960a02400d51d8806e1d0e1c05c6def65d27636b46688194d7146681aae15`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 3.3 KB (3298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8` - unknown; unknown

```console
$ docker pull docker@sha256:b5f0f8188034f87aa28293e7be549ce407eafa1d052f1f897b3592abb6f9d132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad52914cd71b8352536decf818dff831036da2ddd3d104463ecb5edc86190c17`

```dockerfile
```

-	Layers:
	-	`sha256:55fc5397ad44431475f3e96ad23ddbed30c97b3e2d86a6b5dbaa637e4b63ab54`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8` - linux; arm variant v7

```console
$ docker pull docker@sha256:09cdc830618f29992714d8786a3997c89388aa8f96ee3f78f8d730199e68b625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127511668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dcb1066bbaf1663c0ebc9045760fd2eba86220f7a52098c8745d426d6d7e5b5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:41:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:41:06 GMT
CMD []
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
	-	`sha256:14b170b97813bb5085c30143f1586878d2facd718e14fa73b78a3f2178b0d13b`  
		Last Modified: Tue, 15 Sep 2026 23:41:17 GMT  
		Size: 3.4 MB (3435064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc4626806b34f82eee96908ca018f22238bf7902c31aa9797a28b63497a45cf`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 76.2 KB (76159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9973da56d8a03ebcb40742d52c8ccc1152eda58af73c98ae65acdc08dfe02be0`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38927e611cb384f7501c2aa512d8385ff784288b4c0663a7527de558a204c1e`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 62.3 MB (62295743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd64529a9a562976533808c305de5fb84f8846a8959dad9f3d1cc76a322a425`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0935d2452d1cc660a862608c73270472d544329d1ef2f8124e795179d6128224`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8` - unknown; unknown

```console
$ docker pull docker@sha256:43f343d7c1a18a30482d44b410b24ef71858a1c323b1331017622ace2ed6aa40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad7b4dca102472689e173c6011b7902a3cea48cfe373ad0234a6a12022dba68`

```dockerfile
```

-	Layers:
	-	`sha256:2f5da5c9001a00066d2d5e4f4f117c8810b85ec2242e09032ab43b7731d43fe7`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b17882d07b6ab725b70b372259f2919166e1ceec47f517d7872c23dd55366b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127674252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ac680ab72270dab30fe53ec7098f1d93376f5e27c60400babe6504d25d1358`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:37:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:37:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:37:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:37:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:37:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:37:49 GMT
CMD []
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
	-	`sha256:e7f31adfbbfe1ddd9795278c468b5ee8df7674d04fd884550ab3308cb952aa99`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 4.6 MB (4616877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a6203c4036465ee974d6d30f2bdc716dd58ed8772d9b8e95d8e5fe09f014bb`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 90.4 KB (90408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8885901ddf5008261f7126df1a0e8870ba2120f642ebf2ca245b4d33fa2cf6ed`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c91750b0dc1a2f4ae4deaed7cbb525dd8c3ea8d419a81d6941d3ce57bca774a`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 60.8 MB (60816942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a1427fa42dfd7fe1c56a3dcc512752c75610cae75c7b72213d8261ef26c933`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f827cead56725c977de8763a27d41ed20bdb644cfbd6ae6d821451490f6f83`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8` - unknown; unknown

```console
$ docker pull docker@sha256:efa0525f3e1221f51b6cce71d06dd45a95a2e046fe355938eb878d7db3a46eff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4090ae604b768cdf9bd855106d49d5a798fa01581534af652544643dd1a23b`

```dockerfile
```

-	Layers:
	-	`sha256:d9b0333066801918997f4e0bff2a3272cbed2fbc88f81511c527df50d332606d`  
		Last Modified: Tue, 15 Sep 2026 23:37:57 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8-cli`

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

### `docker:29.8-cli` - linux; amd64

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

### `docker:29.8-cli` - unknown; unknown

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

### `docker:29.8-cli` - linux; arm variant v6

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

### `docker:29.8-cli` - unknown; unknown

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

### `docker:29.8-cli` - linux; arm variant v7

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

### `docker:29.8-cli` - unknown; unknown

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

### `docker:29.8-cli` - linux; arm64 variant v8

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

### `docker:29.8-cli` - unknown; unknown

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

## `docker:29.8-dind`

```console
$ docker pull docker@sha256:76cd6bbc3ab600fced21a7e1bea77ac00cb7c545eb95d5767e4ec4ffbcb242dc
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

### `docker:29.8-dind` - linux; amd64

```console
$ docker pull docker@sha256:2ed826e92388178e49d1a81cbafcbb56d5f6c8dad2fbf5e1f41ae7501c8c525f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137783129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a365b64dc50e3dec0a4b5687b6b4708e6f120bcbc11468574c9096a447f83f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:38:01 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:38:05 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:38:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:38:05 GMT
CMD []
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
	-	`sha256:4e87dd5da4e5ef6960c88ae1df7960a21f52edfca95c1bf7ea25b3fddcfe1ef2`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 4.1 MB (4074988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0a4f70905efcc07de79a56cf648158405bd856b1f4fa7486747247ed4863bc`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 81.1 KB (81092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60a830b82765ceb72b79da36b753ab25a8a1461dbcb89e653e97b94ba99f735`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a1889958343c89fa6c4945bce76ac383c0eb453d5cd845f0002f3ec55cc985`  
		Last Modified: Tue, 15 Sep 2026 23:38:17 GMT  
		Size: 67.1 MB (67073301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda0dfb224405de5cb0909614cb8bedc633fad0ae89ae45c336a773ea3702eec`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725c1a3851991782b2a4e2904e71d53eb6efa832b25c945ffa24876fe60c0084`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind` - unknown; unknown

```console
$ docker pull docker@sha256:6d723a55e3bb259b997228b7edbc3bf4858c1f7379a0e934a26464441e0d1cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334113c8afade62f95b5ab9592b4a57c315e06b156a37069c4648340ddeb05f2`

```dockerfile
```

-	Layers:
	-	`sha256:0653063129d8744734c226a48bc8a1758e91c6aad4380abfed7f29f1588fae56`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:7fb0728f53061ac4f1ea73dbef3a25d82bafede09cf8499f033dcdf3e6032cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129007955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afba1777e701a9db31378cd407e6341e16c76ea37f2a776fd7df3606efc94024`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:40:15 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:40:19 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:40:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:40:19 GMT
CMD []
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
	-	`sha256:e0e9a69b8fcc7e2830e2be7e833021284b2e9af7a4fc0d6fdbf5536b43349b48`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 3.7 MB (3711045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc26824bc5981a5498251a8f1451aec1f1417dcef6762c1f89118904f4a974d`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 79.8 KB (79792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae14a434967bb7a41fdaf05d988b63d026b1a05614910bfbfeef41969984625`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb29dc57ae486c1e5957568e94b9c63d95a85d2281ae75395116a9623b4c6a4`  
		Last Modified: Tue, 15 Sep 2026 23:40:32 GMT  
		Size: 62.5 MB (62474091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee3c8b923e8f8d0d4947df79343b1c81f787d8bb14efd8bb08c71b6b1357851`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6960a02400d51d8806e1d0e1c05c6def65d27636b46688194d7146681aae15`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 3.3 KB (3298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind` - unknown; unknown

```console
$ docker pull docker@sha256:b5f0f8188034f87aa28293e7be549ce407eafa1d052f1f897b3592abb6f9d132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad52914cd71b8352536decf818dff831036da2ddd3d104463ecb5edc86190c17`

```dockerfile
```

-	Layers:
	-	`sha256:55fc5397ad44431475f3e96ad23ddbed30c97b3e2d86a6b5dbaa637e4b63ab54`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:09cdc830618f29992714d8786a3997c89388aa8f96ee3f78f8d730199e68b625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127511668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dcb1066bbaf1663c0ebc9045760fd2eba86220f7a52098c8745d426d6d7e5b5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:41:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:41:06 GMT
CMD []
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
	-	`sha256:14b170b97813bb5085c30143f1586878d2facd718e14fa73b78a3f2178b0d13b`  
		Last Modified: Tue, 15 Sep 2026 23:41:17 GMT  
		Size: 3.4 MB (3435064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc4626806b34f82eee96908ca018f22238bf7902c31aa9797a28b63497a45cf`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 76.2 KB (76159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9973da56d8a03ebcb40742d52c8ccc1152eda58af73c98ae65acdc08dfe02be0`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38927e611cb384f7501c2aa512d8385ff784288b4c0663a7527de558a204c1e`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 62.3 MB (62295743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd64529a9a562976533808c305de5fb84f8846a8959dad9f3d1cc76a322a425`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0935d2452d1cc660a862608c73270472d544329d1ef2f8124e795179d6128224`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind` - unknown; unknown

```console
$ docker pull docker@sha256:43f343d7c1a18a30482d44b410b24ef71858a1c323b1331017622ace2ed6aa40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad7b4dca102472689e173c6011b7902a3cea48cfe373ad0234a6a12022dba68`

```dockerfile
```

-	Layers:
	-	`sha256:2f5da5c9001a00066d2d5e4f4f117c8810b85ec2242e09032ab43b7731d43fe7`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b17882d07b6ab725b70b372259f2919166e1ceec47f517d7872c23dd55366b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127674252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ac680ab72270dab30fe53ec7098f1d93376f5e27c60400babe6504d25d1358`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:37:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:37:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:37:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:37:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:37:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:37:49 GMT
CMD []
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
	-	`sha256:e7f31adfbbfe1ddd9795278c468b5ee8df7674d04fd884550ab3308cb952aa99`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 4.6 MB (4616877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a6203c4036465ee974d6d30f2bdc716dd58ed8772d9b8e95d8e5fe09f014bb`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 90.4 KB (90408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8885901ddf5008261f7126df1a0e8870ba2120f642ebf2ca245b4d33fa2cf6ed`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c91750b0dc1a2f4ae4deaed7cbb525dd8c3ea8d419a81d6941d3ce57bca774a`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 60.8 MB (60816942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a1427fa42dfd7fe1c56a3dcc512752c75610cae75c7b72213d8261ef26c933`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f827cead56725c977de8763a27d41ed20bdb644cfbd6ae6d821451490f6f83`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind` - unknown; unknown

```console
$ docker pull docker@sha256:efa0525f3e1221f51b6cce71d06dd45a95a2e046fe355938eb878d7db3a46eff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4090ae604b768cdf9bd855106d49d5a798fa01581534af652544643dd1a23b`

```dockerfile
```

-	Layers:
	-	`sha256:d9b0333066801918997f4e0bff2a3272cbed2fbc88f81511c527df50d332606d`  
		Last Modified: Tue, 15 Sep 2026 23:37:57 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8-dind-rootless`

```console
$ docker pull docker@sha256:e17fa54c2ffd511d8407c746eec77f7814e6f74fe20caf822dad1870599984c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.8-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:03d00e52a056d9126139f7fb1bafd890552b89382b97b783a35b9b87fdc13f4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156649835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a99a5d9ef2c5d50042d2937ba6836b782f5001ca93995add006241a71c69639`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Fri, 04 Sep 2026 21:48:29 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 		zfs 	; # buildkit
# Fri, 04 Sep 2026 21:48:30 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 04 Sep 2026 21:48:30 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 04 Sep 2026 21:48:33 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
VOLUME [/var/lib/docker]
# Fri, 04 Sep 2026 21:48:33 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 04 Sep 2026 21:48:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 04 Sep 2026 21:48:33 GMT
CMD []
# Fri, 04 Sep 2026 22:10:07 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 04 Sep 2026 22:10:07 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 04 Sep 2026 22:10:07 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 22:10:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 04 Sep 2026 22:10:08 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 04 Sep 2026 22:10:08 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 04 Sep 2026 22:10:08 GMT
USER rootless
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
	-	`sha256:00a34f0b90201abff8bcc9c4a10d3feb7a4383d0e45fb50df3359979f594f668`  
		Last Modified: Fri, 04 Sep 2026 21:48:43 GMT  
		Size: 7.3 MB (7277482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1033f2a9eb0f5af58e17fb2165fdd031f7148da6fff80c1d310cfa9008d2b29c`  
		Last Modified: Fri, 04 Sep 2026 21:48:43 GMT  
		Size: 87.9 KB (87868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26787ad8590b1be38758cee8a60ad27d76129a0bbc62071818dc1b25a046f9c9`  
		Last Modified: Fri, 04 Sep 2026 21:48:43 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c5926a040429553b04ded9b33b9cca944b731c7ef4ea7b2fb5a7bf282dc291`  
		Last Modified: Fri, 04 Sep 2026 21:48:45 GMT  
		Size: 67.1 MB (67145184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172d4398b5edd1287960590b5d14c2d6d050ba17a5710d651c7d9b59adc123b7`  
		Last Modified: Fri, 04 Sep 2026 21:48:44 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2940ffd2cce01481e6a4ee9ccb9a154831e0b7ec2ff0fa24c844ffe9f283592e`  
		Last Modified: Fri, 04 Sep 2026 21:48:44 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acbc2990db320e9710355491f9bcc94f0b27f76dc8e684a8c6513474fcb60c5`  
		Last Modified: Fri, 04 Sep 2026 22:10:13 GMT  
		Size: 3.5 MB (3466090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38a8d0ecfa27b138d1180134a608095239bc413265f95242a0b5a96b9e26e901`  
		Last Modified: Fri, 04 Sep 2026 22:10:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d524947de289255938b9fddf39189a2e8d8d41067b26dc411553f9aad02e98f`  
		Last Modified: Fri, 04 Sep 2026 22:10:13 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1beae32a291f7faece5197dc15b314d0f3ce54b34fbebb7b40e5df6b6d80a25d`  
		Last Modified: Fri, 04 Sep 2026 22:10:13 GMT  
		Size: 12.1 MB (12122062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab3ea9613ea7aad61a8f117af59aaecabdc3f5067d7f037fc75c02a4e049a9ee`  
		Last Modified: Fri, 04 Sep 2026 22:10:14 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:e6591040cb65da31d794efed855d9ba96e3df6ba3c967ddcdeacb96f9c0b4549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ea28ac5be3ca6ece8e442098732ea9fd8705aedfc050da84b8909a5ea44544`

```dockerfile
```

-	Layers:
	-	`sha256:3feb5c16ae775d621951977c0b14a0bb08c85ad0c992197d10f664eafc99a0b3`  
		Last Modified: Fri, 04 Sep 2026 22:10:12 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:19b6d666831cda38537c1fc60c76f32bd0f17c77f46d53b080d98b39e1f7cefb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145612523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31fffa92767a7e23a2148621dbad72ab547ddd6933fbaeaddc35adda8e1a6b6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Fri, 04 Sep 2026 21:48:27 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 		zfs 	; # buildkit
# Fri, 04 Sep 2026 21:48:28 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 04 Sep 2026 21:48:28 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 21:48:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 04 Sep 2026 21:48:31 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 04 Sep 2026 21:48:31 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 04 Sep 2026 21:48:31 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 04 Sep 2026 21:48:31 GMT
VOLUME [/var/lib/docker]
# Fri, 04 Sep 2026 21:48:31 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 04 Sep 2026 21:48:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 04 Sep 2026 21:48:31 GMT
CMD []
# Fri, 04 Sep 2026 22:09:46 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 04 Sep 2026 22:09:47 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 04 Sep 2026 22:09:47 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 22:09:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 04 Sep 2026 22:09:47 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 04 Sep 2026 22:09:47 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 04 Sep 2026 22:09:47 GMT
USER rootless
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
	-	`sha256:faca1f1d54a4d170bc5649bdbbf54767f493c522a20f757264e92bbb2b05e785`  
		Last Modified: Fri, 04 Sep 2026 21:48:41 GMT  
		Size: 7.8 MB (7803471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206d6697351ee5534cac2cceef72dd2be1e304f2cfd0703c70890b85c75e4542`  
		Last Modified: Fri, 04 Sep 2026 21:48:40 GMT  
		Size: 96.8 KB (96796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c157df887fbd7acb025ee1b818e434fe0e6a4de3bd772f44eca356d5a91d81`  
		Last Modified: Fri, 04 Sep 2026 21:48:40 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3434b2a31d30bd6ffb0af6393e471f8d1f12b56e56199839427b21773b47a2e4`  
		Last Modified: Fri, 04 Sep 2026 21:48:42 GMT  
		Size: 60.9 MB (60866515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae8e54398278befd5ae37493eec5d9cc08744bcc98fb4dd1cc41e01e5c6f761`  
		Last Modified: Fri, 04 Sep 2026 21:48:42 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc0daefd182a762c61055a8637a595f5dbcad6e1e5bc3a11dcd6a28f3f3cee5`  
		Last Modified: Fri, 04 Sep 2026 21:48:42 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff5d55a9e1ebcebba63a45096f8ec6bb9e3959524505b6c62213076295d6f96`  
		Last Modified: Fri, 04 Sep 2026 22:09:53 GMT  
		Size: 3.4 MB (3445390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d262a973f5e52a5e0661cc289078ad75e8fdf996e64a8db0c6f65fb16ddeb28`  
		Last Modified: Fri, 04 Sep 2026 22:09:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff32e1181c2e1603c36cd4efdca50573ee76302ac42ded49cd221aa41dab72e8`  
		Last Modified: Fri, 04 Sep 2026 22:09:53 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:833a54a36f598b9df8de07678f4cb7ba5352e0fb2ee8d1ffeb9b5d32759e9fde`  
		Last Modified: Fri, 04 Sep 2026 22:09:53 GMT  
		Size: 11.3 MB (11250650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9742aeabd6d685a0695f80adb8518afd4d6e88ab22a908684b88b3f0e7a7c3a9`  
		Last Modified: Fri, 04 Sep 2026 22:09:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:f85661d9412dc1c0864f9f4ba01060dd61c917121b268a9106bb5ce084cff53c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a98e324bb36d6acf54b0226abdb87a928baeace8c5e2d349dc50625758f1453e`

```dockerfile
```

-	Layers:
	-	`sha256:ce6fe7c217d57817329bccb5ccc1eadda454cab3d3f0c731235b073ee9c3ca6b`  
		Last Modified: Fri, 04 Sep 2026 22:09:52 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8-windowsservercore`

```console
$ docker pull docker@sha256:56cb830d5214a985bf883c5c20bce067e352e5bfccfb2a87c44ab6202931374d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `docker:29.8-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:43295e24d9571cbc4a77945302868f7a8c8dd222312e92c6b8ded4fa69c4f94e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514881984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3401f3252da7c543d71d9f5b60ae940e4f5d262eeec6f5c0bf44b571846d79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Tue, 15 Sep 2026 23:37:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:19 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:20 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:22 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:53 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:39:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:06 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c785a2e960c3bdfe1048c97eef776ae467ad09c173756ab1431943d9aebeae62`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee192afef0fc55eddadfb6d4d064d28a3d21a72905a7267ad903c6dda1ae771`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 385.9 KB (385914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550d8bc8d72b5f6850aee8f846464dc8da622df77c87ea1fa27094aa108168f3`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c653d2d2be21d7e8b0af0806b741d52a2294b650cb3b1bf280ac7b328b315d`  
		Last Modified: Tue, 15 Sep 2026 23:39:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b72aa3f62f0f2206c95787330bad1159d6576f0eae8efd108d2397a42db652`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 20.9 MB (20928690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999aea969d9d11d2fc3f6580695ffc2f3fb59eb17bb4f04fbacad544e5d773c6`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0f25a1bb7fb2366e410c6aec4ebac1e23605c17a1f693ff0826b31115762d4`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a2854c927ca9a786ed22ef8417833ba18e10513823ec6cbf35f4ea03eba5d1`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19f04dbaabc95b9d48cecba97ed540de8e8741edc4d5ad3cc8aa02a838cd424`  
		Last Modified: Tue, 15 Sep 2026 23:39:46 GMT  
		Size: 24.0 MB (24008795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa861e82998cfaf89545927ed0475bb31d2ba17321d95018e790ca9daafff6e`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd74d1034e8d778099ea04bb9bba6440441cdb55bc6fb367e65d18dfe851bf02`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc36c88ef9d37e30faf5c1c9e34cafb6425876e06d7c2afa4934ac211100bc2`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af7a7da407dcca7bf29402ff14517a17f93dcd22e701dd5c4e883ede03acdb8`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 11.9 MB (11917419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.8-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:df3d40210c8f4d8794aa8b543071c9bfe7132d27b8c1beffbc9b1586494c2ab9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276591913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab2feb597895037cee4eefe71798fb23c2a65cc36accee30ffe6e4e999dde7c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 23:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:13 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:14 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:15 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:40 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:38:57 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:38:59 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:00 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:13 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176be13a581f7b039327e85af7857331598f90d41fcd14cf73b80dfc25a723ef`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9850154bdaa7ef5f3ef6da850fd73d3f5c922e0716ba8b999fe5ab24b4aefc82`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 360.1 KB (360081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9bc1f7caae06f7263852defc6f14cd2608f6d1c431b254102d859a7718c8d`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e0d186a840aa1f2c5fa2df94c479a816ec15d0c8dca89b7ddeb153880adb71`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31595d3f0dd8620336916a891d400b4ef764e1ef88071898402232902d41209`  
		Last Modified: Tue, 15 Sep 2026 23:39:23 GMT  
		Size: 20.9 MB (20896042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543128c1c91d36863d249152b0aa1af21cdf3dbe9a3d0584c6ccd9cf6602575a`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e9f2ce6452ef78db1affd147aae7880ef727ccdf9a752ffa9c841a56a7affa`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea264089e11e5e2119488f98988af1c3b8e7a5a3e6a877d92b1eb539e19bf08`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532da97df2d01c14433cd89508ea47663f889a8d1a998c6f1b3a642ac2497c1f`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 24.0 MB (23981505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e48a4ca9ebf2a3982ae8e46750ac33dda36755b7e938de2c5455f061f9a75a`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95af5e67d30131626b9e919ed0997832699890da6313a908b6aa036fa2e5a68`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542a9d5ecb2520348e5df21a93d78879be34dc291044e8907bf58cbc18d3a227`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f734037e3944c771609e059481286ac2b2e1e1a088a0c4ae58eb7bdfde5ef022`  
		Last Modified: Tue, 15 Sep 2026 23:39:20 GMT  
		Size: 11.9 MB (11853772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:87045610be5a75da485a0b776b16a1d8db5b9807eebcdc7fbcf244d68e3de767
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:29.8-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:df3d40210c8f4d8794aa8b543071c9bfe7132d27b8c1beffbc9b1586494c2ab9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276591913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab2feb597895037cee4eefe71798fb23c2a65cc36accee30ffe6e4e999dde7c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 23:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:13 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:14 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:15 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:40 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:38:57 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:38:59 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:00 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:13 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176be13a581f7b039327e85af7857331598f90d41fcd14cf73b80dfc25a723ef`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9850154bdaa7ef5f3ef6da850fd73d3f5c922e0716ba8b999fe5ab24b4aefc82`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 360.1 KB (360081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9bc1f7caae06f7263852defc6f14cd2608f6d1c431b254102d859a7718c8d`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e0d186a840aa1f2c5fa2df94c479a816ec15d0c8dca89b7ddeb153880adb71`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31595d3f0dd8620336916a891d400b4ef764e1ef88071898402232902d41209`  
		Last Modified: Tue, 15 Sep 2026 23:39:23 GMT  
		Size: 20.9 MB (20896042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543128c1c91d36863d249152b0aa1af21cdf3dbe9a3d0584c6ccd9cf6602575a`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e9f2ce6452ef78db1affd147aae7880ef727ccdf9a752ffa9c841a56a7affa`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea264089e11e5e2119488f98988af1c3b8e7a5a3e6a877d92b1eb539e19bf08`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532da97df2d01c14433cd89508ea47663f889a8d1a998c6f1b3a642ac2497c1f`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 24.0 MB (23981505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e48a4ca9ebf2a3982ae8e46750ac33dda36755b7e938de2c5455f061f9a75a`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95af5e67d30131626b9e919ed0997832699890da6313a908b6aa036fa2e5a68`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542a9d5ecb2520348e5df21a93d78879be34dc291044e8907bf58cbc18d3a227`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f734037e3944c771609e059481286ac2b2e1e1a088a0c4ae58eb7bdfde5ef022`  
		Last Modified: Tue, 15 Sep 2026 23:39:20 GMT  
		Size: 11.9 MB (11853772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:6db9c08cc76ccbd17564a49900870dcf9de481ab2f0624e918a093c5c533c943
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `docker:29.8-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:43295e24d9571cbc4a77945302868f7a8c8dd222312e92c6b8ded4fa69c4f94e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514881984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3401f3252da7c543d71d9f5b60ae940e4f5d262eeec6f5c0bf44b571846d79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Tue, 15 Sep 2026 23:37:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:19 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:20 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:22 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:53 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:39:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:06 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c785a2e960c3bdfe1048c97eef776ae467ad09c173756ab1431943d9aebeae62`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee192afef0fc55eddadfb6d4d064d28a3d21a72905a7267ad903c6dda1ae771`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 385.9 KB (385914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550d8bc8d72b5f6850aee8f846464dc8da622df77c87ea1fa27094aa108168f3`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c653d2d2be21d7e8b0af0806b741d52a2294b650cb3b1bf280ac7b328b315d`  
		Last Modified: Tue, 15 Sep 2026 23:39:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b72aa3f62f0f2206c95787330bad1159d6576f0eae8efd108d2397a42db652`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 20.9 MB (20928690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999aea969d9d11d2fc3f6580695ffc2f3fb59eb17bb4f04fbacad544e5d773c6`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0f25a1bb7fb2366e410c6aec4ebac1e23605c17a1f693ff0826b31115762d4`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a2854c927ca9a786ed22ef8417833ba18e10513823ec6cbf35f4ea03eba5d1`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19f04dbaabc95b9d48cecba97ed540de8e8741edc4d5ad3cc8aa02a838cd424`  
		Last Modified: Tue, 15 Sep 2026 23:39:46 GMT  
		Size: 24.0 MB (24008795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa861e82998cfaf89545927ed0475bb31d2ba17321d95018e790ca9daafff6e`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd74d1034e8d778099ea04bb9bba6440441cdb55bc6fb367e65d18dfe851bf02`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc36c88ef9d37e30faf5c1c9e34cafb6425876e06d7c2afa4934ac211100bc2`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af7a7da407dcca7bf29402ff14517a17f93dcd22e701dd5c4e883ede03acdb8`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 11.9 MB (11917419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8.1`

```console
$ docker pull docker@sha256:76cd6bbc3ab600fced21a7e1bea77ac00cb7c545eb95d5767e4ec4ffbcb242dc
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

### `docker:29.8.1` - linux; amd64

```console
$ docker pull docker@sha256:2ed826e92388178e49d1a81cbafcbb56d5f6c8dad2fbf5e1f41ae7501c8c525f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137783129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a365b64dc50e3dec0a4b5687b6b4708e6f120bcbc11468574c9096a447f83f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:38:01 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:38:05 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:38:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:38:05 GMT
CMD []
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
	-	`sha256:4e87dd5da4e5ef6960c88ae1df7960a21f52edfca95c1bf7ea25b3fddcfe1ef2`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 4.1 MB (4074988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0a4f70905efcc07de79a56cf648158405bd856b1f4fa7486747247ed4863bc`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 81.1 KB (81092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60a830b82765ceb72b79da36b753ab25a8a1461dbcb89e653e97b94ba99f735`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a1889958343c89fa6c4945bce76ac383c0eb453d5cd845f0002f3ec55cc985`  
		Last Modified: Tue, 15 Sep 2026 23:38:17 GMT  
		Size: 67.1 MB (67073301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda0dfb224405de5cb0909614cb8bedc633fad0ae89ae45c336a773ea3702eec`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725c1a3851991782b2a4e2904e71d53eb6efa832b25c945ffa24876fe60c0084`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1` - unknown; unknown

```console
$ docker pull docker@sha256:6d723a55e3bb259b997228b7edbc3bf4858c1f7379a0e934a26464441e0d1cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334113c8afade62f95b5ab9592b4a57c315e06b156a37069c4648340ddeb05f2`

```dockerfile
```

-	Layers:
	-	`sha256:0653063129d8744734c226a48bc8a1758e91c6aad4380abfed7f29f1588fae56`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.1` - linux; arm variant v6

```console
$ docker pull docker@sha256:7fb0728f53061ac4f1ea73dbef3a25d82bafede09cf8499f033dcdf3e6032cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129007955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afba1777e701a9db31378cd407e6341e16c76ea37f2a776fd7df3606efc94024`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:40:15 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:40:19 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:40:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:40:19 GMT
CMD []
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
	-	`sha256:e0e9a69b8fcc7e2830e2be7e833021284b2e9af7a4fc0d6fdbf5536b43349b48`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 3.7 MB (3711045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc26824bc5981a5498251a8f1451aec1f1417dcef6762c1f89118904f4a974d`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 79.8 KB (79792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae14a434967bb7a41fdaf05d988b63d026b1a05614910bfbfeef41969984625`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb29dc57ae486c1e5957568e94b9c63d95a85d2281ae75395116a9623b4c6a4`  
		Last Modified: Tue, 15 Sep 2026 23:40:32 GMT  
		Size: 62.5 MB (62474091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee3c8b923e8f8d0d4947df79343b1c81f787d8bb14efd8bb08c71b6b1357851`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6960a02400d51d8806e1d0e1c05c6def65d27636b46688194d7146681aae15`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 3.3 KB (3298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1` - unknown; unknown

```console
$ docker pull docker@sha256:b5f0f8188034f87aa28293e7be549ce407eafa1d052f1f897b3592abb6f9d132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad52914cd71b8352536decf818dff831036da2ddd3d104463ecb5edc86190c17`

```dockerfile
```

-	Layers:
	-	`sha256:55fc5397ad44431475f3e96ad23ddbed30c97b3e2d86a6b5dbaa637e4b63ab54`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.1` - linux; arm variant v7

```console
$ docker pull docker@sha256:09cdc830618f29992714d8786a3997c89388aa8f96ee3f78f8d730199e68b625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127511668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dcb1066bbaf1663c0ebc9045760fd2eba86220f7a52098c8745d426d6d7e5b5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:41:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:41:06 GMT
CMD []
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
	-	`sha256:14b170b97813bb5085c30143f1586878d2facd718e14fa73b78a3f2178b0d13b`  
		Last Modified: Tue, 15 Sep 2026 23:41:17 GMT  
		Size: 3.4 MB (3435064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc4626806b34f82eee96908ca018f22238bf7902c31aa9797a28b63497a45cf`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 76.2 KB (76159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9973da56d8a03ebcb40742d52c8ccc1152eda58af73c98ae65acdc08dfe02be0`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38927e611cb384f7501c2aa512d8385ff784288b4c0663a7527de558a204c1e`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 62.3 MB (62295743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd64529a9a562976533808c305de5fb84f8846a8959dad9f3d1cc76a322a425`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0935d2452d1cc660a862608c73270472d544329d1ef2f8124e795179d6128224`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1` - unknown; unknown

```console
$ docker pull docker@sha256:43f343d7c1a18a30482d44b410b24ef71858a1c323b1331017622ace2ed6aa40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad7b4dca102472689e173c6011b7902a3cea48cfe373ad0234a6a12022dba68`

```dockerfile
```

-	Layers:
	-	`sha256:2f5da5c9001a00066d2d5e4f4f117c8810b85ec2242e09032ab43b7731d43fe7`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.1` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b17882d07b6ab725b70b372259f2919166e1ceec47f517d7872c23dd55366b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127674252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ac680ab72270dab30fe53ec7098f1d93376f5e27c60400babe6504d25d1358`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:37:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:37:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:37:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:37:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:37:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:37:49 GMT
CMD []
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
	-	`sha256:e7f31adfbbfe1ddd9795278c468b5ee8df7674d04fd884550ab3308cb952aa99`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 4.6 MB (4616877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a6203c4036465ee974d6d30f2bdc716dd58ed8772d9b8e95d8e5fe09f014bb`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 90.4 KB (90408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8885901ddf5008261f7126df1a0e8870ba2120f642ebf2ca245b4d33fa2cf6ed`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c91750b0dc1a2f4ae4deaed7cbb525dd8c3ea8d419a81d6941d3ce57bca774a`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 60.8 MB (60816942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a1427fa42dfd7fe1c56a3dcc512752c75610cae75c7b72213d8261ef26c933`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f827cead56725c977de8763a27d41ed20bdb644cfbd6ae6d821451490f6f83`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1` - unknown; unknown

```console
$ docker pull docker@sha256:efa0525f3e1221f51b6cce71d06dd45a95a2e046fe355938eb878d7db3a46eff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4090ae604b768cdf9bd855106d49d5a798fa01581534af652544643dd1a23b`

```dockerfile
```

-	Layers:
	-	`sha256:d9b0333066801918997f4e0bff2a3272cbed2fbc88f81511c527df50d332606d`  
		Last Modified: Tue, 15 Sep 2026 23:37:57 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8.1-alpine3.24`

```console
$ docker pull docker@sha256:76cd6bbc3ab600fced21a7e1bea77ac00cb7c545eb95d5767e4ec4ffbcb242dc
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

### `docker:29.8.1-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:2ed826e92388178e49d1a81cbafcbb56d5f6c8dad2fbf5e1f41ae7501c8c525f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137783129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a365b64dc50e3dec0a4b5687b6b4708e6f120bcbc11468574c9096a447f83f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:38:01 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:38:05 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:38:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:38:05 GMT
CMD []
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
	-	`sha256:4e87dd5da4e5ef6960c88ae1df7960a21f52edfca95c1bf7ea25b3fddcfe1ef2`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 4.1 MB (4074988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0a4f70905efcc07de79a56cf648158405bd856b1f4fa7486747247ed4863bc`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 81.1 KB (81092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60a830b82765ceb72b79da36b753ab25a8a1461dbcb89e653e97b94ba99f735`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a1889958343c89fa6c4945bce76ac383c0eb453d5cd845f0002f3ec55cc985`  
		Last Modified: Tue, 15 Sep 2026 23:38:17 GMT  
		Size: 67.1 MB (67073301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda0dfb224405de5cb0909614cb8bedc633fad0ae89ae45c336a773ea3702eec`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725c1a3851991782b2a4e2904e71d53eb6efa832b25c945ffa24876fe60c0084`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:6d723a55e3bb259b997228b7edbc3bf4858c1f7379a0e934a26464441e0d1cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334113c8afade62f95b5ab9592b4a57c315e06b156a37069c4648340ddeb05f2`

```dockerfile
```

-	Layers:
	-	`sha256:0653063129d8744734c226a48bc8a1758e91c6aad4380abfed7f29f1588fae56`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.1-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:7fb0728f53061ac4f1ea73dbef3a25d82bafede09cf8499f033dcdf3e6032cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129007955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afba1777e701a9db31378cd407e6341e16c76ea37f2a776fd7df3606efc94024`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:40:15 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:40:19 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:40:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:40:19 GMT
CMD []
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
	-	`sha256:e0e9a69b8fcc7e2830e2be7e833021284b2e9af7a4fc0d6fdbf5536b43349b48`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 3.7 MB (3711045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc26824bc5981a5498251a8f1451aec1f1417dcef6762c1f89118904f4a974d`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 79.8 KB (79792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae14a434967bb7a41fdaf05d988b63d026b1a05614910bfbfeef41969984625`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb29dc57ae486c1e5957568e94b9c63d95a85d2281ae75395116a9623b4c6a4`  
		Last Modified: Tue, 15 Sep 2026 23:40:32 GMT  
		Size: 62.5 MB (62474091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee3c8b923e8f8d0d4947df79343b1c81f787d8bb14efd8bb08c71b6b1357851`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6960a02400d51d8806e1d0e1c05c6def65d27636b46688194d7146681aae15`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 3.3 KB (3298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:b5f0f8188034f87aa28293e7be549ce407eafa1d052f1f897b3592abb6f9d132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad52914cd71b8352536decf818dff831036da2ddd3d104463ecb5edc86190c17`

```dockerfile
```

-	Layers:
	-	`sha256:55fc5397ad44431475f3e96ad23ddbed30c97b3e2d86a6b5dbaa637e4b63ab54`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.1-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:09cdc830618f29992714d8786a3997c89388aa8f96ee3f78f8d730199e68b625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127511668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dcb1066bbaf1663c0ebc9045760fd2eba86220f7a52098c8745d426d6d7e5b5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:41:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:41:06 GMT
CMD []
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
	-	`sha256:14b170b97813bb5085c30143f1586878d2facd718e14fa73b78a3f2178b0d13b`  
		Last Modified: Tue, 15 Sep 2026 23:41:17 GMT  
		Size: 3.4 MB (3435064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc4626806b34f82eee96908ca018f22238bf7902c31aa9797a28b63497a45cf`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 76.2 KB (76159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9973da56d8a03ebcb40742d52c8ccc1152eda58af73c98ae65acdc08dfe02be0`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38927e611cb384f7501c2aa512d8385ff784288b4c0663a7527de558a204c1e`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 62.3 MB (62295743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd64529a9a562976533808c305de5fb84f8846a8959dad9f3d1cc76a322a425`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0935d2452d1cc660a862608c73270472d544329d1ef2f8124e795179d6128224`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:43f343d7c1a18a30482d44b410b24ef71858a1c323b1331017622ace2ed6aa40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad7b4dca102472689e173c6011b7902a3cea48cfe373ad0234a6a12022dba68`

```dockerfile
```

-	Layers:
	-	`sha256:2f5da5c9001a00066d2d5e4f4f117c8810b85ec2242e09032ab43b7731d43fe7`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.1-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b17882d07b6ab725b70b372259f2919166e1ceec47f517d7872c23dd55366b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127674252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ac680ab72270dab30fe53ec7098f1d93376f5e27c60400babe6504d25d1358`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:37:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:37:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:37:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:37:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:37:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:37:49 GMT
CMD []
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
	-	`sha256:e7f31adfbbfe1ddd9795278c468b5ee8df7674d04fd884550ab3308cb952aa99`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 4.6 MB (4616877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a6203c4036465ee974d6d30f2bdc716dd58ed8772d9b8e95d8e5fe09f014bb`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 90.4 KB (90408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8885901ddf5008261f7126df1a0e8870ba2120f642ebf2ca245b4d33fa2cf6ed`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c91750b0dc1a2f4ae4deaed7cbb525dd8c3ea8d419a81d6941d3ce57bca774a`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 60.8 MB (60816942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a1427fa42dfd7fe1c56a3dcc512752c75610cae75c7b72213d8261ef26c933`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f827cead56725c977de8763a27d41ed20bdb644cfbd6ae6d821451490f6f83`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:efa0525f3e1221f51b6cce71d06dd45a95a2e046fe355938eb878d7db3a46eff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4090ae604b768cdf9bd855106d49d5a798fa01581534af652544643dd1a23b`

```dockerfile
```

-	Layers:
	-	`sha256:d9b0333066801918997f4e0bff2a3272cbed2fbc88f81511c527df50d332606d`  
		Last Modified: Tue, 15 Sep 2026 23:37:57 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8.1-cli`

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

### `docker:29.8.1-cli` - linux; amd64

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

### `docker:29.8.1-cli` - unknown; unknown

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

### `docker:29.8.1-cli` - linux; arm variant v6

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

### `docker:29.8.1-cli` - unknown; unknown

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

### `docker:29.8.1-cli` - linux; arm variant v7

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

### `docker:29.8.1-cli` - unknown; unknown

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

### `docker:29.8.1-cli` - linux; arm64 variant v8

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

### `docker:29.8.1-cli` - unknown; unknown

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

## `docker:29.8.1-cli-alpine3.24`

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

### `docker:29.8.1-cli-alpine3.24` - linux; amd64

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

### `docker:29.8.1-cli-alpine3.24` - unknown; unknown

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

### `docker:29.8.1-cli-alpine3.24` - linux; arm variant v6

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

### `docker:29.8.1-cli-alpine3.24` - unknown; unknown

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

### `docker:29.8.1-cli-alpine3.24` - linux; arm variant v7

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

### `docker:29.8.1-cli-alpine3.24` - unknown; unknown

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

### `docker:29.8.1-cli-alpine3.24` - linux; arm64 variant v8

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

### `docker:29.8.1-cli-alpine3.24` - unknown; unknown

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

## `docker:29.8.1-dind`

```console
$ docker pull docker@sha256:76cd6bbc3ab600fced21a7e1bea77ac00cb7c545eb95d5767e4ec4ffbcb242dc
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

### `docker:29.8.1-dind` - linux; amd64

```console
$ docker pull docker@sha256:2ed826e92388178e49d1a81cbafcbb56d5f6c8dad2fbf5e1f41ae7501c8c525f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137783129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a365b64dc50e3dec0a4b5687b6b4708e6f120bcbc11468574c9096a447f83f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:38:01 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:38:05 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:38:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:38:05 GMT
CMD []
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
	-	`sha256:4e87dd5da4e5ef6960c88ae1df7960a21f52edfca95c1bf7ea25b3fddcfe1ef2`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 4.1 MB (4074988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0a4f70905efcc07de79a56cf648158405bd856b1f4fa7486747247ed4863bc`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 81.1 KB (81092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60a830b82765ceb72b79da36b753ab25a8a1461dbcb89e653e97b94ba99f735`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a1889958343c89fa6c4945bce76ac383c0eb453d5cd845f0002f3ec55cc985`  
		Last Modified: Tue, 15 Sep 2026 23:38:17 GMT  
		Size: 67.1 MB (67073301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda0dfb224405de5cb0909614cb8bedc633fad0ae89ae45c336a773ea3702eec`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725c1a3851991782b2a4e2904e71d53eb6efa832b25c945ffa24876fe60c0084`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1-dind` - unknown; unknown

```console
$ docker pull docker@sha256:6d723a55e3bb259b997228b7edbc3bf4858c1f7379a0e934a26464441e0d1cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334113c8afade62f95b5ab9592b4a57c315e06b156a37069c4648340ddeb05f2`

```dockerfile
```

-	Layers:
	-	`sha256:0653063129d8744734c226a48bc8a1758e91c6aad4380abfed7f29f1588fae56`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.1-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:7fb0728f53061ac4f1ea73dbef3a25d82bafede09cf8499f033dcdf3e6032cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129007955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afba1777e701a9db31378cd407e6341e16c76ea37f2a776fd7df3606efc94024`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:40:15 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:40:19 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:40:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:40:19 GMT
CMD []
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
	-	`sha256:e0e9a69b8fcc7e2830e2be7e833021284b2e9af7a4fc0d6fdbf5536b43349b48`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 3.7 MB (3711045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc26824bc5981a5498251a8f1451aec1f1417dcef6762c1f89118904f4a974d`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 79.8 KB (79792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae14a434967bb7a41fdaf05d988b63d026b1a05614910bfbfeef41969984625`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb29dc57ae486c1e5957568e94b9c63d95a85d2281ae75395116a9623b4c6a4`  
		Last Modified: Tue, 15 Sep 2026 23:40:32 GMT  
		Size: 62.5 MB (62474091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee3c8b923e8f8d0d4947df79343b1c81f787d8bb14efd8bb08c71b6b1357851`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6960a02400d51d8806e1d0e1c05c6def65d27636b46688194d7146681aae15`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 3.3 KB (3298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1-dind` - unknown; unknown

```console
$ docker pull docker@sha256:b5f0f8188034f87aa28293e7be549ce407eafa1d052f1f897b3592abb6f9d132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad52914cd71b8352536decf818dff831036da2ddd3d104463ecb5edc86190c17`

```dockerfile
```

-	Layers:
	-	`sha256:55fc5397ad44431475f3e96ad23ddbed30c97b3e2d86a6b5dbaa637e4b63ab54`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.1-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:09cdc830618f29992714d8786a3997c89388aa8f96ee3f78f8d730199e68b625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127511668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dcb1066bbaf1663c0ebc9045760fd2eba86220f7a52098c8745d426d6d7e5b5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:41:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:41:06 GMT
CMD []
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
	-	`sha256:14b170b97813bb5085c30143f1586878d2facd718e14fa73b78a3f2178b0d13b`  
		Last Modified: Tue, 15 Sep 2026 23:41:17 GMT  
		Size: 3.4 MB (3435064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc4626806b34f82eee96908ca018f22238bf7902c31aa9797a28b63497a45cf`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 76.2 KB (76159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9973da56d8a03ebcb40742d52c8ccc1152eda58af73c98ae65acdc08dfe02be0`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38927e611cb384f7501c2aa512d8385ff784288b4c0663a7527de558a204c1e`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 62.3 MB (62295743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd64529a9a562976533808c305de5fb84f8846a8959dad9f3d1cc76a322a425`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0935d2452d1cc660a862608c73270472d544329d1ef2f8124e795179d6128224`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1-dind` - unknown; unknown

```console
$ docker pull docker@sha256:43f343d7c1a18a30482d44b410b24ef71858a1c323b1331017622ace2ed6aa40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad7b4dca102472689e173c6011b7902a3cea48cfe373ad0234a6a12022dba68`

```dockerfile
```

-	Layers:
	-	`sha256:2f5da5c9001a00066d2d5e4f4f117c8810b85ec2242e09032ab43b7731d43fe7`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.1-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b17882d07b6ab725b70b372259f2919166e1ceec47f517d7872c23dd55366b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127674252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ac680ab72270dab30fe53ec7098f1d93376f5e27c60400babe6504d25d1358`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:37:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:37:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:37:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:37:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:37:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:37:49 GMT
CMD []
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
	-	`sha256:e7f31adfbbfe1ddd9795278c468b5ee8df7674d04fd884550ab3308cb952aa99`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 4.6 MB (4616877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a6203c4036465ee974d6d30f2bdc716dd58ed8772d9b8e95d8e5fe09f014bb`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 90.4 KB (90408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8885901ddf5008261f7126df1a0e8870ba2120f642ebf2ca245b4d33fa2cf6ed`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c91750b0dc1a2f4ae4deaed7cbb525dd8c3ea8d419a81d6941d3ce57bca774a`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 60.8 MB (60816942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a1427fa42dfd7fe1c56a3dcc512752c75610cae75c7b72213d8261ef26c933`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f827cead56725c977de8763a27d41ed20bdb644cfbd6ae6d821451490f6f83`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1-dind` - unknown; unknown

```console
$ docker pull docker@sha256:efa0525f3e1221f51b6cce71d06dd45a95a2e046fe355938eb878d7db3a46eff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4090ae604b768cdf9bd855106d49d5a798fa01581534af652544643dd1a23b`

```dockerfile
```

-	Layers:
	-	`sha256:d9b0333066801918997f4e0bff2a3272cbed2fbc88f81511c527df50d332606d`  
		Last Modified: Tue, 15 Sep 2026 23:37:57 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8.1-dind-alpine3.24`

```console
$ docker pull docker@sha256:76cd6bbc3ab600fced21a7e1bea77ac00cb7c545eb95d5767e4ec4ffbcb242dc
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

### `docker:29.8.1-dind-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:2ed826e92388178e49d1a81cbafcbb56d5f6c8dad2fbf5e1f41ae7501c8c525f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137783129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a365b64dc50e3dec0a4b5687b6b4708e6f120bcbc11468574c9096a447f83f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:38:01 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:38:05 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:38:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:38:05 GMT
CMD []
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
	-	`sha256:4e87dd5da4e5ef6960c88ae1df7960a21f52edfca95c1bf7ea25b3fddcfe1ef2`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 4.1 MB (4074988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0a4f70905efcc07de79a56cf648158405bd856b1f4fa7486747247ed4863bc`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 81.1 KB (81092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60a830b82765ceb72b79da36b753ab25a8a1461dbcb89e653e97b94ba99f735`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a1889958343c89fa6c4945bce76ac383c0eb453d5cd845f0002f3ec55cc985`  
		Last Modified: Tue, 15 Sep 2026 23:38:17 GMT  
		Size: 67.1 MB (67073301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda0dfb224405de5cb0909614cb8bedc633fad0ae89ae45c336a773ea3702eec`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725c1a3851991782b2a4e2904e71d53eb6efa832b25c945ffa24876fe60c0084`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:6d723a55e3bb259b997228b7edbc3bf4858c1f7379a0e934a26464441e0d1cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334113c8afade62f95b5ab9592b4a57c315e06b156a37069c4648340ddeb05f2`

```dockerfile
```

-	Layers:
	-	`sha256:0653063129d8744734c226a48bc8a1758e91c6aad4380abfed7f29f1588fae56`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.1-dind-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:7fb0728f53061ac4f1ea73dbef3a25d82bafede09cf8499f033dcdf3e6032cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129007955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afba1777e701a9db31378cd407e6341e16c76ea37f2a776fd7df3606efc94024`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:40:15 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:40:19 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:40:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:40:19 GMT
CMD []
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
	-	`sha256:e0e9a69b8fcc7e2830e2be7e833021284b2e9af7a4fc0d6fdbf5536b43349b48`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 3.7 MB (3711045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc26824bc5981a5498251a8f1451aec1f1417dcef6762c1f89118904f4a974d`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 79.8 KB (79792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae14a434967bb7a41fdaf05d988b63d026b1a05614910bfbfeef41969984625`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb29dc57ae486c1e5957568e94b9c63d95a85d2281ae75395116a9623b4c6a4`  
		Last Modified: Tue, 15 Sep 2026 23:40:32 GMT  
		Size: 62.5 MB (62474091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee3c8b923e8f8d0d4947df79343b1c81f787d8bb14efd8bb08c71b6b1357851`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6960a02400d51d8806e1d0e1c05c6def65d27636b46688194d7146681aae15`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 3.3 KB (3298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:b5f0f8188034f87aa28293e7be549ce407eafa1d052f1f897b3592abb6f9d132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad52914cd71b8352536decf818dff831036da2ddd3d104463ecb5edc86190c17`

```dockerfile
```

-	Layers:
	-	`sha256:55fc5397ad44431475f3e96ad23ddbed30c97b3e2d86a6b5dbaa637e4b63ab54`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.1-dind-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:09cdc830618f29992714d8786a3997c89388aa8f96ee3f78f8d730199e68b625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127511668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dcb1066bbaf1663c0ebc9045760fd2eba86220f7a52098c8745d426d6d7e5b5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:41:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:41:06 GMT
CMD []
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
	-	`sha256:14b170b97813bb5085c30143f1586878d2facd718e14fa73b78a3f2178b0d13b`  
		Last Modified: Tue, 15 Sep 2026 23:41:17 GMT  
		Size: 3.4 MB (3435064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc4626806b34f82eee96908ca018f22238bf7902c31aa9797a28b63497a45cf`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 76.2 KB (76159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9973da56d8a03ebcb40742d52c8ccc1152eda58af73c98ae65acdc08dfe02be0`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38927e611cb384f7501c2aa512d8385ff784288b4c0663a7527de558a204c1e`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 62.3 MB (62295743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd64529a9a562976533808c305de5fb84f8846a8959dad9f3d1cc76a322a425`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0935d2452d1cc660a862608c73270472d544329d1ef2f8124e795179d6128224`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:43f343d7c1a18a30482d44b410b24ef71858a1c323b1331017622ace2ed6aa40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad7b4dca102472689e173c6011b7902a3cea48cfe373ad0234a6a12022dba68`

```dockerfile
```

-	Layers:
	-	`sha256:2f5da5c9001a00066d2d5e4f4f117c8810b85ec2242e09032ab43b7731d43fe7`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.1-dind-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b17882d07b6ab725b70b372259f2919166e1ceec47f517d7872c23dd55366b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127674252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ac680ab72270dab30fe53ec7098f1d93376f5e27c60400babe6504d25d1358`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:37:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:37:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:37:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:37:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:37:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:37:49 GMT
CMD []
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
	-	`sha256:e7f31adfbbfe1ddd9795278c468b5ee8df7674d04fd884550ab3308cb952aa99`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 4.6 MB (4616877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a6203c4036465ee974d6d30f2bdc716dd58ed8772d9b8e95d8e5fe09f014bb`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 90.4 KB (90408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8885901ddf5008261f7126df1a0e8870ba2120f642ebf2ca245b4d33fa2cf6ed`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c91750b0dc1a2f4ae4deaed7cbb525dd8c3ea8d419a81d6941d3ce57bca774a`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 60.8 MB (60816942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a1427fa42dfd7fe1c56a3dcc512752c75610cae75c7b72213d8261ef26c933`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f827cead56725c977de8763a27d41ed20bdb644cfbd6ae6d821451490f6f83`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.1-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:efa0525f3e1221f51b6cce71d06dd45a95a2e046fe355938eb878d7db3a46eff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4090ae604b768cdf9bd855106d49d5a798fa01581534af652544643dd1a23b`

```dockerfile
```

-	Layers:
	-	`sha256:d9b0333066801918997f4e0bff2a3272cbed2fbc88f81511c527df50d332606d`  
		Last Modified: Tue, 15 Sep 2026 23:37:57 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8.1-dind-rootless`

```console
$ docker pull docker@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `docker:29.8.1-windowsservercore`

```console
$ docker pull docker@sha256:56cb830d5214a985bf883c5c20bce067e352e5bfccfb2a87c44ab6202931374d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `docker:29.8.1-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:43295e24d9571cbc4a77945302868f7a8c8dd222312e92c6b8ded4fa69c4f94e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514881984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3401f3252da7c543d71d9f5b60ae940e4f5d262eeec6f5c0bf44b571846d79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Tue, 15 Sep 2026 23:37:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:19 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:20 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:22 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:53 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:39:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:06 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c785a2e960c3bdfe1048c97eef776ae467ad09c173756ab1431943d9aebeae62`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee192afef0fc55eddadfb6d4d064d28a3d21a72905a7267ad903c6dda1ae771`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 385.9 KB (385914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550d8bc8d72b5f6850aee8f846464dc8da622df77c87ea1fa27094aa108168f3`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c653d2d2be21d7e8b0af0806b741d52a2294b650cb3b1bf280ac7b328b315d`  
		Last Modified: Tue, 15 Sep 2026 23:39:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b72aa3f62f0f2206c95787330bad1159d6576f0eae8efd108d2397a42db652`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 20.9 MB (20928690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999aea969d9d11d2fc3f6580695ffc2f3fb59eb17bb4f04fbacad544e5d773c6`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0f25a1bb7fb2366e410c6aec4ebac1e23605c17a1f693ff0826b31115762d4`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a2854c927ca9a786ed22ef8417833ba18e10513823ec6cbf35f4ea03eba5d1`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19f04dbaabc95b9d48cecba97ed540de8e8741edc4d5ad3cc8aa02a838cd424`  
		Last Modified: Tue, 15 Sep 2026 23:39:46 GMT  
		Size: 24.0 MB (24008795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa861e82998cfaf89545927ed0475bb31d2ba17321d95018e790ca9daafff6e`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd74d1034e8d778099ea04bb9bba6440441cdb55bc6fb367e65d18dfe851bf02`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc36c88ef9d37e30faf5c1c9e34cafb6425876e06d7c2afa4934ac211100bc2`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af7a7da407dcca7bf29402ff14517a17f93dcd22e701dd5c4e883ede03acdb8`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 11.9 MB (11917419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.8.1-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:df3d40210c8f4d8794aa8b543071c9bfe7132d27b8c1beffbc9b1586494c2ab9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276591913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab2feb597895037cee4eefe71798fb23c2a65cc36accee30ffe6e4e999dde7c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 23:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:13 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:14 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:15 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:40 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:38:57 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:38:59 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:00 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:13 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176be13a581f7b039327e85af7857331598f90d41fcd14cf73b80dfc25a723ef`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9850154bdaa7ef5f3ef6da850fd73d3f5c922e0716ba8b999fe5ab24b4aefc82`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 360.1 KB (360081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9bc1f7caae06f7263852defc6f14cd2608f6d1c431b254102d859a7718c8d`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e0d186a840aa1f2c5fa2df94c479a816ec15d0c8dca89b7ddeb153880adb71`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31595d3f0dd8620336916a891d400b4ef764e1ef88071898402232902d41209`  
		Last Modified: Tue, 15 Sep 2026 23:39:23 GMT  
		Size: 20.9 MB (20896042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543128c1c91d36863d249152b0aa1af21cdf3dbe9a3d0584c6ccd9cf6602575a`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e9f2ce6452ef78db1affd147aae7880ef727ccdf9a752ffa9c841a56a7affa`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea264089e11e5e2119488f98988af1c3b8e7a5a3e6a877d92b1eb539e19bf08`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532da97df2d01c14433cd89508ea47663f889a8d1a998c6f1b3a642ac2497c1f`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 24.0 MB (23981505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e48a4ca9ebf2a3982ae8e46750ac33dda36755b7e938de2c5455f061f9a75a`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95af5e67d30131626b9e919ed0997832699890da6313a908b6aa036fa2e5a68`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542a9d5ecb2520348e5df21a93d78879be34dc291044e8907bf58cbc18d3a227`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f734037e3944c771609e059481286ac2b2e1e1a088a0c4ae58eb7bdfde5ef022`  
		Last Modified: Tue, 15 Sep 2026 23:39:20 GMT  
		Size: 11.9 MB (11853772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8.1-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:87045610be5a75da485a0b776b16a1d8db5b9807eebcdc7fbcf244d68e3de767
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:29.8.1-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:df3d40210c8f4d8794aa8b543071c9bfe7132d27b8c1beffbc9b1586494c2ab9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276591913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab2feb597895037cee4eefe71798fb23c2a65cc36accee30ffe6e4e999dde7c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 23:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:13 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:14 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:15 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:40 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:38:57 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:38:59 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:00 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:13 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176be13a581f7b039327e85af7857331598f90d41fcd14cf73b80dfc25a723ef`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9850154bdaa7ef5f3ef6da850fd73d3f5c922e0716ba8b999fe5ab24b4aefc82`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 360.1 KB (360081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9bc1f7caae06f7263852defc6f14cd2608f6d1c431b254102d859a7718c8d`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e0d186a840aa1f2c5fa2df94c479a816ec15d0c8dca89b7ddeb153880adb71`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31595d3f0dd8620336916a891d400b4ef764e1ef88071898402232902d41209`  
		Last Modified: Tue, 15 Sep 2026 23:39:23 GMT  
		Size: 20.9 MB (20896042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543128c1c91d36863d249152b0aa1af21cdf3dbe9a3d0584c6ccd9cf6602575a`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e9f2ce6452ef78db1affd147aae7880ef727ccdf9a752ffa9c841a56a7affa`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea264089e11e5e2119488f98988af1c3b8e7a5a3e6a877d92b1eb539e19bf08`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532da97df2d01c14433cd89508ea47663f889a8d1a998c6f1b3a642ac2497c1f`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 24.0 MB (23981505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e48a4ca9ebf2a3982ae8e46750ac33dda36755b7e938de2c5455f061f9a75a`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95af5e67d30131626b9e919ed0997832699890da6313a908b6aa036fa2e5a68`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542a9d5ecb2520348e5df21a93d78879be34dc291044e8907bf58cbc18d3a227`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f734037e3944c771609e059481286ac2b2e1e1a088a0c4ae58eb7bdfde5ef022`  
		Last Modified: Tue, 15 Sep 2026 23:39:20 GMT  
		Size: 11.9 MB (11853772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8.1-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:6db9c08cc76ccbd17564a49900870dcf9de481ab2f0624e918a093c5c533c943
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `docker:29.8.1-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:43295e24d9571cbc4a77945302868f7a8c8dd222312e92c6b8ded4fa69c4f94e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514881984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3401f3252da7c543d71d9f5b60ae940e4f5d262eeec6f5c0bf44b571846d79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Tue, 15 Sep 2026 23:37:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:19 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:20 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:22 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:53 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:39:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:06 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c785a2e960c3bdfe1048c97eef776ae467ad09c173756ab1431943d9aebeae62`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee192afef0fc55eddadfb6d4d064d28a3d21a72905a7267ad903c6dda1ae771`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 385.9 KB (385914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550d8bc8d72b5f6850aee8f846464dc8da622df77c87ea1fa27094aa108168f3`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c653d2d2be21d7e8b0af0806b741d52a2294b650cb3b1bf280ac7b328b315d`  
		Last Modified: Tue, 15 Sep 2026 23:39:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b72aa3f62f0f2206c95787330bad1159d6576f0eae8efd108d2397a42db652`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 20.9 MB (20928690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999aea969d9d11d2fc3f6580695ffc2f3fb59eb17bb4f04fbacad544e5d773c6`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0f25a1bb7fb2366e410c6aec4ebac1e23605c17a1f693ff0826b31115762d4`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a2854c927ca9a786ed22ef8417833ba18e10513823ec6cbf35f4ea03eba5d1`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19f04dbaabc95b9d48cecba97ed540de8e8741edc4d5ad3cc8aa02a838cd424`  
		Last Modified: Tue, 15 Sep 2026 23:39:46 GMT  
		Size: 24.0 MB (24008795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa861e82998cfaf89545927ed0475bb31d2ba17321d95018e790ca9daafff6e`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd74d1034e8d778099ea04bb9bba6440441cdb55bc6fb367e65d18dfe851bf02`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc36c88ef9d37e30faf5c1c9e34cafb6425876e06d7c2afa4934ac211100bc2`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af7a7da407dcca7bf29402ff14517a17f93dcd22e701dd5c4e883ede03acdb8`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 11.9 MB (11917419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:cli`

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

### `docker:cli` - linux; amd64

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

### `docker:cli` - unknown; unknown

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

### `docker:cli` - linux; arm variant v6

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

### `docker:cli` - unknown; unknown

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

### `docker:cli` - linux; arm variant v7

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

### `docker:cli` - unknown; unknown

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

### `docker:cli` - linux; arm64 variant v8

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

### `docker:cli` - unknown; unknown

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

## `docker:dind`

```console
$ docker pull docker@sha256:76cd6bbc3ab600fced21a7e1bea77ac00cb7c545eb95d5767e4ec4ffbcb242dc
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
$ docker pull docker@sha256:2ed826e92388178e49d1a81cbafcbb56d5f6c8dad2fbf5e1f41ae7501c8c525f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137783129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a365b64dc50e3dec0a4b5687b6b4708e6f120bcbc11468574c9096a447f83f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:38:01 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:38:05 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:38:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:38:05 GMT
CMD []
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
	-	`sha256:4e87dd5da4e5ef6960c88ae1df7960a21f52edfca95c1bf7ea25b3fddcfe1ef2`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 4.1 MB (4074988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0a4f70905efcc07de79a56cf648158405bd856b1f4fa7486747247ed4863bc`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 81.1 KB (81092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60a830b82765ceb72b79da36b753ab25a8a1461dbcb89e653e97b94ba99f735`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a1889958343c89fa6c4945bce76ac383c0eb453d5cd845f0002f3ec55cc985`  
		Last Modified: Tue, 15 Sep 2026 23:38:17 GMT  
		Size: 67.1 MB (67073301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda0dfb224405de5cb0909614cb8bedc633fad0ae89ae45c336a773ea3702eec`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725c1a3851991782b2a4e2904e71d53eb6efa832b25c945ffa24876fe60c0084`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:6d723a55e3bb259b997228b7edbc3bf4858c1f7379a0e934a26464441e0d1cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334113c8afade62f95b5ab9592b4a57c315e06b156a37069c4648340ddeb05f2`

```dockerfile
```

-	Layers:
	-	`sha256:0653063129d8744734c226a48bc8a1758e91c6aad4380abfed7f29f1588fae56`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:7fb0728f53061ac4f1ea73dbef3a25d82bafede09cf8499f033dcdf3e6032cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129007955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afba1777e701a9db31378cd407e6341e16c76ea37f2a776fd7df3606efc94024`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:40:15 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:40:19 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:40:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:40:19 GMT
CMD []
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
	-	`sha256:e0e9a69b8fcc7e2830e2be7e833021284b2e9af7a4fc0d6fdbf5536b43349b48`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 3.7 MB (3711045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc26824bc5981a5498251a8f1451aec1f1417dcef6762c1f89118904f4a974d`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 79.8 KB (79792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae14a434967bb7a41fdaf05d988b63d026b1a05614910bfbfeef41969984625`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb29dc57ae486c1e5957568e94b9c63d95a85d2281ae75395116a9623b4c6a4`  
		Last Modified: Tue, 15 Sep 2026 23:40:32 GMT  
		Size: 62.5 MB (62474091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee3c8b923e8f8d0d4947df79343b1c81f787d8bb14efd8bb08c71b6b1357851`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6960a02400d51d8806e1d0e1c05c6def65d27636b46688194d7146681aae15`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 3.3 KB (3298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:b5f0f8188034f87aa28293e7be549ce407eafa1d052f1f897b3592abb6f9d132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad52914cd71b8352536decf818dff831036da2ddd3d104463ecb5edc86190c17`

```dockerfile
```

-	Layers:
	-	`sha256:55fc5397ad44431475f3e96ad23ddbed30c97b3e2d86a6b5dbaa637e4b63ab54`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:09cdc830618f29992714d8786a3997c89388aa8f96ee3f78f8d730199e68b625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127511668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dcb1066bbaf1663c0ebc9045760fd2eba86220f7a52098c8745d426d6d7e5b5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:41:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:41:06 GMT
CMD []
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
	-	`sha256:14b170b97813bb5085c30143f1586878d2facd718e14fa73b78a3f2178b0d13b`  
		Last Modified: Tue, 15 Sep 2026 23:41:17 GMT  
		Size: 3.4 MB (3435064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc4626806b34f82eee96908ca018f22238bf7902c31aa9797a28b63497a45cf`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 76.2 KB (76159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9973da56d8a03ebcb40742d52c8ccc1152eda58af73c98ae65acdc08dfe02be0`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38927e611cb384f7501c2aa512d8385ff784288b4c0663a7527de558a204c1e`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 62.3 MB (62295743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd64529a9a562976533808c305de5fb84f8846a8959dad9f3d1cc76a322a425`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0935d2452d1cc660a862608c73270472d544329d1ef2f8124e795179d6128224`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:43f343d7c1a18a30482d44b410b24ef71858a1c323b1331017622ace2ed6aa40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad7b4dca102472689e173c6011b7902a3cea48cfe373ad0234a6a12022dba68`

```dockerfile
```

-	Layers:
	-	`sha256:2f5da5c9001a00066d2d5e4f4f117c8810b85ec2242e09032ab43b7731d43fe7`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b17882d07b6ab725b70b372259f2919166e1ceec47f517d7872c23dd55366b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127674252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ac680ab72270dab30fe53ec7098f1d93376f5e27c60400babe6504d25d1358`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:37:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:37:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:37:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:37:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:37:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:37:49 GMT
CMD []
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
	-	`sha256:e7f31adfbbfe1ddd9795278c468b5ee8df7674d04fd884550ab3308cb952aa99`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 4.6 MB (4616877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a6203c4036465ee974d6d30f2bdc716dd58ed8772d9b8e95d8e5fe09f014bb`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 90.4 KB (90408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8885901ddf5008261f7126df1a0e8870ba2120f642ebf2ca245b4d33fa2cf6ed`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c91750b0dc1a2f4ae4deaed7cbb525dd8c3ea8d419a81d6941d3ce57bca774a`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 60.8 MB (60816942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a1427fa42dfd7fe1c56a3dcc512752c75610cae75c7b72213d8261ef26c933`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f827cead56725c977de8763a27d41ed20bdb644cfbd6ae6d821451490f6f83`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:efa0525f3e1221f51b6cce71d06dd45a95a2e046fe355938eb878d7db3a46eff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4090ae604b768cdf9bd855106d49d5a798fa01581534af652544643dd1a23b`

```dockerfile
```

-	Layers:
	-	`sha256:d9b0333066801918997f4e0bff2a3272cbed2fbc88f81511c527df50d332606d`  
		Last Modified: Tue, 15 Sep 2026 23:37:57 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind-rootless`

```console
$ docker pull docker@sha256:e17fa54c2ffd511d8407c746eec77f7814e6f74fe20caf822dad1870599984c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:03d00e52a056d9126139f7fb1bafd890552b89382b97b783a35b9b87fdc13f4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156649835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a99a5d9ef2c5d50042d2937ba6836b782f5001ca93995add006241a71c69639`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Fri, 04 Sep 2026 21:48:29 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 		zfs 	; # buildkit
# Fri, 04 Sep 2026 21:48:30 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 04 Sep 2026 21:48:30 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 04 Sep 2026 21:48:33 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 04 Sep 2026 21:48:33 GMT
VOLUME [/var/lib/docker]
# Fri, 04 Sep 2026 21:48:33 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 04 Sep 2026 21:48:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 04 Sep 2026 21:48:33 GMT
CMD []
# Fri, 04 Sep 2026 22:10:07 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 04 Sep 2026 22:10:07 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 04 Sep 2026 22:10:07 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 22:10:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 04 Sep 2026 22:10:08 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 04 Sep 2026 22:10:08 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 04 Sep 2026 22:10:08 GMT
USER rootless
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
	-	`sha256:00a34f0b90201abff8bcc9c4a10d3feb7a4383d0e45fb50df3359979f594f668`  
		Last Modified: Fri, 04 Sep 2026 21:48:43 GMT  
		Size: 7.3 MB (7277482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1033f2a9eb0f5af58e17fb2165fdd031f7148da6fff80c1d310cfa9008d2b29c`  
		Last Modified: Fri, 04 Sep 2026 21:48:43 GMT  
		Size: 87.9 KB (87868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26787ad8590b1be38758cee8a60ad27d76129a0bbc62071818dc1b25a046f9c9`  
		Last Modified: Fri, 04 Sep 2026 21:48:43 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c5926a040429553b04ded9b33b9cca944b731c7ef4ea7b2fb5a7bf282dc291`  
		Last Modified: Fri, 04 Sep 2026 21:48:45 GMT  
		Size: 67.1 MB (67145184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172d4398b5edd1287960590b5d14c2d6d050ba17a5710d651c7d9b59adc123b7`  
		Last Modified: Fri, 04 Sep 2026 21:48:44 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2940ffd2cce01481e6a4ee9ccb9a154831e0b7ec2ff0fa24c844ffe9f283592e`  
		Last Modified: Fri, 04 Sep 2026 21:48:44 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acbc2990db320e9710355491f9bcc94f0b27f76dc8e684a8c6513474fcb60c5`  
		Last Modified: Fri, 04 Sep 2026 22:10:13 GMT  
		Size: 3.5 MB (3466090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38a8d0ecfa27b138d1180134a608095239bc413265f95242a0b5a96b9e26e901`  
		Last Modified: Fri, 04 Sep 2026 22:10:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d524947de289255938b9fddf39189a2e8d8d41067b26dc411553f9aad02e98f`  
		Last Modified: Fri, 04 Sep 2026 22:10:13 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1beae32a291f7faece5197dc15b314d0f3ce54b34fbebb7b40e5df6b6d80a25d`  
		Last Modified: Fri, 04 Sep 2026 22:10:13 GMT  
		Size: 12.1 MB (12122062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab3ea9613ea7aad61a8f117af59aaecabdc3f5067d7f037fc75c02a4e049a9ee`  
		Last Modified: Fri, 04 Sep 2026 22:10:14 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:e6591040cb65da31d794efed855d9ba96e3df6ba3c967ddcdeacb96f9c0b4549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ea28ac5be3ca6ece8e442098732ea9fd8705aedfc050da84b8909a5ea44544`

```dockerfile
```

-	Layers:
	-	`sha256:3feb5c16ae775d621951977c0b14a0bb08c85ad0c992197d10f664eafc99a0b3`  
		Last Modified: Fri, 04 Sep 2026 22:10:12 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:19b6d666831cda38537c1fc60c76f32bd0f17c77f46d53b080d98b39e1f7cefb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145612523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31fffa92767a7e23a2148621dbad72ab547ddd6933fbaeaddc35adda8e1a6b6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Fri, 04 Sep 2026 21:48:27 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 		zfs 	; # buildkit
# Fri, 04 Sep 2026 21:48:28 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 04 Sep 2026 21:48:28 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 21:48:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.0.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.0.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 04 Sep 2026 21:48:31 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 04 Sep 2026 21:48:31 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 04 Sep 2026 21:48:31 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 04 Sep 2026 21:48:31 GMT
VOLUME [/var/lib/docker]
# Fri, 04 Sep 2026 21:48:31 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 04 Sep 2026 21:48:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 04 Sep 2026 21:48:31 GMT
CMD []
# Fri, 04 Sep 2026 22:09:46 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 04 Sep 2026 22:09:47 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 04 Sep 2026 22:09:47 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 04 Sep 2026 22:09:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.0.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.0.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 04 Sep 2026 22:09:47 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 04 Sep 2026 22:09:47 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 04 Sep 2026 22:09:47 GMT
USER rootless
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
	-	`sha256:faca1f1d54a4d170bc5649bdbbf54767f493c522a20f757264e92bbb2b05e785`  
		Last Modified: Fri, 04 Sep 2026 21:48:41 GMT  
		Size: 7.8 MB (7803471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206d6697351ee5534cac2cceef72dd2be1e304f2cfd0703c70890b85c75e4542`  
		Last Modified: Fri, 04 Sep 2026 21:48:40 GMT  
		Size: 96.8 KB (96796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c157df887fbd7acb025ee1b818e434fe0e6a4de3bd772f44eca356d5a91d81`  
		Last Modified: Fri, 04 Sep 2026 21:48:40 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3434b2a31d30bd6ffb0af6393e471f8d1f12b56e56199839427b21773b47a2e4`  
		Last Modified: Fri, 04 Sep 2026 21:48:42 GMT  
		Size: 60.9 MB (60866515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae8e54398278befd5ae37493eec5d9cc08744bcc98fb4dd1cc41e01e5c6f761`  
		Last Modified: Fri, 04 Sep 2026 21:48:42 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc0daefd182a762c61055a8637a595f5dbcad6e1e5bc3a11dcd6a28f3f3cee5`  
		Last Modified: Fri, 04 Sep 2026 21:48:42 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff5d55a9e1ebcebba63a45096f8ec6bb9e3959524505b6c62213076295d6f96`  
		Last Modified: Fri, 04 Sep 2026 22:09:53 GMT  
		Size: 3.4 MB (3445390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d262a973f5e52a5e0661cc289078ad75e8fdf996e64a8db0c6f65fb16ddeb28`  
		Last Modified: Fri, 04 Sep 2026 22:09:53 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff32e1181c2e1603c36cd4efdca50573ee76302ac42ded49cd221aa41dab72e8`  
		Last Modified: Fri, 04 Sep 2026 22:09:53 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:833a54a36f598b9df8de07678f4cb7ba5352e0fb2ee8d1ffeb9b5d32759e9fde`  
		Last Modified: Fri, 04 Sep 2026 22:09:53 GMT  
		Size: 11.3 MB (11250650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9742aeabd6d685a0695f80adb8518afd4d6e88ab22a908684b88b3f0e7a7c3a9`  
		Last Modified: Fri, 04 Sep 2026 22:09:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:f85661d9412dc1c0864f9f4ba01060dd61c917121b268a9106bb5ce084cff53c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a98e324bb36d6acf54b0226abdb87a928baeace8c5e2d349dc50625758f1453e`

```dockerfile
```

-	Layers:
	-	`sha256:ce6fe7c217d57817329bccb5ccc1eadda454cab3d3f0c731235b073ee9c3ca6b`  
		Last Modified: Fri, 04 Sep 2026 22:09:52 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:latest`

```console
$ docker pull docker@sha256:76cd6bbc3ab600fced21a7e1bea77ac00cb7c545eb95d5767e4ec4ffbcb242dc
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
$ docker pull docker@sha256:2ed826e92388178e49d1a81cbafcbb56d5f6c8dad2fbf5e1f41ae7501c8c525f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137783129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19a365b64dc50e3dec0a4b5687b6b4708e6f120bcbc11468574c9096a447f83f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:38:01 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:38:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:38:05 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:38:05 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:38:05 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:38:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:38:05 GMT
CMD []
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
	-	`sha256:4e87dd5da4e5ef6960c88ae1df7960a21f52edfca95c1bf7ea25b3fddcfe1ef2`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 4.1 MB (4074988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0a4f70905efcc07de79a56cf648158405bd856b1f4fa7486747247ed4863bc`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 81.1 KB (81092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60a830b82765ceb72b79da36b753ab25a8a1461dbcb89e653e97b94ba99f735`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a1889958343c89fa6c4945bce76ac383c0eb453d5cd845f0002f3ec55cc985`  
		Last Modified: Tue, 15 Sep 2026 23:38:17 GMT  
		Size: 67.1 MB (67073301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda0dfb224405de5cb0909614cb8bedc633fad0ae89ae45c336a773ea3702eec`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725c1a3851991782b2a4e2904e71d53eb6efa832b25c945ffa24876fe60c0084`  
		Last Modified: Tue, 15 Sep 2026 23:38:16 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:6d723a55e3bb259b997228b7edbc3bf4858c1f7379a0e934a26464441e0d1cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:334113c8afade62f95b5ab9592b4a57c315e06b156a37069c4648340ddeb05f2`

```dockerfile
```

-	Layers:
	-	`sha256:0653063129d8744734c226a48bc8a1758e91c6aad4380abfed7f29f1588fae56`  
		Last Modified: Tue, 15 Sep 2026 23:38:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:7fb0728f53061ac4f1ea73dbef3a25d82bafede09cf8499f033dcdf3e6032cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129007955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afba1777e701a9db31378cd407e6341e16c76ea37f2a776fd7df3606efc94024`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:40:15 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:40:16 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:40:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:40:19 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:40:19 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:40:19 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:40:19 GMT
CMD []
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
	-	`sha256:e0e9a69b8fcc7e2830e2be7e833021284b2e9af7a4fc0d6fdbf5536b43349b48`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 3.7 MB (3711045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc26824bc5981a5498251a8f1451aec1f1417dcef6762c1f89118904f4a974d`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 79.8 KB (79792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae14a434967bb7a41fdaf05d988b63d026b1a05614910bfbfeef41969984625`  
		Last Modified: Tue, 15 Sep 2026 23:40:30 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb29dc57ae486c1e5957568e94b9c63d95a85d2281ae75395116a9623b4c6a4`  
		Last Modified: Tue, 15 Sep 2026 23:40:32 GMT  
		Size: 62.5 MB (62474091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee3c8b923e8f8d0d4947df79343b1c81f787d8bb14efd8bb08c71b6b1357851`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6960a02400d51d8806e1d0e1c05c6def65d27636b46688194d7146681aae15`  
		Last Modified: Tue, 15 Sep 2026 23:40:31 GMT  
		Size: 3.3 KB (3298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:b5f0f8188034f87aa28293e7be549ce407eafa1d052f1f897b3592abb6f9d132
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad52914cd71b8352536decf818dff831036da2ddd3d104463ecb5edc86190c17`

```dockerfile
```

-	Layers:
	-	`sha256:55fc5397ad44431475f3e96ad23ddbed30c97b3e2d86a6b5dbaa637e4b63ab54`  
		Last Modified: Tue, 15 Sep 2026 23:40:29 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:09cdc830618f29992714d8786a3997c89388aa8f96ee3f78f8d730199e68b625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127511668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dcb1066bbaf1663c0ebc9045760fd2eba86220f7a52098c8745d426d6d7e5b5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:41:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:41:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:41:06 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:41:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:41:06 GMT
CMD []
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
	-	`sha256:14b170b97813bb5085c30143f1586878d2facd718e14fa73b78a3f2178b0d13b`  
		Last Modified: Tue, 15 Sep 2026 23:41:17 GMT  
		Size: 3.4 MB (3435064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc4626806b34f82eee96908ca018f22238bf7902c31aa9797a28b63497a45cf`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 76.2 KB (76159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9973da56d8a03ebcb40742d52c8ccc1152eda58af73c98ae65acdc08dfe02be0`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38927e611cb384f7501c2aa512d8385ff784288b4c0663a7527de558a204c1e`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 62.3 MB (62295743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd64529a9a562976533808c305de5fb84f8846a8959dad9f3d1cc76a322a425`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0935d2452d1cc660a862608c73270472d544329d1ef2f8124e795179d6128224`  
		Last Modified: Tue, 15 Sep 2026 23:41:18 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:43f343d7c1a18a30482d44b410b24ef71858a1c323b1331017622ace2ed6aa40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad7b4dca102472689e173c6011b7902a3cea48cfe373ad0234a6a12022dba68`

```dockerfile
```

-	Layers:
	-	`sha256:2f5da5c9001a00066d2d5e4f4f117c8810b85ec2242e09032ab43b7731d43fe7`  
		Last Modified: Tue, 15 Sep 2026 23:41:16 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b17882d07b6ab725b70b372259f2919166e1ceec47f517d7872c23dd55366b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127674252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ac680ab72270dab30fe53ec7098f1d93376f5e27c60400babe6504d25d1358`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

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
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Tue, 15 Sep 2026 23:37:45 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 15 Sep 2026 23:37:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 15 Sep 2026 23:37:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 15 Sep 2026 23:37:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 23:37:49 GMT
VOLUME [/var/lib/docker]
# Tue, 15 Sep 2026 23:37:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 15 Sep 2026 23:37:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 15 Sep 2026 23:37:49 GMT
CMD []
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
	-	`sha256:e7f31adfbbfe1ddd9795278c468b5ee8df7674d04fd884550ab3308cb952aa99`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 4.6 MB (4616877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a6203c4036465ee974d6d30f2bdc716dd58ed8772d9b8e95d8e5fe09f014bb`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 90.4 KB (90408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8885901ddf5008261f7126df1a0e8870ba2120f642ebf2ca245b4d33fa2cf6ed`  
		Last Modified: Tue, 15 Sep 2026 23:37:58 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c91750b0dc1a2f4ae4deaed7cbb525dd8c3ea8d419a81d6941d3ce57bca774a`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 60.8 MB (60816942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a1427fa42dfd7fe1c56a3dcc512752c75610cae75c7b72213d8261ef26c933`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f827cead56725c977de8763a27d41ed20bdb644cfbd6ae6d821451490f6f83`  
		Last Modified: Tue, 15 Sep 2026 23:37:59 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:efa0525f3e1221f51b6cce71d06dd45a95a2e046fe355938eb878d7db3a46eff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f4090ae604b768cdf9bd855106d49d5a798fa01581534af652544643dd1a23b`

```dockerfile
```

-	Layers:
	-	`sha256:d9b0333066801918997f4e0bff2a3272cbed2fbc88f81511c527df50d332606d`  
		Last Modified: Tue, 15 Sep 2026 23:37:57 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:windowsservercore`

```console
$ docker pull docker@sha256:56cb830d5214a985bf883c5c20bce067e352e5bfccfb2a87c44ab6202931374d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:43295e24d9571cbc4a77945302868f7a8c8dd222312e92c6b8ded4fa69c4f94e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514881984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3401f3252da7c543d71d9f5b60ae940e4f5d262eeec6f5c0bf44b571846d79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Tue, 15 Sep 2026 23:37:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:19 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:20 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:22 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:53 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:39:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:06 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c785a2e960c3bdfe1048c97eef776ae467ad09c173756ab1431943d9aebeae62`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee192afef0fc55eddadfb6d4d064d28a3d21a72905a7267ad903c6dda1ae771`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 385.9 KB (385914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550d8bc8d72b5f6850aee8f846464dc8da622df77c87ea1fa27094aa108168f3`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c653d2d2be21d7e8b0af0806b741d52a2294b650cb3b1bf280ac7b328b315d`  
		Last Modified: Tue, 15 Sep 2026 23:39:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b72aa3f62f0f2206c95787330bad1159d6576f0eae8efd108d2397a42db652`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 20.9 MB (20928690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999aea969d9d11d2fc3f6580695ffc2f3fb59eb17bb4f04fbacad544e5d773c6`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0f25a1bb7fb2366e410c6aec4ebac1e23605c17a1f693ff0826b31115762d4`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a2854c927ca9a786ed22ef8417833ba18e10513823ec6cbf35f4ea03eba5d1`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19f04dbaabc95b9d48cecba97ed540de8e8741edc4d5ad3cc8aa02a838cd424`  
		Last Modified: Tue, 15 Sep 2026 23:39:46 GMT  
		Size: 24.0 MB (24008795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa861e82998cfaf89545927ed0475bb31d2ba17321d95018e790ca9daafff6e`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd74d1034e8d778099ea04bb9bba6440441cdb55bc6fb367e65d18dfe851bf02`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc36c88ef9d37e30faf5c1c9e34cafb6425876e06d7c2afa4934ac211100bc2`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af7a7da407dcca7bf29402ff14517a17f93dcd22e701dd5c4e883ede03acdb8`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 11.9 MB (11917419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:df3d40210c8f4d8794aa8b543071c9bfe7132d27b8c1beffbc9b1586494c2ab9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276591913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab2feb597895037cee4eefe71798fb23c2a65cc36accee30ffe6e4e999dde7c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 23:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:13 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:14 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:15 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:40 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:38:57 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:38:59 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:00 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:13 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176be13a581f7b039327e85af7857331598f90d41fcd14cf73b80dfc25a723ef`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9850154bdaa7ef5f3ef6da850fd73d3f5c922e0716ba8b999fe5ab24b4aefc82`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 360.1 KB (360081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9bc1f7caae06f7263852defc6f14cd2608f6d1c431b254102d859a7718c8d`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e0d186a840aa1f2c5fa2df94c479a816ec15d0c8dca89b7ddeb153880adb71`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31595d3f0dd8620336916a891d400b4ef764e1ef88071898402232902d41209`  
		Last Modified: Tue, 15 Sep 2026 23:39:23 GMT  
		Size: 20.9 MB (20896042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543128c1c91d36863d249152b0aa1af21cdf3dbe9a3d0584c6ccd9cf6602575a`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e9f2ce6452ef78db1affd147aae7880ef727ccdf9a752ffa9c841a56a7affa`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea264089e11e5e2119488f98988af1c3b8e7a5a3e6a877d92b1eb539e19bf08`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532da97df2d01c14433cd89508ea47663f889a8d1a998c6f1b3a642ac2497c1f`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 24.0 MB (23981505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e48a4ca9ebf2a3982ae8e46750ac33dda36755b7e938de2c5455f061f9a75a`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95af5e67d30131626b9e919ed0997832699890da6313a908b6aa036fa2e5a68`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542a9d5ecb2520348e5df21a93d78879be34dc291044e8907bf58cbc18d3a227`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f734037e3944c771609e059481286ac2b2e1e1a088a0c4ae58eb7bdfde5ef022`  
		Last Modified: Tue, 15 Sep 2026 23:39:20 GMT  
		Size: 11.9 MB (11853772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:87045610be5a75da485a0b776b16a1d8db5b9807eebcdc7fbcf244d68e3de767
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:df3d40210c8f4d8794aa8b543071c9bfe7132d27b8c1beffbc9b1586494c2ab9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276591913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab2feb597895037cee4eefe71798fb23c2a65cc36accee30ffe6e4e999dde7c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Tue, 15 Sep 2026 23:37:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:13 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:14 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:15 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:36 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:37 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:38 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:40 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:38:57 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:58 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:38:59 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:00 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:13 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176be13a581f7b039327e85af7857331598f90d41fcd14cf73b80dfc25a723ef`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9850154bdaa7ef5f3ef6da850fd73d3f5c922e0716ba8b999fe5ab24b4aefc82`  
		Last Modified: Tue, 15 Sep 2026 23:39:22 GMT  
		Size: 360.1 KB (360081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d9bc1f7caae06f7263852defc6f14cd2608f6d1c431b254102d859a7718c8d`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e0d186a840aa1f2c5fa2df94c479a816ec15d0c8dca89b7ddeb153880adb71`  
		Last Modified: Tue, 15 Sep 2026 23:39:21 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31595d3f0dd8620336916a891d400b4ef764e1ef88071898402232902d41209`  
		Last Modified: Tue, 15 Sep 2026 23:39:23 GMT  
		Size: 20.9 MB (20896042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543128c1c91d36863d249152b0aa1af21cdf3dbe9a3d0584c6ccd9cf6602575a`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e9f2ce6452ef78db1affd147aae7880ef727ccdf9a752ffa9c841a56a7affa`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea264089e11e5e2119488f98988af1c3b8e7a5a3e6a877d92b1eb539e19bf08`  
		Last Modified: Tue, 15 Sep 2026 23:39:19 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532da97df2d01c14433cd89508ea47663f889a8d1a998c6f1b3a642ac2497c1f`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 24.0 MB (23981505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22e48a4ca9ebf2a3982ae8e46750ac33dda36755b7e938de2c5455f061f9a75a`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a95af5e67d30131626b9e919ed0997832699890da6313a908b6aa036fa2e5a68`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542a9d5ecb2520348e5df21a93d78879be34dc291044e8907bf58cbc18d3a227`  
		Last Modified: Tue, 15 Sep 2026 23:39:18 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f734037e3944c771609e059481286ac2b2e1e1a088a0c4ae58eb7bdfde5ef022`  
		Last Modified: Tue, 15 Sep 2026 23:39:20 GMT  
		Size: 11.9 MB (11853772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:6db9c08cc76ccbd17564a49900870dcf9de481ab2f0624e918a093c5c533c943
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:43295e24d9571cbc4a77945302868f7a8c8dd222312e92c6b8ded4fa69c4f94e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514881984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3401f3252da7c543d71d9f5b60ae940e4f5d262eeec6f5c0bf44b571846d79`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Tue, 15 Sep 2026 23:37:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 15 Sep 2026 23:38:19 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 15 Sep 2026 23:38:20 GMT
ENV DOCKER_VERSION=29.8.1
# Tue, 15 Sep 2026 23:38:22 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.1.zip
# Tue, 15 Sep 2026 23:38:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:38:53 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.windows-amd64.exe
# Tue, 15 Sep 2026 23:38:54 GMT
ENV DOCKER_BUILDX_SHA256=3904abb2802f9bd83a2bf483b35bba81c57a4e0baff981e6886564c461f908b3
# Tue, 15 Sep 2026 23:39:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Tue, 15 Sep 2026 23:39:04 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Tue, 15 Sep 2026 23:39:06 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Tue, 15 Sep 2026 23:39:25 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c785a2e960c3bdfe1048c97eef776ae467ad09c173756ab1431943d9aebeae62`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee192afef0fc55eddadfb6d4d064d28a3d21a72905a7267ad903c6dda1ae771`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 385.9 KB (385914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550d8bc8d72b5f6850aee8f846464dc8da622df77c87ea1fa27094aa108168f3`  
		Last Modified: Tue, 15 Sep 2026 23:39:34 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c653d2d2be21d7e8b0af0806b741d52a2294b650cb3b1bf280ac7b328b315d`  
		Last Modified: Tue, 15 Sep 2026 23:39:33 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b72aa3f62f0f2206c95787330bad1159d6576f0eae8efd108d2397a42db652`  
		Last Modified: Tue, 15 Sep 2026 23:39:35 GMT  
		Size: 20.9 MB (20928690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999aea969d9d11d2fc3f6580695ffc2f3fb59eb17bb4f04fbacad544e5d773c6`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0f25a1bb7fb2366e410c6aec4ebac1e23605c17a1f693ff0826b31115762d4`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a2854c927ca9a786ed22ef8417833ba18e10513823ec6cbf35f4ea03eba5d1`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19f04dbaabc95b9d48cecba97ed540de8e8741edc4d5ad3cc8aa02a838cd424`  
		Last Modified: Tue, 15 Sep 2026 23:39:46 GMT  
		Size: 24.0 MB (24008795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa861e82998cfaf89545927ed0475bb31d2ba17321d95018e790ca9daafff6e`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd74d1034e8d778099ea04bb9bba6440441cdb55bc6fb367e65d18dfe851bf02`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc36c88ef9d37e30faf5c1c9e34cafb6425876e06d7c2afa4934ac211100bc2`  
		Last Modified: Tue, 15 Sep 2026 23:39:30 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3af7a7da407dcca7bf29402ff14517a17f93dcd22e701dd5c4e883ede03acdb8`  
		Last Modified: Tue, 15 Sep 2026 23:39:32 GMT  
		Size: 11.9 MB (11917419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
