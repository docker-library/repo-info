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
-	[`docker:29.8.2`](#docker2982)
-	[`docker:29.8.2-alpine3.24`](#docker2982-alpine324)
-	[`docker:29.8.2-cli`](#docker2982-cli)
-	[`docker:29.8.2-cli-alpine3.24`](#docker2982-cli-alpine324)
-	[`docker:29.8.2-dind`](#docker2982-dind)
-	[`docker:29.8.2-dind-alpine3.24`](#docker2982-dind-alpine324)
-	[`docker:29.8.2-dind-rootless`](#docker2982-dind-rootless)
-	[`docker:29.8.2-windowsservercore`](#docker2982-windowsservercore)
-	[`docker:29.8.2-windowsservercore-ltsc2022`](#docker2982-windowsservercore-ltsc2022)
-	[`docker:29.8.2-windowsservercore-ltsc2025`](#docker2982-windowsservercore-ltsc2025)
-	[`docker:cli`](#dockercli)
-	[`docker:dind`](#dockerdind)
-	[`docker:dind-rootless`](#dockerdind-rootless)
-	[`docker:latest`](#dockerlatest)
-	[`docker:windowsservercore`](#dockerwindowsservercore)
-	[`docker:windowsservercore-ltsc2022`](#dockerwindowsservercore-ltsc2022)
-	[`docker:windowsservercore-ltsc2025`](#dockerwindowsservercore-ltsc2025)

## `docker:29`

```console
$ docker pull docker@sha256:3f3c01aaaebf7cce837356b688b7c059a4749f10bd7660dec7c58fc454a283f0
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
$ docker pull docker@sha256:754ce04dd9dee9ef015680b8529fc49608efb75f30322a54780e7aab32698a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135211767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f854ec83e3eb2208ddbfe5fe7d9413d82f79a4201f3b15943381480b1b03dd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:09 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:15:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:15:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:19:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76a910ce805a1082e59aa660bc6a20c52b6d9e6551794b595a1f5b79af3a8e2`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 8.2 MB (8199399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77a41eff6a9611e931c7cdb9c2a26a592a035a87d4a40d5d8ec9a531e0127939`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35795b4c35e2b5056c7d2a7f183987cd418aa2c20639be490f433291162b3cab`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 20.2 MB (20247342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a101e4c098be7f9cbf60b932a2bb746557324749d63240e77e5d7fceb8226d18`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 23.1 MB (23055714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e75e082420c2ecb7a4711e89a2e6160c0a678832ec54169694c305d05e90b2b`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d17cde835025617a8f620e8a94921d0e470c663ddbdb27cd90b558b958fb1d`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 534.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e2b8e363b8b33f8120e3e40bb62f8bfa61b15111099495d22f05452820a364`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 1.0 KB (1004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1588276fcb5a60fb65f1e8ca22832df2948df6c7ab4b3539095230701b41e4a`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ad31e49bf43f0fab6b16e56fa59d2d089a8826b2791381f86849e653b3e47e`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.5 MB (1497468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a115afc07335c8a813be16958c56d944c89bceb8bf4fda90da1e30b357b5ee8e`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 81.1 KB (81103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc9825f6b28af188e07262da4dc91ded3cc1b64377c29549a51a1227e71bfdc`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60de84ae1990bd67b18e9534aeef1b90726fb127317e9c3a1401567caf56e966`  
		Last Modified: Thu, 17 Sep 2026 22:19:20 GMT  
		Size: 67.1 MB (67073294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b877ae131bce9bfa6e4b4131ea4be880f919f0bd55a5ebcca639275578fa5d0d`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b284bc96d09306351135b96221fc1d2ae588ac0de0cd9f7a3194774b8884580`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:37fc33464abb2e35560fa0f834a57533901d6e327db3830825155d9916c13159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afef8b4e069bfbf28c33ff34f29bb168c9ec3022ccf84d6bca1e57bf70bc6be2`

```dockerfile
```

-	Layers:
	-	`sha256:10ad9303fd7611df66e35f6a6b16dffd6917c38b7cfe160927e0fb592373d38a`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v6

```console
$ docker pull docker@sha256:128101d525d11afb267d05103b15d865ea58fc8c6c8008462e1ef63b1e46eda4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126800101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e618188b1c63ba046626aaeda64c5f29140aee62c03821b8f72ecbdd5d9d036e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:18:28 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:18:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:18:28 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:18:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:18:30 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:18:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:18:32 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:32 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:31:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:31:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:31:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:31:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:31:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:31:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:31:28 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7fea7d1fa594bfd86946419c426df327a93af10f8874ff00dc0957d9affcbb`  
		Last Modified: Thu, 17 Sep 2026 21:18:38 GMT  
		Size: 8.1 MB (8097931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c169b56f98efd7fc71f226a86c82fe067182d5090164a42459cdeb266d815ad`  
		Last Modified: Thu, 17 Sep 2026 21:18:37 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb33ce0c758c064327e93cd026e8b9575fe90579bbd8e3c721890c471627058`  
		Last Modified: Thu, 17 Sep 2026 21:18:38 GMT  
		Size: 18.8 MB (18793214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd1773a20342974709ebeaad3daf3450136026e8bddb2b5a9e65e42d01b43a0`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 21.7 MB (21670297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e37798d7306ecbaf687bd35fceff0b0acdbefc7e8621c8cb6ada73135c06a19`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 10.6 MB (10622790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1dc9478b67fd2baa60d95361b3ab302acdcfac4e152c423e9dfcd09849149d`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6222dfb01cab291c00729bc7de6a0af419bb0fc2beeda5dbc89c9526df30e9`  
		Last Modified: Thu, 17 Sep 2026 21:18:40 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00beb4421bbe5f61c93bf00882645a6340d0965241b0aca448610cadb8eac094`  
		Last Modified: Thu, 17 Sep 2026 21:18:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f42a348651ef775fcb9ad010a7533bca691a74f879c0541651c5622e162f57`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 1.5 MB (1498718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7239c07f07d64ebdb6cae72e42363378f0e05e91e7cb62d1888b7dc1d030119c`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 79.8 KB (79818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70fb2d9dd6d707e1dfb37cc7b68965f2b41c5df1d54bcd2655a88dbcf1ca34f0`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9e40f71785b1fdb5f8115bd0010940a625c4cdf7e9c38b470c8a509b968ca1`  
		Last Modified: Thu, 17 Sep 2026 22:31:40 GMT  
		Size: 62.5 MB (62474069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56f01e316918eb41928ca4bfd57c5835df33c35eb0c953892cb8f8b0d727e54`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4a82bbedb322db828d899502be937376ccaed2b9405e43c75a4166ebe80891`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:f3492216c26f939d17a2375f084da0fcade8ef52e536a693b65e712fe0309087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455fef6b0326d84ed3498f0e3082e39894c71d22e68c5a4ab9862996838bc066`

```dockerfile
```

-	Layers:
	-	`sha256:081ba5d089677fb905013bbec48f944f4fc010c765068672277080777ead7b20`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v7

```console
$ docker pull docker@sha256:c0cbf37e8ffc45da5efb24b1fad9c626f59a3168b7182165715bac0d5d5c395c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125468762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07ca65049332bee81b9ecf00f874106307a4d56099ccfae5a4969d4a5c12c79`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:18:05 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:18:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:18:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:18:09 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:18:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:18:09 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:18:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:18:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:18:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:18:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:18:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:31:33 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:31:34 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:31:34 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:31:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:31:37 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:31:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:31:37 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d34ab6e0a5d491144967c841dc13da93dbc5014c78f6496957c175c0f6e3d3`  
		Last Modified: Thu, 17 Sep 2026 21:18:19 GMT  
		Size: 7.4 MB (7394904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b4425cca1a837f87839857ae1ade75afeb135f9855d27d5b784c4ad40555d6`  
		Last Modified: Thu, 17 Sep 2026 21:18:18 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceddd15a36c0761bcd997ce0856f97e6f6532647894713659e97364dc497fa9f`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 18.8 MB (18778766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ca5ba8c9a029fc14b95c08ca288dd5cb38cb67e6cdaae69a859284cdafaa60`  
		Last Modified: Thu, 17 Sep 2026 21:18:19 GMT  
		Size: 21.7 MB (21655090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3706fa212f213ca1da458fa0d13ebb972ff719aa8f3803b59aeaebdc14350a7`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 10.6 MB (10610431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4739ac655a6750d857256c19a545037730a2f3257c7c5d0057c6c17a447a118b`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73fd5a06ebc456a6db146695f91a578d2f02f009d2ca6b0cf13e28d654d76ad`  
		Last Modified: Thu, 17 Sep 2026 21:18:21 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b694189d4f95782cd1d8a54f738f2f62e6f583d5dcae9c5502025d670b5991dc`  
		Last Modified: Thu, 17 Sep 2026 21:18:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c382b67f563cdcb6947ef308154892c5b3c71577d0cd787c770afceaff884e4`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 1.4 MB (1384307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0dff6e675e42e1f3eccd2703f068daf89061d9b3e14da76f49a07419e5286e2`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 76.2 KB (76163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abfcd89885afc312fb5395a1b64cc2158ce09e641888769a2c667b5b32e63da7`  
		Last Modified: Thu, 17 Sep 2026 22:31:48 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a1fe1bdb84fcacbb0c902a7b7e3c205aeae2f1fdedbcbddc7fe86cc2494f3a`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 62.3 MB (62295747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d478c4351c2cd9a74c4523561bcbac32be09045a3334c58aeca6c9170583077c`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6560acab00bb00c7868cab6befd861004bc0278968f37bd46b33aa0203087ce7`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:c35972130bc49f12fcf41601ea31ec06f7deff84710b3097c15c605f6b83616e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b7f80ba58cea7484285d942fb3bdbf505c21334fdb16072a70eb6b8676a78d`

```dockerfile
```

-	Layers:
	-	`sha256:b3e4cc6e90b7096357f66ae6ca5b8a378d0e36d1f0444c832689e612d587cecc`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2aece977596803b4174bb35171b63007f554867e9931fef6c3b97a10d9517226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124809281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd57194004db00f22cca8582a3ad9411297742c0ae06b457e3ee9d2542d4957`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:14:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:14:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:14:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:14:34 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:39:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:39:12 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:39:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:39:12 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ec7620a63c3a00cf72bf71b89240dabe3cb48a2776b84ab95ea8ba2e3a5f39`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.3 MB (8261584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be7c59e8fb32810b5f2a2a1a007ca3163347c2b08453fd5ad8a0db7b3fb18607`  
		Last Modified: Thu, 17 Sep 2026 21:14:40 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f235640fa4510c35c74929350640368f354db6fdb2e2c5f7526574518128307`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 18.6 MB (18635439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8ba2d022fd95025c059661ce50b0b52cac134299d848972b96b41a05b44c7b`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 20.9 MB (20882241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ca4b67ae9aa86881e5cc3f6cc90cfb8059e5683a12a43c149c0e82152423b7`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 10.2 MB (10182234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c52310338ec92b843e924c5a2ffd4ac1fc9f8414a741a7e930dacabca8c169b`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0bf0d83649b844b8a1d342b99b89b362233d1bcbdfd9a1ff4de4075c3768d7c`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76189fa74b0cb4e0a580e82162cf6d47f65b8c7e51ac8541fc68e914051621d3`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ee35a0ed9226c8c971cdf0dbe629bc2eb7a2ab4a0bff4ee7d175169464bdfb`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.7 MB (1744624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ec27d56b475fe4a7b7541f901952782aacb9a1965bf51f6906adf5ae5ec9af`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 90.4 KB (90412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29a6714f1fc1dea37cb96aca1d8ecc1ff71d343beeee58aa598bbf00fbb9ba4`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe769cd4bf23bed3d810a6b5d091cb2e4ab4c0ea8aff70a6ace73e452e5b8b0`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 60.8 MB (60816931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b730fb53e7b83f5b8e0dffe1c0d15ddd79cad046d40b3779fca1ff881da5ead`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65c124a7b8ed0436786d54d010aed0610fa50b3f2c30216577e2507c80b0347`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:cf739e8e3d974e1b45c2660504585f8ca376976f59183d660027b42f93ad734f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25082756198b47be2d90c9c3ca6326db2e13eff6f9b3dfaf559fe2176904f2dd`

```dockerfile
```

-	Layers:
	-	`sha256:1a97bbfffa13183de0b0147093756cc24356b0a23a5c44b7c10eb7e2ca001931`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-cli`

```console
$ docker pull docker@sha256:b1805116a6a86cc591b5d5f60a910a0715cdcc9d18d866ad68b1457ead25c35c
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
$ docker pull docker@sha256:b0dfb3beea69612ccf1f9cfd8f74179b9c497d6b0c9e1294664dffe9bc1c070a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66557971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdaa3f3a154c168f5ca7ac7c0d648a20efccd22630909c0d22f9bcee0027fb35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:1a5c66d47feae8ebb71062b55bffc5950eb71597bc046f1809709043849e17c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5af8147b6b869a726125fb98063c2c82f701368868a1ebe5a37f87d0c67820b`

```dockerfile
```

-	Layers:
	-	`sha256:368b67071c6d2040d898daeaac2498ad4238d8d3405dffadcb210f33ff7cc56f`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:75b7b2e40669d00e39233752a3116e33483c62cb0c084800884a7daa8f516fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62745580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f44291c4db03d6fbf1ce5749b21b91f2e7747021461c539c83262631c616721`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:8ab8edcf6b6f0d5f385db00d9e8248c56e7d9c9e1d8cb0d1cb18645c45c1670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5c2aedc00bf54d7284c69f821ef8dc5723e0791a8a4e87ec5a2b7db790005c`

```dockerfile
```

-	Layers:
	-	`sha256:566c9ede71628a1abb1aec82d81b2ce9740c2a22b34b5fd0f2555aff2316a4f0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.2 KB (38221 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:3ea47db3e5920c09124fcf9eb1fc55f0db6cb64f1726032664adb17ea024d1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61710248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4472bfee54c71fb24f2268b0c798b0c135d0fb9e2e1cdb18bcc212c5a6e05e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:17cc9bcfa886da0e208667c96d7a4456bc076d24dba6219cddefdea6add4fce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4291fef6ebb9c305b8999de869bf6bd3baf4bc5a1b3857bd2896bea67fdd6117`

```dockerfile
```

-	Layers:
	-	`sha256:67a1cb73e677c3f732c5a2ea8394ea530cebc988733dac998b42d4c8a88a592d`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cf2cb65d40085fc4049e8c9c12791d2fb2862d73eca486f91240534011a8a14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62154962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a15b0dbecfd136ac63a8f2500a6c6f12fa174f0df8d1b2be7628f45ecbc0770`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:d710b7a13bc0c46e114a5ccf633bd703a1b5a3f8ada9b2348a3846f9013f34c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3468f01894b7b33b046e315e00ecfa7eaf154511606c3015c47d6b7113b8bd`

```dockerfile
```

-	Layers:
	-	`sha256:999f70b9552803da1891a45f597af7093ecf0ee82cb9689215f8330a585d3ba0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind`

```console
$ docker pull docker@sha256:3f3c01aaaebf7cce837356b688b7c059a4749f10bd7660dec7c58fc454a283f0
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
$ docker pull docker@sha256:754ce04dd9dee9ef015680b8529fc49608efb75f30322a54780e7aab32698a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135211767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f854ec83e3eb2208ddbfe5fe7d9413d82f79a4201f3b15943381480b1b03dd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:09 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:15:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:15:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:19:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76a910ce805a1082e59aa660bc6a20c52b6d9e6551794b595a1f5b79af3a8e2`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 8.2 MB (8199399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77a41eff6a9611e931c7cdb9c2a26a592a035a87d4a40d5d8ec9a531e0127939`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35795b4c35e2b5056c7d2a7f183987cd418aa2c20639be490f433291162b3cab`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 20.2 MB (20247342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a101e4c098be7f9cbf60b932a2bb746557324749d63240e77e5d7fceb8226d18`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 23.1 MB (23055714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e75e082420c2ecb7a4711e89a2e6160c0a678832ec54169694c305d05e90b2b`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d17cde835025617a8f620e8a94921d0e470c663ddbdb27cd90b558b958fb1d`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 534.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e2b8e363b8b33f8120e3e40bb62f8bfa61b15111099495d22f05452820a364`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 1.0 KB (1004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1588276fcb5a60fb65f1e8ca22832df2948df6c7ab4b3539095230701b41e4a`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ad31e49bf43f0fab6b16e56fa59d2d089a8826b2791381f86849e653b3e47e`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.5 MB (1497468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a115afc07335c8a813be16958c56d944c89bceb8bf4fda90da1e30b357b5ee8e`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 81.1 KB (81103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc9825f6b28af188e07262da4dc91ded3cc1b64377c29549a51a1227e71bfdc`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60de84ae1990bd67b18e9534aeef1b90726fb127317e9c3a1401567caf56e966`  
		Last Modified: Thu, 17 Sep 2026 22:19:20 GMT  
		Size: 67.1 MB (67073294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b877ae131bce9bfa6e4b4131ea4be880f919f0bd55a5ebcca639275578fa5d0d`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b284bc96d09306351135b96221fc1d2ae588ac0de0cd9f7a3194774b8884580`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:37fc33464abb2e35560fa0f834a57533901d6e327db3830825155d9916c13159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afef8b4e069bfbf28c33ff34f29bb168c9ec3022ccf84d6bca1e57bf70bc6be2`

```dockerfile
```

-	Layers:
	-	`sha256:10ad9303fd7611df66e35f6a6b16dffd6917c38b7cfe160927e0fb592373d38a`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:128101d525d11afb267d05103b15d865ea58fc8c6c8008462e1ef63b1e46eda4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126800101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e618188b1c63ba046626aaeda64c5f29140aee62c03821b8f72ecbdd5d9d036e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:18:28 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:18:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:18:28 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:18:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:18:30 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:18:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:18:32 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:32 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:31:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:31:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:31:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:31:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:31:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:31:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:31:28 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7fea7d1fa594bfd86946419c426df327a93af10f8874ff00dc0957d9affcbb`  
		Last Modified: Thu, 17 Sep 2026 21:18:38 GMT  
		Size: 8.1 MB (8097931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c169b56f98efd7fc71f226a86c82fe067182d5090164a42459cdeb266d815ad`  
		Last Modified: Thu, 17 Sep 2026 21:18:37 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb33ce0c758c064327e93cd026e8b9575fe90579bbd8e3c721890c471627058`  
		Last Modified: Thu, 17 Sep 2026 21:18:38 GMT  
		Size: 18.8 MB (18793214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd1773a20342974709ebeaad3daf3450136026e8bddb2b5a9e65e42d01b43a0`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 21.7 MB (21670297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e37798d7306ecbaf687bd35fceff0b0acdbefc7e8621c8cb6ada73135c06a19`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 10.6 MB (10622790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1dc9478b67fd2baa60d95361b3ab302acdcfac4e152c423e9dfcd09849149d`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6222dfb01cab291c00729bc7de6a0af419bb0fc2beeda5dbc89c9526df30e9`  
		Last Modified: Thu, 17 Sep 2026 21:18:40 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00beb4421bbe5f61c93bf00882645a6340d0965241b0aca448610cadb8eac094`  
		Last Modified: Thu, 17 Sep 2026 21:18:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f42a348651ef775fcb9ad010a7533bca691a74f879c0541651c5622e162f57`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 1.5 MB (1498718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7239c07f07d64ebdb6cae72e42363378f0e05e91e7cb62d1888b7dc1d030119c`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 79.8 KB (79818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70fb2d9dd6d707e1dfb37cc7b68965f2b41c5df1d54bcd2655a88dbcf1ca34f0`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9e40f71785b1fdb5f8115bd0010940a625c4cdf7e9c38b470c8a509b968ca1`  
		Last Modified: Thu, 17 Sep 2026 22:31:40 GMT  
		Size: 62.5 MB (62474069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56f01e316918eb41928ca4bfd57c5835df33c35eb0c953892cb8f8b0d727e54`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4a82bbedb322db828d899502be937376ccaed2b9405e43c75a4166ebe80891`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:f3492216c26f939d17a2375f084da0fcade8ef52e536a693b65e712fe0309087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455fef6b0326d84ed3498f0e3082e39894c71d22e68c5a4ab9862996838bc066`

```dockerfile
```

-	Layers:
	-	`sha256:081ba5d089677fb905013bbec48f944f4fc010c765068672277080777ead7b20`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:c0cbf37e8ffc45da5efb24b1fad9c626f59a3168b7182165715bac0d5d5c395c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125468762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07ca65049332bee81b9ecf00f874106307a4d56099ccfae5a4969d4a5c12c79`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:18:05 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:18:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:18:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:18:09 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:18:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:18:09 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:18:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:18:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:18:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:18:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:18:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:31:33 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:31:34 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:31:34 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:31:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:31:37 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:31:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:31:37 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d34ab6e0a5d491144967c841dc13da93dbc5014c78f6496957c175c0f6e3d3`  
		Last Modified: Thu, 17 Sep 2026 21:18:19 GMT  
		Size: 7.4 MB (7394904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b4425cca1a837f87839857ae1ade75afeb135f9855d27d5b784c4ad40555d6`  
		Last Modified: Thu, 17 Sep 2026 21:18:18 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceddd15a36c0761bcd997ce0856f97e6f6532647894713659e97364dc497fa9f`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 18.8 MB (18778766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ca5ba8c9a029fc14b95c08ca288dd5cb38cb67e6cdaae69a859284cdafaa60`  
		Last Modified: Thu, 17 Sep 2026 21:18:19 GMT  
		Size: 21.7 MB (21655090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3706fa212f213ca1da458fa0d13ebb972ff719aa8f3803b59aeaebdc14350a7`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 10.6 MB (10610431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4739ac655a6750d857256c19a545037730a2f3257c7c5d0057c6c17a447a118b`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73fd5a06ebc456a6db146695f91a578d2f02f009d2ca6b0cf13e28d654d76ad`  
		Last Modified: Thu, 17 Sep 2026 21:18:21 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b694189d4f95782cd1d8a54f738f2f62e6f583d5dcae9c5502025d670b5991dc`  
		Last Modified: Thu, 17 Sep 2026 21:18:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c382b67f563cdcb6947ef308154892c5b3c71577d0cd787c770afceaff884e4`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 1.4 MB (1384307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0dff6e675e42e1f3eccd2703f068daf89061d9b3e14da76f49a07419e5286e2`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 76.2 KB (76163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abfcd89885afc312fb5395a1b64cc2158ce09e641888769a2c667b5b32e63da7`  
		Last Modified: Thu, 17 Sep 2026 22:31:48 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a1fe1bdb84fcacbb0c902a7b7e3c205aeae2f1fdedbcbddc7fe86cc2494f3a`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 62.3 MB (62295747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d478c4351c2cd9a74c4523561bcbac32be09045a3334c58aeca6c9170583077c`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6560acab00bb00c7868cab6befd861004bc0278968f37bd46b33aa0203087ce7`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:c35972130bc49f12fcf41601ea31ec06f7deff84710b3097c15c605f6b83616e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b7f80ba58cea7484285d942fb3bdbf505c21334fdb16072a70eb6b8676a78d`

```dockerfile
```

-	Layers:
	-	`sha256:b3e4cc6e90b7096357f66ae6ca5b8a378d0e36d1f0444c832689e612d587cecc`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2aece977596803b4174bb35171b63007f554867e9931fef6c3b97a10d9517226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124809281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd57194004db00f22cca8582a3ad9411297742c0ae06b457e3ee9d2542d4957`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:14:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:14:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:14:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:14:34 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:39:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:39:12 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:39:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:39:12 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ec7620a63c3a00cf72bf71b89240dabe3cb48a2776b84ab95ea8ba2e3a5f39`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.3 MB (8261584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be7c59e8fb32810b5f2a2a1a007ca3163347c2b08453fd5ad8a0db7b3fb18607`  
		Last Modified: Thu, 17 Sep 2026 21:14:40 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f235640fa4510c35c74929350640368f354db6fdb2e2c5f7526574518128307`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 18.6 MB (18635439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8ba2d022fd95025c059661ce50b0b52cac134299d848972b96b41a05b44c7b`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 20.9 MB (20882241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ca4b67ae9aa86881e5cc3f6cc90cfb8059e5683a12a43c149c0e82152423b7`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 10.2 MB (10182234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c52310338ec92b843e924c5a2ffd4ac1fc9f8414a741a7e930dacabca8c169b`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0bf0d83649b844b8a1d342b99b89b362233d1bcbdfd9a1ff4de4075c3768d7c`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76189fa74b0cb4e0a580e82162cf6d47f65b8c7e51ac8541fc68e914051621d3`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ee35a0ed9226c8c971cdf0dbe629bc2eb7a2ab4a0bff4ee7d175169464bdfb`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.7 MB (1744624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ec27d56b475fe4a7b7541f901952782aacb9a1965bf51f6906adf5ae5ec9af`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 90.4 KB (90412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29a6714f1fc1dea37cb96aca1d8ecc1ff71d343beeee58aa598bbf00fbb9ba4`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe769cd4bf23bed3d810a6b5d091cb2e4ab4c0ea8aff70a6ace73e452e5b8b0`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 60.8 MB (60816931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b730fb53e7b83f5b8e0dffe1c0d15ddd79cad046d40b3779fca1ff881da5ead`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65c124a7b8ed0436786d54d010aed0610fa50b3f2c30216577e2507c80b0347`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:cf739e8e3d974e1b45c2660504585f8ca376976f59183d660027b42f93ad734f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25082756198b47be2d90c9c3ca6326db2e13eff6f9b3dfaf559fe2176904f2dd`

```dockerfile
```

-	Layers:
	-	`sha256:1a97bbfffa13183de0b0147093756cc24356b0a23a5c44b7c10eb7e2ca001931`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:1f029db43a32fbb1465fe8ff4327d405154876946986170e97d7861232a8227a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:575e55254404cf956069d061d265f1109c60f725822f0629b61ccf7029de2728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150961217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c99e3fb47fc03bbd9c42ce5ce3d65ee88f896c536b79af2cfc136d4419a6cb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:09 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:15:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:15:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:19:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD []
# Thu, 17 Sep 2026 23:16:36 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 17 Sep 2026 23:16:36 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 17 Sep 2026 23:16:36 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 23:16:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 17 Sep 2026 23:16:37 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 17 Sep 2026 23:16:37 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 17 Sep 2026 23:16:37 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76a910ce805a1082e59aa660bc6a20c52b6d9e6551794b595a1f5b79af3a8e2`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 8.2 MB (8199399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77a41eff6a9611e931c7cdb9c2a26a592a035a87d4a40d5d8ec9a531e0127939`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35795b4c35e2b5056c7d2a7f183987cd418aa2c20639be490f433291162b3cab`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 20.2 MB (20247342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a101e4c098be7f9cbf60b932a2bb746557324749d63240e77e5d7fceb8226d18`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 23.1 MB (23055714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e75e082420c2ecb7a4711e89a2e6160c0a678832ec54169694c305d05e90b2b`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d17cde835025617a8f620e8a94921d0e470c663ddbdb27cd90b558b958fb1d`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 534.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e2b8e363b8b33f8120e3e40bb62f8bfa61b15111099495d22f05452820a364`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 1.0 KB (1004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1588276fcb5a60fb65f1e8ca22832df2948df6c7ab4b3539095230701b41e4a`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ad31e49bf43f0fab6b16e56fa59d2d089a8826b2791381f86849e653b3e47e`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.5 MB (1497468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a115afc07335c8a813be16958c56d944c89bceb8bf4fda90da1e30b357b5ee8e`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 81.1 KB (81103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc9825f6b28af188e07262da4dc91ded3cc1b64377c29549a51a1227e71bfdc`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60de84ae1990bd67b18e9534aeef1b90726fb127317e9c3a1401567caf56e966`  
		Last Modified: Thu, 17 Sep 2026 22:19:20 GMT  
		Size: 67.1 MB (67073294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b877ae131bce9bfa6e4b4131ea4be880f919f0bd55a5ebcca639275578fa5d0d`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b284bc96d09306351135b96221fc1d2ae588ac0de0cd9f7a3194774b8884580`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4d76c5d72c3ffb6fc854a0a9bc95a8471480344260292069b5e01923017532`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 3.6 MB (3626039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6946ff996478f35382faaf63528e870e04a6afe6126b150757c75aa60b65b344`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a3a3b6e2ee00f98b93dd4644e4861a65a69419698f20d0c5346aeeb27debb7`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335a4dd1111fc593fd499b25510a9e3d01e46e1fe531c3d4c248b8db9b0e5645`  
		Last Modified: Thu, 17 Sep 2026 23:16:43 GMT  
		Size: 12.1 MB (12122072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6b86fc25681616d4c75dfc29d14c154128bd058b3c0bd72c9b1e93d5b87e43`  
		Last Modified: Thu, 17 Sep 2026 23:16:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:326881a7829949b98cac70ebe04b7af96aacf9bc20f958dc89b8bdbcfb0fb8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74f88219e669fa524e0e3e7cc1e20cbd83e1d3f793b39851cbe7a6cd54c14f1`

```dockerfile
```

-	Layers:
	-	`sha256:39a24f6d692257089159d3188623605be503d57fa6fc0ea2b63d500747b01974`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:43a36b54b841d559a54f10ec01696598eec9213822938918fceec873f57baab3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139672374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:683f355c99adaec3f4c1bd95bcfd6f8a3520d44c5724d5c089059a34633deb62`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:14:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:14:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:14:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:14:34 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:39:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:39:12 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:39:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:39:12 GMT
CMD []
# Thu, 17 Sep 2026 23:15:12 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 17 Sep 2026 23:15:12 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 17 Sep 2026 23:15:12 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 23:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 17 Sep 2026 23:15:13 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 17 Sep 2026 23:15:13 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 17 Sep 2026 23:15:13 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ec7620a63c3a00cf72bf71b89240dabe3cb48a2776b84ab95ea8ba2e3a5f39`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.3 MB (8261584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be7c59e8fb32810b5f2a2a1a007ca3163347c2b08453fd5ad8a0db7b3fb18607`  
		Last Modified: Thu, 17 Sep 2026 21:14:40 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f235640fa4510c35c74929350640368f354db6fdb2e2c5f7526574518128307`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 18.6 MB (18635439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8ba2d022fd95025c059661ce50b0b52cac134299d848972b96b41a05b44c7b`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 20.9 MB (20882241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ca4b67ae9aa86881e5cc3f6cc90cfb8059e5683a12a43c149c0e82152423b7`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 10.2 MB (10182234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c52310338ec92b843e924c5a2ffd4ac1fc9f8414a741a7e930dacabca8c169b`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0bf0d83649b844b8a1d342b99b89b362233d1bcbdfd9a1ff4de4075c3768d7c`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76189fa74b0cb4e0a580e82162cf6d47f65b8c7e51ac8541fc68e914051621d3`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ee35a0ed9226c8c971cdf0dbe629bc2eb7a2ab4a0bff4ee7d175169464bdfb`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.7 MB (1744624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ec27d56b475fe4a7b7541f901952782aacb9a1965bf51f6906adf5ae5ec9af`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 90.4 KB (90412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29a6714f1fc1dea37cb96aca1d8ecc1ff71d343beeee58aa598bbf00fbb9ba4`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe769cd4bf23bed3d810a6b5d091cb2e4ab4c0ea8aff70a6ace73e452e5b8b0`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 60.8 MB (60816931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b730fb53e7b83f5b8e0dffe1c0d15ddd79cad046d40b3779fca1ff881da5ead`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65c124a7b8ed0436786d54d010aed0610fa50b3f2c30216577e2507c80b0347`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a33d6fe7e6d8758dbe76ae538168682ef1b03b6f05dd80d91dc724e666aa4b`  
		Last Modified: Thu, 17 Sep 2026 23:15:18 GMT  
		Size: 3.6 MB (3611094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62021cb0021111f6254af73eaf90d7975a27f4e28844843ca1e76f4229459f34`  
		Last Modified: Thu, 17 Sep 2026 23:15:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1952a79283c5b634ae25bfc9dbd13046d2947a143aac3845d86b761e83e5a61f`  
		Last Modified: Thu, 17 Sep 2026 23:15:17 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439326ac83ca684b4f6221a6fd84a2c5ce8a125e7ffe43fc8b98386be368170e`  
		Last Modified: Thu, 17 Sep 2026 23:15:18 GMT  
		Size: 11.3 MB (11250658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a77324a073000ffb80ba2a2db698bfc6f6ec358097bcbc234e22ae9dbf57493`  
		Last Modified: Thu, 17 Sep 2026 23:15:19 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:d46e0ea882bc4a9a5d7d97314255b9f128c6f7a796d40423ee86ad5e6a86ad7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825afe93221302c05637f62d2f19a6635c550541b40f27bcd123cffe9068e297`

```dockerfile
```

-	Layers:
	-	`sha256:17c1c5d2418038db83bc3716ad5218b28ef0de8b4e64bac84fa5b8dc48bc9a30`  
		Last Modified: Thu, 17 Sep 2026 23:15:17 GMT  
		Size: 30.7 KB (30656 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:fc7bbfbc9ed59f050488ddaf02ff318516e11c65bcbcb8149dd37cd0db938052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:29-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
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
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:fc7bbfbc9ed59f050488ddaf02ff318516e11c65bcbcb8149dd37cd0db938052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
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
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
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
$ docker pull docker@sha256:3f3c01aaaebf7cce837356b688b7c059a4749f10bd7660dec7c58fc454a283f0
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
$ docker pull docker@sha256:754ce04dd9dee9ef015680b8529fc49608efb75f30322a54780e7aab32698a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135211767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f854ec83e3eb2208ddbfe5fe7d9413d82f79a4201f3b15943381480b1b03dd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:09 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:15:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:15:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:19:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76a910ce805a1082e59aa660bc6a20c52b6d9e6551794b595a1f5b79af3a8e2`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 8.2 MB (8199399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77a41eff6a9611e931c7cdb9c2a26a592a035a87d4a40d5d8ec9a531e0127939`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35795b4c35e2b5056c7d2a7f183987cd418aa2c20639be490f433291162b3cab`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 20.2 MB (20247342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a101e4c098be7f9cbf60b932a2bb746557324749d63240e77e5d7fceb8226d18`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 23.1 MB (23055714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e75e082420c2ecb7a4711e89a2e6160c0a678832ec54169694c305d05e90b2b`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d17cde835025617a8f620e8a94921d0e470c663ddbdb27cd90b558b958fb1d`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 534.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e2b8e363b8b33f8120e3e40bb62f8bfa61b15111099495d22f05452820a364`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 1.0 KB (1004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1588276fcb5a60fb65f1e8ca22832df2948df6c7ab4b3539095230701b41e4a`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ad31e49bf43f0fab6b16e56fa59d2d089a8826b2791381f86849e653b3e47e`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.5 MB (1497468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a115afc07335c8a813be16958c56d944c89bceb8bf4fda90da1e30b357b5ee8e`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 81.1 KB (81103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc9825f6b28af188e07262da4dc91ded3cc1b64377c29549a51a1227e71bfdc`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60de84ae1990bd67b18e9534aeef1b90726fb127317e9c3a1401567caf56e966`  
		Last Modified: Thu, 17 Sep 2026 22:19:20 GMT  
		Size: 67.1 MB (67073294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b877ae131bce9bfa6e4b4131ea4be880f919f0bd55a5ebcca639275578fa5d0d`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b284bc96d09306351135b96221fc1d2ae588ac0de0cd9f7a3194774b8884580`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8` - unknown; unknown

```console
$ docker pull docker@sha256:37fc33464abb2e35560fa0f834a57533901d6e327db3830825155d9916c13159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afef8b4e069bfbf28c33ff34f29bb168c9ec3022ccf84d6bca1e57bf70bc6be2`

```dockerfile
```

-	Layers:
	-	`sha256:10ad9303fd7611df66e35f6a6b16dffd6917c38b7cfe160927e0fb592373d38a`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8` - linux; arm variant v6

```console
$ docker pull docker@sha256:128101d525d11afb267d05103b15d865ea58fc8c6c8008462e1ef63b1e46eda4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126800101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e618188b1c63ba046626aaeda64c5f29140aee62c03821b8f72ecbdd5d9d036e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:18:28 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:18:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:18:28 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:18:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:18:30 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:18:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:18:32 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:32 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:31:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:31:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:31:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:31:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:31:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:31:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:31:28 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7fea7d1fa594bfd86946419c426df327a93af10f8874ff00dc0957d9affcbb`  
		Last Modified: Thu, 17 Sep 2026 21:18:38 GMT  
		Size: 8.1 MB (8097931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c169b56f98efd7fc71f226a86c82fe067182d5090164a42459cdeb266d815ad`  
		Last Modified: Thu, 17 Sep 2026 21:18:37 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb33ce0c758c064327e93cd026e8b9575fe90579bbd8e3c721890c471627058`  
		Last Modified: Thu, 17 Sep 2026 21:18:38 GMT  
		Size: 18.8 MB (18793214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd1773a20342974709ebeaad3daf3450136026e8bddb2b5a9e65e42d01b43a0`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 21.7 MB (21670297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e37798d7306ecbaf687bd35fceff0b0acdbefc7e8621c8cb6ada73135c06a19`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 10.6 MB (10622790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1dc9478b67fd2baa60d95361b3ab302acdcfac4e152c423e9dfcd09849149d`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6222dfb01cab291c00729bc7de6a0af419bb0fc2beeda5dbc89c9526df30e9`  
		Last Modified: Thu, 17 Sep 2026 21:18:40 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00beb4421bbe5f61c93bf00882645a6340d0965241b0aca448610cadb8eac094`  
		Last Modified: Thu, 17 Sep 2026 21:18:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f42a348651ef775fcb9ad010a7533bca691a74f879c0541651c5622e162f57`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 1.5 MB (1498718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7239c07f07d64ebdb6cae72e42363378f0e05e91e7cb62d1888b7dc1d030119c`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 79.8 KB (79818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70fb2d9dd6d707e1dfb37cc7b68965f2b41c5df1d54bcd2655a88dbcf1ca34f0`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9e40f71785b1fdb5f8115bd0010940a625c4cdf7e9c38b470c8a509b968ca1`  
		Last Modified: Thu, 17 Sep 2026 22:31:40 GMT  
		Size: 62.5 MB (62474069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56f01e316918eb41928ca4bfd57c5835df33c35eb0c953892cb8f8b0d727e54`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4a82bbedb322db828d899502be937376ccaed2b9405e43c75a4166ebe80891`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8` - unknown; unknown

```console
$ docker pull docker@sha256:f3492216c26f939d17a2375f084da0fcade8ef52e536a693b65e712fe0309087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455fef6b0326d84ed3498f0e3082e39894c71d22e68c5a4ab9862996838bc066`

```dockerfile
```

-	Layers:
	-	`sha256:081ba5d089677fb905013bbec48f944f4fc010c765068672277080777ead7b20`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8` - linux; arm variant v7

```console
$ docker pull docker@sha256:c0cbf37e8ffc45da5efb24b1fad9c626f59a3168b7182165715bac0d5d5c395c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125468762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07ca65049332bee81b9ecf00f874106307a4d56099ccfae5a4969d4a5c12c79`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:18:05 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:18:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:18:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:18:09 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:18:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:18:09 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:18:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:18:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:18:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:18:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:18:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:31:33 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:31:34 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:31:34 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:31:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:31:37 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:31:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:31:37 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d34ab6e0a5d491144967c841dc13da93dbc5014c78f6496957c175c0f6e3d3`  
		Last Modified: Thu, 17 Sep 2026 21:18:19 GMT  
		Size: 7.4 MB (7394904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b4425cca1a837f87839857ae1ade75afeb135f9855d27d5b784c4ad40555d6`  
		Last Modified: Thu, 17 Sep 2026 21:18:18 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceddd15a36c0761bcd997ce0856f97e6f6532647894713659e97364dc497fa9f`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 18.8 MB (18778766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ca5ba8c9a029fc14b95c08ca288dd5cb38cb67e6cdaae69a859284cdafaa60`  
		Last Modified: Thu, 17 Sep 2026 21:18:19 GMT  
		Size: 21.7 MB (21655090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3706fa212f213ca1da458fa0d13ebb972ff719aa8f3803b59aeaebdc14350a7`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 10.6 MB (10610431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4739ac655a6750d857256c19a545037730a2f3257c7c5d0057c6c17a447a118b`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73fd5a06ebc456a6db146695f91a578d2f02f009d2ca6b0cf13e28d654d76ad`  
		Last Modified: Thu, 17 Sep 2026 21:18:21 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b694189d4f95782cd1d8a54f738f2f62e6f583d5dcae9c5502025d670b5991dc`  
		Last Modified: Thu, 17 Sep 2026 21:18:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c382b67f563cdcb6947ef308154892c5b3c71577d0cd787c770afceaff884e4`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 1.4 MB (1384307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0dff6e675e42e1f3eccd2703f068daf89061d9b3e14da76f49a07419e5286e2`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 76.2 KB (76163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abfcd89885afc312fb5395a1b64cc2158ce09e641888769a2c667b5b32e63da7`  
		Last Modified: Thu, 17 Sep 2026 22:31:48 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a1fe1bdb84fcacbb0c902a7b7e3c205aeae2f1fdedbcbddc7fe86cc2494f3a`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 62.3 MB (62295747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d478c4351c2cd9a74c4523561bcbac32be09045a3334c58aeca6c9170583077c`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6560acab00bb00c7868cab6befd861004bc0278968f37bd46b33aa0203087ce7`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8` - unknown; unknown

```console
$ docker pull docker@sha256:c35972130bc49f12fcf41601ea31ec06f7deff84710b3097c15c605f6b83616e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b7f80ba58cea7484285d942fb3bdbf505c21334fdb16072a70eb6b8676a78d`

```dockerfile
```

-	Layers:
	-	`sha256:b3e4cc6e90b7096357f66ae6ca5b8a378d0e36d1f0444c832689e612d587cecc`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2aece977596803b4174bb35171b63007f554867e9931fef6c3b97a10d9517226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124809281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd57194004db00f22cca8582a3ad9411297742c0ae06b457e3ee9d2542d4957`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:14:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:14:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:14:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:14:34 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:39:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:39:12 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:39:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:39:12 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ec7620a63c3a00cf72bf71b89240dabe3cb48a2776b84ab95ea8ba2e3a5f39`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.3 MB (8261584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be7c59e8fb32810b5f2a2a1a007ca3163347c2b08453fd5ad8a0db7b3fb18607`  
		Last Modified: Thu, 17 Sep 2026 21:14:40 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f235640fa4510c35c74929350640368f354db6fdb2e2c5f7526574518128307`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 18.6 MB (18635439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8ba2d022fd95025c059661ce50b0b52cac134299d848972b96b41a05b44c7b`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 20.9 MB (20882241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ca4b67ae9aa86881e5cc3f6cc90cfb8059e5683a12a43c149c0e82152423b7`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 10.2 MB (10182234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c52310338ec92b843e924c5a2ffd4ac1fc9f8414a741a7e930dacabca8c169b`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0bf0d83649b844b8a1d342b99b89b362233d1bcbdfd9a1ff4de4075c3768d7c`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76189fa74b0cb4e0a580e82162cf6d47f65b8c7e51ac8541fc68e914051621d3`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ee35a0ed9226c8c971cdf0dbe629bc2eb7a2ab4a0bff4ee7d175169464bdfb`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.7 MB (1744624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ec27d56b475fe4a7b7541f901952782aacb9a1965bf51f6906adf5ae5ec9af`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 90.4 KB (90412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29a6714f1fc1dea37cb96aca1d8ecc1ff71d343beeee58aa598bbf00fbb9ba4`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe769cd4bf23bed3d810a6b5d091cb2e4ab4c0ea8aff70a6ace73e452e5b8b0`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 60.8 MB (60816931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b730fb53e7b83f5b8e0dffe1c0d15ddd79cad046d40b3779fca1ff881da5ead`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65c124a7b8ed0436786d54d010aed0610fa50b3f2c30216577e2507c80b0347`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8` - unknown; unknown

```console
$ docker pull docker@sha256:cf739e8e3d974e1b45c2660504585f8ca376976f59183d660027b42f93ad734f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25082756198b47be2d90c9c3ca6326db2e13eff6f9b3dfaf559fe2176904f2dd`

```dockerfile
```

-	Layers:
	-	`sha256:1a97bbfffa13183de0b0147093756cc24356b0a23a5c44b7c10eb7e2ca001931`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8-cli`

```console
$ docker pull docker@sha256:b1805116a6a86cc591b5d5f60a910a0715cdcc9d18d866ad68b1457ead25c35c
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
$ docker pull docker@sha256:b0dfb3beea69612ccf1f9cfd8f74179b9c497d6b0c9e1294664dffe9bc1c070a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66557971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdaa3f3a154c168f5ca7ac7c0d648a20efccd22630909c0d22f9bcee0027fb35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-cli` - unknown; unknown

```console
$ docker pull docker@sha256:1a5c66d47feae8ebb71062b55bffc5950eb71597bc046f1809709043849e17c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5af8147b6b869a726125fb98063c2c82f701368868a1ebe5a37f87d0c67820b`

```dockerfile
```

-	Layers:
	-	`sha256:368b67071c6d2040d898daeaac2498ad4238d8d3405dffadcb210f33ff7cc56f`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:75b7b2e40669d00e39233752a3116e33483c62cb0c084800884a7daa8f516fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62745580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f44291c4db03d6fbf1ce5749b21b91f2e7747021461c539c83262631c616721`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-cli` - unknown; unknown

```console
$ docker pull docker@sha256:8ab8edcf6b6f0d5f385db00d9e8248c56e7d9c9e1d8cb0d1cb18645c45c1670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5c2aedc00bf54d7284c69f821ef8dc5723e0791a8a4e87ec5a2b7db790005c`

```dockerfile
```

-	Layers:
	-	`sha256:566c9ede71628a1abb1aec82d81b2ce9740c2a22b34b5fd0f2555aff2316a4f0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.2 KB (38221 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:3ea47db3e5920c09124fcf9eb1fc55f0db6cb64f1726032664adb17ea024d1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61710248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4472bfee54c71fb24f2268b0c798b0c135d0fb9e2e1cdb18bcc212c5a6e05e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-cli` - unknown; unknown

```console
$ docker pull docker@sha256:17cc9bcfa886da0e208667c96d7a4456bc076d24dba6219cddefdea6add4fce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4291fef6ebb9c305b8999de869bf6bd3baf4bc5a1b3857bd2896bea67fdd6117`

```dockerfile
```

-	Layers:
	-	`sha256:67a1cb73e677c3f732c5a2ea8394ea530cebc988733dac998b42d4c8a88a592d`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cf2cb65d40085fc4049e8c9c12791d2fb2862d73eca486f91240534011a8a14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62154962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a15b0dbecfd136ac63a8f2500a6c6f12fa174f0df8d1b2be7628f45ecbc0770`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-cli` - unknown; unknown

```console
$ docker pull docker@sha256:d710b7a13bc0c46e114a5ccf633bd703a1b5a3f8ada9b2348a3846f9013f34c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3468f01894b7b33b046e315e00ecfa7eaf154511606c3015c47d6b7113b8bd`

```dockerfile
```

-	Layers:
	-	`sha256:999f70b9552803da1891a45f597af7093ecf0ee82cb9689215f8330a585d3ba0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8-dind`

```console
$ docker pull docker@sha256:3f3c01aaaebf7cce837356b688b7c059a4749f10bd7660dec7c58fc454a283f0
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
$ docker pull docker@sha256:754ce04dd9dee9ef015680b8529fc49608efb75f30322a54780e7aab32698a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135211767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f854ec83e3eb2208ddbfe5fe7d9413d82f79a4201f3b15943381480b1b03dd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:09 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:15:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:15:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:19:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76a910ce805a1082e59aa660bc6a20c52b6d9e6551794b595a1f5b79af3a8e2`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 8.2 MB (8199399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77a41eff6a9611e931c7cdb9c2a26a592a035a87d4a40d5d8ec9a531e0127939`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35795b4c35e2b5056c7d2a7f183987cd418aa2c20639be490f433291162b3cab`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 20.2 MB (20247342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a101e4c098be7f9cbf60b932a2bb746557324749d63240e77e5d7fceb8226d18`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 23.1 MB (23055714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e75e082420c2ecb7a4711e89a2e6160c0a678832ec54169694c305d05e90b2b`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d17cde835025617a8f620e8a94921d0e470c663ddbdb27cd90b558b958fb1d`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 534.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e2b8e363b8b33f8120e3e40bb62f8bfa61b15111099495d22f05452820a364`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 1.0 KB (1004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1588276fcb5a60fb65f1e8ca22832df2948df6c7ab4b3539095230701b41e4a`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ad31e49bf43f0fab6b16e56fa59d2d089a8826b2791381f86849e653b3e47e`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.5 MB (1497468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a115afc07335c8a813be16958c56d944c89bceb8bf4fda90da1e30b357b5ee8e`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 81.1 KB (81103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc9825f6b28af188e07262da4dc91ded3cc1b64377c29549a51a1227e71bfdc`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60de84ae1990bd67b18e9534aeef1b90726fb127317e9c3a1401567caf56e966`  
		Last Modified: Thu, 17 Sep 2026 22:19:20 GMT  
		Size: 67.1 MB (67073294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b877ae131bce9bfa6e4b4131ea4be880f919f0bd55a5ebcca639275578fa5d0d`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b284bc96d09306351135b96221fc1d2ae588ac0de0cd9f7a3194774b8884580`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind` - unknown; unknown

```console
$ docker pull docker@sha256:37fc33464abb2e35560fa0f834a57533901d6e327db3830825155d9916c13159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afef8b4e069bfbf28c33ff34f29bb168c9ec3022ccf84d6bca1e57bf70bc6be2`

```dockerfile
```

-	Layers:
	-	`sha256:10ad9303fd7611df66e35f6a6b16dffd6917c38b7cfe160927e0fb592373d38a`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:128101d525d11afb267d05103b15d865ea58fc8c6c8008462e1ef63b1e46eda4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126800101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e618188b1c63ba046626aaeda64c5f29140aee62c03821b8f72ecbdd5d9d036e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:18:28 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:18:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:18:28 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:18:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:18:30 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:18:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:18:32 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:32 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:31:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:31:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:31:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:31:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:31:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:31:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:31:28 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7fea7d1fa594bfd86946419c426df327a93af10f8874ff00dc0957d9affcbb`  
		Last Modified: Thu, 17 Sep 2026 21:18:38 GMT  
		Size: 8.1 MB (8097931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c169b56f98efd7fc71f226a86c82fe067182d5090164a42459cdeb266d815ad`  
		Last Modified: Thu, 17 Sep 2026 21:18:37 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb33ce0c758c064327e93cd026e8b9575fe90579bbd8e3c721890c471627058`  
		Last Modified: Thu, 17 Sep 2026 21:18:38 GMT  
		Size: 18.8 MB (18793214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd1773a20342974709ebeaad3daf3450136026e8bddb2b5a9e65e42d01b43a0`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 21.7 MB (21670297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e37798d7306ecbaf687bd35fceff0b0acdbefc7e8621c8cb6ada73135c06a19`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 10.6 MB (10622790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1dc9478b67fd2baa60d95361b3ab302acdcfac4e152c423e9dfcd09849149d`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6222dfb01cab291c00729bc7de6a0af419bb0fc2beeda5dbc89c9526df30e9`  
		Last Modified: Thu, 17 Sep 2026 21:18:40 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00beb4421bbe5f61c93bf00882645a6340d0965241b0aca448610cadb8eac094`  
		Last Modified: Thu, 17 Sep 2026 21:18:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f42a348651ef775fcb9ad010a7533bca691a74f879c0541651c5622e162f57`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 1.5 MB (1498718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7239c07f07d64ebdb6cae72e42363378f0e05e91e7cb62d1888b7dc1d030119c`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 79.8 KB (79818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70fb2d9dd6d707e1dfb37cc7b68965f2b41c5df1d54bcd2655a88dbcf1ca34f0`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9e40f71785b1fdb5f8115bd0010940a625c4cdf7e9c38b470c8a509b968ca1`  
		Last Modified: Thu, 17 Sep 2026 22:31:40 GMT  
		Size: 62.5 MB (62474069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56f01e316918eb41928ca4bfd57c5835df33c35eb0c953892cb8f8b0d727e54`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4a82bbedb322db828d899502be937376ccaed2b9405e43c75a4166ebe80891`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind` - unknown; unknown

```console
$ docker pull docker@sha256:f3492216c26f939d17a2375f084da0fcade8ef52e536a693b65e712fe0309087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455fef6b0326d84ed3498f0e3082e39894c71d22e68c5a4ab9862996838bc066`

```dockerfile
```

-	Layers:
	-	`sha256:081ba5d089677fb905013bbec48f944f4fc010c765068672277080777ead7b20`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:c0cbf37e8ffc45da5efb24b1fad9c626f59a3168b7182165715bac0d5d5c395c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125468762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07ca65049332bee81b9ecf00f874106307a4d56099ccfae5a4969d4a5c12c79`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:18:05 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:18:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:18:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:18:09 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:18:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:18:09 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:18:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:18:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:18:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:18:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:18:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:31:33 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:31:34 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:31:34 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:31:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:31:37 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:31:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:31:37 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d34ab6e0a5d491144967c841dc13da93dbc5014c78f6496957c175c0f6e3d3`  
		Last Modified: Thu, 17 Sep 2026 21:18:19 GMT  
		Size: 7.4 MB (7394904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b4425cca1a837f87839857ae1ade75afeb135f9855d27d5b784c4ad40555d6`  
		Last Modified: Thu, 17 Sep 2026 21:18:18 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceddd15a36c0761bcd997ce0856f97e6f6532647894713659e97364dc497fa9f`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 18.8 MB (18778766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ca5ba8c9a029fc14b95c08ca288dd5cb38cb67e6cdaae69a859284cdafaa60`  
		Last Modified: Thu, 17 Sep 2026 21:18:19 GMT  
		Size: 21.7 MB (21655090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3706fa212f213ca1da458fa0d13ebb972ff719aa8f3803b59aeaebdc14350a7`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 10.6 MB (10610431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4739ac655a6750d857256c19a545037730a2f3257c7c5d0057c6c17a447a118b`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73fd5a06ebc456a6db146695f91a578d2f02f009d2ca6b0cf13e28d654d76ad`  
		Last Modified: Thu, 17 Sep 2026 21:18:21 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b694189d4f95782cd1d8a54f738f2f62e6f583d5dcae9c5502025d670b5991dc`  
		Last Modified: Thu, 17 Sep 2026 21:18:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c382b67f563cdcb6947ef308154892c5b3c71577d0cd787c770afceaff884e4`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 1.4 MB (1384307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0dff6e675e42e1f3eccd2703f068daf89061d9b3e14da76f49a07419e5286e2`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 76.2 KB (76163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abfcd89885afc312fb5395a1b64cc2158ce09e641888769a2c667b5b32e63da7`  
		Last Modified: Thu, 17 Sep 2026 22:31:48 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a1fe1bdb84fcacbb0c902a7b7e3c205aeae2f1fdedbcbddc7fe86cc2494f3a`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 62.3 MB (62295747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d478c4351c2cd9a74c4523561bcbac32be09045a3334c58aeca6c9170583077c`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6560acab00bb00c7868cab6befd861004bc0278968f37bd46b33aa0203087ce7`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind` - unknown; unknown

```console
$ docker pull docker@sha256:c35972130bc49f12fcf41601ea31ec06f7deff84710b3097c15c605f6b83616e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b7f80ba58cea7484285d942fb3bdbf505c21334fdb16072a70eb6b8676a78d`

```dockerfile
```

-	Layers:
	-	`sha256:b3e4cc6e90b7096357f66ae6ca5b8a378d0e36d1f0444c832689e612d587cecc`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2aece977596803b4174bb35171b63007f554867e9931fef6c3b97a10d9517226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124809281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd57194004db00f22cca8582a3ad9411297742c0ae06b457e3ee9d2542d4957`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:14:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:14:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:14:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:14:34 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:39:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:39:12 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:39:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:39:12 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ec7620a63c3a00cf72bf71b89240dabe3cb48a2776b84ab95ea8ba2e3a5f39`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.3 MB (8261584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be7c59e8fb32810b5f2a2a1a007ca3163347c2b08453fd5ad8a0db7b3fb18607`  
		Last Modified: Thu, 17 Sep 2026 21:14:40 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f235640fa4510c35c74929350640368f354db6fdb2e2c5f7526574518128307`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 18.6 MB (18635439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8ba2d022fd95025c059661ce50b0b52cac134299d848972b96b41a05b44c7b`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 20.9 MB (20882241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ca4b67ae9aa86881e5cc3f6cc90cfb8059e5683a12a43c149c0e82152423b7`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 10.2 MB (10182234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c52310338ec92b843e924c5a2ffd4ac1fc9f8414a741a7e930dacabca8c169b`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0bf0d83649b844b8a1d342b99b89b362233d1bcbdfd9a1ff4de4075c3768d7c`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76189fa74b0cb4e0a580e82162cf6d47f65b8c7e51ac8541fc68e914051621d3`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ee35a0ed9226c8c971cdf0dbe629bc2eb7a2ab4a0bff4ee7d175169464bdfb`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.7 MB (1744624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ec27d56b475fe4a7b7541f901952782aacb9a1965bf51f6906adf5ae5ec9af`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 90.4 KB (90412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29a6714f1fc1dea37cb96aca1d8ecc1ff71d343beeee58aa598bbf00fbb9ba4`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe769cd4bf23bed3d810a6b5d091cb2e4ab4c0ea8aff70a6ace73e452e5b8b0`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 60.8 MB (60816931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b730fb53e7b83f5b8e0dffe1c0d15ddd79cad046d40b3779fca1ff881da5ead`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65c124a7b8ed0436786d54d010aed0610fa50b3f2c30216577e2507c80b0347`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind` - unknown; unknown

```console
$ docker pull docker@sha256:cf739e8e3d974e1b45c2660504585f8ca376976f59183d660027b42f93ad734f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25082756198b47be2d90c9c3ca6326db2e13eff6f9b3dfaf559fe2176904f2dd`

```dockerfile
```

-	Layers:
	-	`sha256:1a97bbfffa13183de0b0147093756cc24356b0a23a5c44b7c10eb7e2ca001931`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8-dind-rootless`

```console
$ docker pull docker@sha256:1f029db43a32fbb1465fe8ff4327d405154876946986170e97d7861232a8227a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.8-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:575e55254404cf956069d061d265f1109c60f725822f0629b61ccf7029de2728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150961217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c99e3fb47fc03bbd9c42ce5ce3d65ee88f896c536b79af2cfc136d4419a6cb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:09 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:15:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:15:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:19:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD []
# Thu, 17 Sep 2026 23:16:36 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 17 Sep 2026 23:16:36 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 17 Sep 2026 23:16:36 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 23:16:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 17 Sep 2026 23:16:37 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 17 Sep 2026 23:16:37 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 17 Sep 2026 23:16:37 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76a910ce805a1082e59aa660bc6a20c52b6d9e6551794b595a1f5b79af3a8e2`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 8.2 MB (8199399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77a41eff6a9611e931c7cdb9c2a26a592a035a87d4a40d5d8ec9a531e0127939`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35795b4c35e2b5056c7d2a7f183987cd418aa2c20639be490f433291162b3cab`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 20.2 MB (20247342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a101e4c098be7f9cbf60b932a2bb746557324749d63240e77e5d7fceb8226d18`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 23.1 MB (23055714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e75e082420c2ecb7a4711e89a2e6160c0a678832ec54169694c305d05e90b2b`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d17cde835025617a8f620e8a94921d0e470c663ddbdb27cd90b558b958fb1d`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 534.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e2b8e363b8b33f8120e3e40bb62f8bfa61b15111099495d22f05452820a364`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 1.0 KB (1004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1588276fcb5a60fb65f1e8ca22832df2948df6c7ab4b3539095230701b41e4a`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ad31e49bf43f0fab6b16e56fa59d2d089a8826b2791381f86849e653b3e47e`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.5 MB (1497468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a115afc07335c8a813be16958c56d944c89bceb8bf4fda90da1e30b357b5ee8e`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 81.1 KB (81103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc9825f6b28af188e07262da4dc91ded3cc1b64377c29549a51a1227e71bfdc`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60de84ae1990bd67b18e9534aeef1b90726fb127317e9c3a1401567caf56e966`  
		Last Modified: Thu, 17 Sep 2026 22:19:20 GMT  
		Size: 67.1 MB (67073294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b877ae131bce9bfa6e4b4131ea4be880f919f0bd55a5ebcca639275578fa5d0d`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b284bc96d09306351135b96221fc1d2ae588ac0de0cd9f7a3194774b8884580`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4d76c5d72c3ffb6fc854a0a9bc95a8471480344260292069b5e01923017532`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 3.6 MB (3626039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6946ff996478f35382faaf63528e870e04a6afe6126b150757c75aa60b65b344`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a3a3b6e2ee00f98b93dd4644e4861a65a69419698f20d0c5346aeeb27debb7`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335a4dd1111fc593fd499b25510a9e3d01e46e1fe531c3d4c248b8db9b0e5645`  
		Last Modified: Thu, 17 Sep 2026 23:16:43 GMT  
		Size: 12.1 MB (12122072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6b86fc25681616d4c75dfc29d14c154128bd058b3c0bd72c9b1e93d5b87e43`  
		Last Modified: Thu, 17 Sep 2026 23:16:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:326881a7829949b98cac70ebe04b7af96aacf9bc20f958dc89b8bdbcfb0fb8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74f88219e669fa524e0e3e7cc1e20cbd83e1d3f793b39851cbe7a6cd54c14f1`

```dockerfile
```

-	Layers:
	-	`sha256:39a24f6d692257089159d3188623605be503d57fa6fc0ea2b63d500747b01974`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:43a36b54b841d559a54f10ec01696598eec9213822938918fceec873f57baab3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139672374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:683f355c99adaec3f4c1bd95bcfd6f8a3520d44c5724d5c089059a34633deb62`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:14:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:14:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:14:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:14:34 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:39:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:39:12 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:39:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:39:12 GMT
CMD []
# Thu, 17 Sep 2026 23:15:12 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 17 Sep 2026 23:15:12 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 17 Sep 2026 23:15:12 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 23:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 17 Sep 2026 23:15:13 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 17 Sep 2026 23:15:13 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 17 Sep 2026 23:15:13 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ec7620a63c3a00cf72bf71b89240dabe3cb48a2776b84ab95ea8ba2e3a5f39`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.3 MB (8261584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be7c59e8fb32810b5f2a2a1a007ca3163347c2b08453fd5ad8a0db7b3fb18607`  
		Last Modified: Thu, 17 Sep 2026 21:14:40 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f235640fa4510c35c74929350640368f354db6fdb2e2c5f7526574518128307`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 18.6 MB (18635439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8ba2d022fd95025c059661ce50b0b52cac134299d848972b96b41a05b44c7b`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 20.9 MB (20882241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ca4b67ae9aa86881e5cc3f6cc90cfb8059e5683a12a43c149c0e82152423b7`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 10.2 MB (10182234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c52310338ec92b843e924c5a2ffd4ac1fc9f8414a741a7e930dacabca8c169b`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0bf0d83649b844b8a1d342b99b89b362233d1bcbdfd9a1ff4de4075c3768d7c`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76189fa74b0cb4e0a580e82162cf6d47f65b8c7e51ac8541fc68e914051621d3`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ee35a0ed9226c8c971cdf0dbe629bc2eb7a2ab4a0bff4ee7d175169464bdfb`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.7 MB (1744624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ec27d56b475fe4a7b7541f901952782aacb9a1965bf51f6906adf5ae5ec9af`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 90.4 KB (90412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29a6714f1fc1dea37cb96aca1d8ecc1ff71d343beeee58aa598bbf00fbb9ba4`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe769cd4bf23bed3d810a6b5d091cb2e4ab4c0ea8aff70a6ace73e452e5b8b0`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 60.8 MB (60816931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b730fb53e7b83f5b8e0dffe1c0d15ddd79cad046d40b3779fca1ff881da5ead`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65c124a7b8ed0436786d54d010aed0610fa50b3f2c30216577e2507c80b0347`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a33d6fe7e6d8758dbe76ae538168682ef1b03b6f05dd80d91dc724e666aa4b`  
		Last Modified: Thu, 17 Sep 2026 23:15:18 GMT  
		Size: 3.6 MB (3611094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62021cb0021111f6254af73eaf90d7975a27f4e28844843ca1e76f4229459f34`  
		Last Modified: Thu, 17 Sep 2026 23:15:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1952a79283c5b634ae25bfc9dbd13046d2947a143aac3845d86b761e83e5a61f`  
		Last Modified: Thu, 17 Sep 2026 23:15:17 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439326ac83ca684b4f6221a6fd84a2c5ce8a125e7ffe43fc8b98386be368170e`  
		Last Modified: Thu, 17 Sep 2026 23:15:18 GMT  
		Size: 11.3 MB (11250658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a77324a073000ffb80ba2a2db698bfc6f6ec358097bcbc234e22ae9dbf57493`  
		Last Modified: Thu, 17 Sep 2026 23:15:19 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:d46e0ea882bc4a9a5d7d97314255b9f128c6f7a796d40423ee86ad5e6a86ad7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825afe93221302c05637f62d2f19a6635c550541b40f27bcd123cffe9068e297`

```dockerfile
```

-	Layers:
	-	`sha256:17c1c5d2418038db83bc3716ad5218b28ef0de8b4e64bac84fa5b8dc48bc9a30`  
		Last Modified: Thu, 17 Sep 2026 23:15:17 GMT  
		Size: 30.7 KB (30656 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8-windowsservercore`

```console
$ docker pull docker@sha256:fc7bbfbc9ed59f050488ddaf02ff318516e11c65bcbcb8149dd37cd0db938052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:29.8-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
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
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:fc7bbfbc9ed59f050488ddaf02ff318516e11c65bcbcb8149dd37cd0db938052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:29.8-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
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
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
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

## `docker:29.8.2`

```console
$ docker pull docker@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `docker:29.8.2-alpine3.24`

```console
$ docker pull docker@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `docker:29.8.2-cli`

```console
$ docker pull docker@sha256:b1805116a6a86cc591b5d5f60a910a0715cdcc9d18d866ad68b1457ead25c35c
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

### `docker:29.8.2-cli` - linux; amd64

```console
$ docker pull docker@sha256:b0dfb3beea69612ccf1f9cfd8f74179b9c497d6b0c9e1294664dffe9bc1c070a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66557971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdaa3f3a154c168f5ca7ac7c0d648a20efccd22630909c0d22f9bcee0027fb35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli` - unknown; unknown

```console
$ docker pull docker@sha256:1a5c66d47feae8ebb71062b55bffc5950eb71597bc046f1809709043849e17c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5af8147b6b869a726125fb98063c2c82f701368868a1ebe5a37f87d0c67820b`

```dockerfile
```

-	Layers:
	-	`sha256:368b67071c6d2040d898daeaac2498ad4238d8d3405dffadcb210f33ff7cc56f`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:75b7b2e40669d00e39233752a3116e33483c62cb0c084800884a7daa8f516fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62745580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f44291c4db03d6fbf1ce5749b21b91f2e7747021461c539c83262631c616721`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli` - unknown; unknown

```console
$ docker pull docker@sha256:8ab8edcf6b6f0d5f385db00d9e8248c56e7d9c9e1d8cb0d1cb18645c45c1670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5c2aedc00bf54d7284c69f821ef8dc5723e0791a8a4e87ec5a2b7db790005c`

```dockerfile
```

-	Layers:
	-	`sha256:566c9ede71628a1abb1aec82d81b2ce9740c2a22b34b5fd0f2555aff2316a4f0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.2 KB (38221 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:3ea47db3e5920c09124fcf9eb1fc55f0db6cb64f1726032664adb17ea024d1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61710248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4472bfee54c71fb24f2268b0c798b0c135d0fb9e2e1cdb18bcc212c5a6e05e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli` - unknown; unknown

```console
$ docker pull docker@sha256:17cc9bcfa886da0e208667c96d7a4456bc076d24dba6219cddefdea6add4fce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4291fef6ebb9c305b8999de869bf6bd3baf4bc5a1b3857bd2896bea67fdd6117`

```dockerfile
```

-	Layers:
	-	`sha256:67a1cb73e677c3f732c5a2ea8394ea530cebc988733dac998b42d4c8a88a592d`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cf2cb65d40085fc4049e8c9c12791d2fb2862d73eca486f91240534011a8a14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62154962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a15b0dbecfd136ac63a8f2500a6c6f12fa174f0df8d1b2be7628f45ecbc0770`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli` - unknown; unknown

```console
$ docker pull docker@sha256:d710b7a13bc0c46e114a5ccf633bd703a1b5a3f8ada9b2348a3846f9013f34c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3468f01894b7b33b046e315e00ecfa7eaf154511606c3015c47d6b7113b8bd`

```dockerfile
```

-	Layers:
	-	`sha256:999f70b9552803da1891a45f597af7093ecf0ee82cb9689215f8330a585d3ba0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8.2-cli-alpine3.24`

```console
$ docker pull docker@sha256:b1805116a6a86cc591b5d5f60a910a0715cdcc9d18d866ad68b1457ead25c35c
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

### `docker:29.8.2-cli-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:b0dfb3beea69612ccf1f9cfd8f74179b9c497d6b0c9e1294664dffe9bc1c070a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66557971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdaa3f3a154c168f5ca7ac7c0d648a20efccd22630909c0d22f9bcee0027fb35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:1a5c66d47feae8ebb71062b55bffc5950eb71597bc046f1809709043849e17c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5af8147b6b869a726125fb98063c2c82f701368868a1ebe5a37f87d0c67820b`

```dockerfile
```

-	Layers:
	-	`sha256:368b67071c6d2040d898daeaac2498ad4238d8d3405dffadcb210f33ff7cc56f`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-cli-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:75b7b2e40669d00e39233752a3116e33483c62cb0c084800884a7daa8f516fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62745580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f44291c4db03d6fbf1ce5749b21b91f2e7747021461c539c83262631c616721`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:8ab8edcf6b6f0d5f385db00d9e8248c56e7d9c9e1d8cb0d1cb18645c45c1670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5c2aedc00bf54d7284c69f821ef8dc5723e0791a8a4e87ec5a2b7db790005c`

```dockerfile
```

-	Layers:
	-	`sha256:566c9ede71628a1abb1aec82d81b2ce9740c2a22b34b5fd0f2555aff2316a4f0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.2 KB (38221 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-cli-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:3ea47db3e5920c09124fcf9eb1fc55f0db6cb64f1726032664adb17ea024d1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61710248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4472bfee54c71fb24f2268b0c798b0c135d0fb9e2e1cdb18bcc212c5a6e05e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:17cc9bcfa886da0e208667c96d7a4456bc076d24dba6219cddefdea6add4fce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4291fef6ebb9c305b8999de869bf6bd3baf4bc5a1b3857bd2896bea67fdd6117`

```dockerfile
```

-	Layers:
	-	`sha256:67a1cb73e677c3f732c5a2ea8394ea530cebc988733dac998b42d4c8a88a592d`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-cli-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cf2cb65d40085fc4049e8c9c12791d2fb2862d73eca486f91240534011a8a14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62154962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a15b0dbecfd136ac63a8f2500a6c6f12fa174f0df8d1b2be7628f45ecbc0770`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:d710b7a13bc0c46e114a5ccf633bd703a1b5a3f8ada9b2348a3846f9013f34c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3468f01894b7b33b046e315e00ecfa7eaf154511606c3015c47d6b7113b8bd`

```dockerfile
```

-	Layers:
	-	`sha256:999f70b9552803da1891a45f597af7093ecf0ee82cb9689215f8330a585d3ba0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8.2-dind`

```console
$ docker pull docker@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `docker:29.8.2-dind-alpine3.24`

```console
$ docker pull docker@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `docker:29.8.2-dind-rootless`

```console
$ docker pull docker@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `docker:29.8.2-windowsservercore`

```console
$ docker pull docker@sha256:fc7bbfbc9ed59f050488ddaf02ff318516e11c65bcbcb8149dd37cd0db938052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:29.8.2-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
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
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8.2-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:fc7bbfbc9ed59f050488ddaf02ff318516e11c65bcbcb8149dd37cd0db938052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:29.8.2-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
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
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8.2-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `docker:cli`

```console
$ docker pull docker@sha256:b1805116a6a86cc591b5d5f60a910a0715cdcc9d18d866ad68b1457ead25c35c
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
$ docker pull docker@sha256:b0dfb3beea69612ccf1f9cfd8f74179b9c497d6b0c9e1294664dffe9bc1c070a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66557971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdaa3f3a154c168f5ca7ac7c0d648a20efccd22630909c0d22f9bcee0027fb35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:1a5c66d47feae8ebb71062b55bffc5950eb71597bc046f1809709043849e17c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5af8147b6b869a726125fb98063c2c82f701368868a1ebe5a37f87d0c67820b`

```dockerfile
```

-	Layers:
	-	`sha256:368b67071c6d2040d898daeaac2498ad4238d8d3405dffadcb210f33ff7cc56f`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:75b7b2e40669d00e39233752a3116e33483c62cb0c084800884a7daa8f516fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62745580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f44291c4db03d6fbf1ce5749b21b91f2e7747021461c539c83262631c616721`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:8ab8edcf6b6f0d5f385db00d9e8248c56e7d9c9e1d8cb0d1cb18645c45c1670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5c2aedc00bf54d7284c69f821ef8dc5723e0791a8a4e87ec5a2b7db790005c`

```dockerfile
```

-	Layers:
	-	`sha256:566c9ede71628a1abb1aec82d81b2ce9740c2a22b34b5fd0f2555aff2316a4f0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.2 KB (38221 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:3ea47db3e5920c09124fcf9eb1fc55f0db6cb64f1726032664adb17ea024d1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61710248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4472bfee54c71fb24f2268b0c798b0c135d0fb9e2e1cdb18bcc212c5a6e05e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:17cc9bcfa886da0e208667c96d7a4456bc076d24dba6219cddefdea6add4fce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4291fef6ebb9c305b8999de869bf6bd3baf4bc5a1b3857bd2896bea67fdd6117`

```dockerfile
```

-	Layers:
	-	`sha256:67a1cb73e677c3f732c5a2ea8394ea530cebc988733dac998b42d4c8a88a592d`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cf2cb65d40085fc4049e8c9c12791d2fb2862d73eca486f91240534011a8a14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62154962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a15b0dbecfd136ac63a8f2500a6c6f12fa174f0df8d1b2be7628f45ecbc0770`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:d710b7a13bc0c46e114a5ccf633bd703a1b5a3f8ada9b2348a3846f9013f34c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3468f01894b7b33b046e315e00ecfa7eaf154511606c3015c47d6b7113b8bd`

```dockerfile
```

-	Layers:
	-	`sha256:999f70b9552803da1891a45f597af7093ecf0ee82cb9689215f8330a585d3ba0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind`

```console
$ docker pull docker@sha256:3f3c01aaaebf7cce837356b688b7c059a4749f10bd7660dec7c58fc454a283f0
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
$ docker pull docker@sha256:754ce04dd9dee9ef015680b8529fc49608efb75f30322a54780e7aab32698a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135211767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f854ec83e3eb2208ddbfe5fe7d9413d82f79a4201f3b15943381480b1b03dd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:09 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:15:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:15:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:19:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76a910ce805a1082e59aa660bc6a20c52b6d9e6551794b595a1f5b79af3a8e2`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 8.2 MB (8199399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77a41eff6a9611e931c7cdb9c2a26a592a035a87d4a40d5d8ec9a531e0127939`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35795b4c35e2b5056c7d2a7f183987cd418aa2c20639be490f433291162b3cab`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 20.2 MB (20247342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a101e4c098be7f9cbf60b932a2bb746557324749d63240e77e5d7fceb8226d18`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 23.1 MB (23055714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e75e082420c2ecb7a4711e89a2e6160c0a678832ec54169694c305d05e90b2b`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d17cde835025617a8f620e8a94921d0e470c663ddbdb27cd90b558b958fb1d`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 534.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e2b8e363b8b33f8120e3e40bb62f8bfa61b15111099495d22f05452820a364`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 1.0 KB (1004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1588276fcb5a60fb65f1e8ca22832df2948df6c7ab4b3539095230701b41e4a`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ad31e49bf43f0fab6b16e56fa59d2d089a8826b2791381f86849e653b3e47e`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.5 MB (1497468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a115afc07335c8a813be16958c56d944c89bceb8bf4fda90da1e30b357b5ee8e`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 81.1 KB (81103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc9825f6b28af188e07262da4dc91ded3cc1b64377c29549a51a1227e71bfdc`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60de84ae1990bd67b18e9534aeef1b90726fb127317e9c3a1401567caf56e966`  
		Last Modified: Thu, 17 Sep 2026 22:19:20 GMT  
		Size: 67.1 MB (67073294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b877ae131bce9bfa6e4b4131ea4be880f919f0bd55a5ebcca639275578fa5d0d`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b284bc96d09306351135b96221fc1d2ae588ac0de0cd9f7a3194774b8884580`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:37fc33464abb2e35560fa0f834a57533901d6e327db3830825155d9916c13159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afef8b4e069bfbf28c33ff34f29bb168c9ec3022ccf84d6bca1e57bf70bc6be2`

```dockerfile
```

-	Layers:
	-	`sha256:10ad9303fd7611df66e35f6a6b16dffd6917c38b7cfe160927e0fb592373d38a`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:128101d525d11afb267d05103b15d865ea58fc8c6c8008462e1ef63b1e46eda4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126800101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e618188b1c63ba046626aaeda64c5f29140aee62c03821b8f72ecbdd5d9d036e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:18:28 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:18:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:18:28 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:18:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:18:30 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:18:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:18:32 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:32 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:31:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:31:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:31:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:31:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:31:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:31:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:31:28 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7fea7d1fa594bfd86946419c426df327a93af10f8874ff00dc0957d9affcbb`  
		Last Modified: Thu, 17 Sep 2026 21:18:38 GMT  
		Size: 8.1 MB (8097931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c169b56f98efd7fc71f226a86c82fe067182d5090164a42459cdeb266d815ad`  
		Last Modified: Thu, 17 Sep 2026 21:18:37 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb33ce0c758c064327e93cd026e8b9575fe90579bbd8e3c721890c471627058`  
		Last Modified: Thu, 17 Sep 2026 21:18:38 GMT  
		Size: 18.8 MB (18793214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd1773a20342974709ebeaad3daf3450136026e8bddb2b5a9e65e42d01b43a0`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 21.7 MB (21670297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e37798d7306ecbaf687bd35fceff0b0acdbefc7e8621c8cb6ada73135c06a19`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 10.6 MB (10622790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1dc9478b67fd2baa60d95361b3ab302acdcfac4e152c423e9dfcd09849149d`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6222dfb01cab291c00729bc7de6a0af419bb0fc2beeda5dbc89c9526df30e9`  
		Last Modified: Thu, 17 Sep 2026 21:18:40 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00beb4421bbe5f61c93bf00882645a6340d0965241b0aca448610cadb8eac094`  
		Last Modified: Thu, 17 Sep 2026 21:18:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f42a348651ef775fcb9ad010a7533bca691a74f879c0541651c5622e162f57`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 1.5 MB (1498718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7239c07f07d64ebdb6cae72e42363378f0e05e91e7cb62d1888b7dc1d030119c`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 79.8 KB (79818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70fb2d9dd6d707e1dfb37cc7b68965f2b41c5df1d54bcd2655a88dbcf1ca34f0`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9e40f71785b1fdb5f8115bd0010940a625c4cdf7e9c38b470c8a509b968ca1`  
		Last Modified: Thu, 17 Sep 2026 22:31:40 GMT  
		Size: 62.5 MB (62474069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56f01e316918eb41928ca4bfd57c5835df33c35eb0c953892cb8f8b0d727e54`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4a82bbedb322db828d899502be937376ccaed2b9405e43c75a4166ebe80891`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:f3492216c26f939d17a2375f084da0fcade8ef52e536a693b65e712fe0309087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455fef6b0326d84ed3498f0e3082e39894c71d22e68c5a4ab9862996838bc066`

```dockerfile
```

-	Layers:
	-	`sha256:081ba5d089677fb905013bbec48f944f4fc010c765068672277080777ead7b20`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:c0cbf37e8ffc45da5efb24b1fad9c626f59a3168b7182165715bac0d5d5c395c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125468762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07ca65049332bee81b9ecf00f874106307a4d56099ccfae5a4969d4a5c12c79`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:18:05 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:18:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:18:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:18:09 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:18:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:18:09 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:18:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:18:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:18:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:18:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:18:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:31:33 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:31:34 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:31:34 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:31:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:31:37 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:31:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:31:37 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d34ab6e0a5d491144967c841dc13da93dbc5014c78f6496957c175c0f6e3d3`  
		Last Modified: Thu, 17 Sep 2026 21:18:19 GMT  
		Size: 7.4 MB (7394904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b4425cca1a837f87839857ae1ade75afeb135f9855d27d5b784c4ad40555d6`  
		Last Modified: Thu, 17 Sep 2026 21:18:18 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceddd15a36c0761bcd997ce0856f97e6f6532647894713659e97364dc497fa9f`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 18.8 MB (18778766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ca5ba8c9a029fc14b95c08ca288dd5cb38cb67e6cdaae69a859284cdafaa60`  
		Last Modified: Thu, 17 Sep 2026 21:18:19 GMT  
		Size: 21.7 MB (21655090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3706fa212f213ca1da458fa0d13ebb972ff719aa8f3803b59aeaebdc14350a7`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 10.6 MB (10610431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4739ac655a6750d857256c19a545037730a2f3257c7c5d0057c6c17a447a118b`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73fd5a06ebc456a6db146695f91a578d2f02f009d2ca6b0cf13e28d654d76ad`  
		Last Modified: Thu, 17 Sep 2026 21:18:21 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b694189d4f95782cd1d8a54f738f2f62e6f583d5dcae9c5502025d670b5991dc`  
		Last Modified: Thu, 17 Sep 2026 21:18:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c382b67f563cdcb6947ef308154892c5b3c71577d0cd787c770afceaff884e4`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 1.4 MB (1384307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0dff6e675e42e1f3eccd2703f068daf89061d9b3e14da76f49a07419e5286e2`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 76.2 KB (76163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abfcd89885afc312fb5395a1b64cc2158ce09e641888769a2c667b5b32e63da7`  
		Last Modified: Thu, 17 Sep 2026 22:31:48 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a1fe1bdb84fcacbb0c902a7b7e3c205aeae2f1fdedbcbddc7fe86cc2494f3a`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 62.3 MB (62295747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d478c4351c2cd9a74c4523561bcbac32be09045a3334c58aeca6c9170583077c`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6560acab00bb00c7868cab6befd861004bc0278968f37bd46b33aa0203087ce7`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:c35972130bc49f12fcf41601ea31ec06f7deff84710b3097c15c605f6b83616e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b7f80ba58cea7484285d942fb3bdbf505c21334fdb16072a70eb6b8676a78d`

```dockerfile
```

-	Layers:
	-	`sha256:b3e4cc6e90b7096357f66ae6ca5b8a378d0e36d1f0444c832689e612d587cecc`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2aece977596803b4174bb35171b63007f554867e9931fef6c3b97a10d9517226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124809281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd57194004db00f22cca8582a3ad9411297742c0ae06b457e3ee9d2542d4957`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:14:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:14:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:14:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:14:34 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:39:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:39:12 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:39:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:39:12 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ec7620a63c3a00cf72bf71b89240dabe3cb48a2776b84ab95ea8ba2e3a5f39`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.3 MB (8261584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be7c59e8fb32810b5f2a2a1a007ca3163347c2b08453fd5ad8a0db7b3fb18607`  
		Last Modified: Thu, 17 Sep 2026 21:14:40 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f235640fa4510c35c74929350640368f354db6fdb2e2c5f7526574518128307`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 18.6 MB (18635439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8ba2d022fd95025c059661ce50b0b52cac134299d848972b96b41a05b44c7b`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 20.9 MB (20882241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ca4b67ae9aa86881e5cc3f6cc90cfb8059e5683a12a43c149c0e82152423b7`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 10.2 MB (10182234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c52310338ec92b843e924c5a2ffd4ac1fc9f8414a741a7e930dacabca8c169b`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0bf0d83649b844b8a1d342b99b89b362233d1bcbdfd9a1ff4de4075c3768d7c`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76189fa74b0cb4e0a580e82162cf6d47f65b8c7e51ac8541fc68e914051621d3`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ee35a0ed9226c8c971cdf0dbe629bc2eb7a2ab4a0bff4ee7d175169464bdfb`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.7 MB (1744624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ec27d56b475fe4a7b7541f901952782aacb9a1965bf51f6906adf5ae5ec9af`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 90.4 KB (90412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29a6714f1fc1dea37cb96aca1d8ecc1ff71d343beeee58aa598bbf00fbb9ba4`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe769cd4bf23bed3d810a6b5d091cb2e4ab4c0ea8aff70a6ace73e452e5b8b0`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 60.8 MB (60816931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b730fb53e7b83f5b8e0dffe1c0d15ddd79cad046d40b3779fca1ff881da5ead`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65c124a7b8ed0436786d54d010aed0610fa50b3f2c30216577e2507c80b0347`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:cf739e8e3d974e1b45c2660504585f8ca376976f59183d660027b42f93ad734f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25082756198b47be2d90c9c3ca6326db2e13eff6f9b3dfaf559fe2176904f2dd`

```dockerfile
```

-	Layers:
	-	`sha256:1a97bbfffa13183de0b0147093756cc24356b0a23a5c44b7c10eb7e2ca001931`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind-rootless`

```console
$ docker pull docker@sha256:1f029db43a32fbb1465fe8ff4327d405154876946986170e97d7861232a8227a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:575e55254404cf956069d061d265f1109c60f725822f0629b61ccf7029de2728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.0 MB (150961217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7c99e3fb47fc03bbd9c42ce5ce3d65ee88f896c536b79af2cfc136d4419a6cb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:09 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:15:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:15:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:19:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD []
# Thu, 17 Sep 2026 23:16:36 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 17 Sep 2026 23:16:36 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 17 Sep 2026 23:16:36 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 23:16:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 17 Sep 2026 23:16:37 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 17 Sep 2026 23:16:37 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 17 Sep 2026 23:16:37 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76a910ce805a1082e59aa660bc6a20c52b6d9e6551794b595a1f5b79af3a8e2`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 8.2 MB (8199399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77a41eff6a9611e931c7cdb9c2a26a592a035a87d4a40d5d8ec9a531e0127939`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35795b4c35e2b5056c7d2a7f183987cd418aa2c20639be490f433291162b3cab`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 20.2 MB (20247342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a101e4c098be7f9cbf60b932a2bb746557324749d63240e77e5d7fceb8226d18`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 23.1 MB (23055714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e75e082420c2ecb7a4711e89a2e6160c0a678832ec54169694c305d05e90b2b`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d17cde835025617a8f620e8a94921d0e470c663ddbdb27cd90b558b958fb1d`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 534.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e2b8e363b8b33f8120e3e40bb62f8bfa61b15111099495d22f05452820a364`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 1.0 KB (1004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1588276fcb5a60fb65f1e8ca22832df2948df6c7ab4b3539095230701b41e4a`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ad31e49bf43f0fab6b16e56fa59d2d089a8826b2791381f86849e653b3e47e`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.5 MB (1497468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a115afc07335c8a813be16958c56d944c89bceb8bf4fda90da1e30b357b5ee8e`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 81.1 KB (81103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc9825f6b28af188e07262da4dc91ded3cc1b64377c29549a51a1227e71bfdc`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60de84ae1990bd67b18e9534aeef1b90726fb127317e9c3a1401567caf56e966`  
		Last Modified: Thu, 17 Sep 2026 22:19:20 GMT  
		Size: 67.1 MB (67073294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b877ae131bce9bfa6e4b4131ea4be880f919f0bd55a5ebcca639275578fa5d0d`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b284bc96d09306351135b96221fc1d2ae588ac0de0cd9f7a3194774b8884580`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4d76c5d72c3ffb6fc854a0a9bc95a8471480344260292069b5e01923017532`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 3.6 MB (3626039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6946ff996478f35382faaf63528e870e04a6afe6126b150757c75aa60b65b344`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a3a3b6e2ee00f98b93dd4644e4861a65a69419698f20d0c5346aeeb27debb7`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335a4dd1111fc593fd499b25510a9e3d01e46e1fe531c3d4c248b8db9b0e5645`  
		Last Modified: Thu, 17 Sep 2026 23:16:43 GMT  
		Size: 12.1 MB (12122072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6b86fc25681616d4c75dfc29d14c154128bd058b3c0bd72c9b1e93d5b87e43`  
		Last Modified: Thu, 17 Sep 2026 23:16:44 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:326881a7829949b98cac70ebe04b7af96aacf9bc20f958dc89b8bdbcfb0fb8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74f88219e669fa524e0e3e7cc1e20cbd83e1d3f793b39851cbe7a6cd54c14f1`

```dockerfile
```

-	Layers:
	-	`sha256:39a24f6d692257089159d3188623605be503d57fa6fc0ea2b63d500747b01974`  
		Last Modified: Thu, 17 Sep 2026 23:16:42 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:43a36b54b841d559a54f10ec01696598eec9213822938918fceec873f57baab3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139672374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:683f355c99adaec3f4c1bd95bcfd6f8a3520d44c5724d5c089059a34633deb62`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:14:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:14:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:14:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:14:34 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:39:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:39:12 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:39:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:39:12 GMT
CMD []
# Thu, 17 Sep 2026 23:15:12 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 17 Sep 2026 23:15:12 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 17 Sep 2026 23:15:12 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 23:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 17 Sep 2026 23:15:13 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 17 Sep 2026 23:15:13 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 17 Sep 2026 23:15:13 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ec7620a63c3a00cf72bf71b89240dabe3cb48a2776b84ab95ea8ba2e3a5f39`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.3 MB (8261584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be7c59e8fb32810b5f2a2a1a007ca3163347c2b08453fd5ad8a0db7b3fb18607`  
		Last Modified: Thu, 17 Sep 2026 21:14:40 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f235640fa4510c35c74929350640368f354db6fdb2e2c5f7526574518128307`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 18.6 MB (18635439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8ba2d022fd95025c059661ce50b0b52cac134299d848972b96b41a05b44c7b`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 20.9 MB (20882241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ca4b67ae9aa86881e5cc3f6cc90cfb8059e5683a12a43c149c0e82152423b7`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 10.2 MB (10182234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c52310338ec92b843e924c5a2ffd4ac1fc9f8414a741a7e930dacabca8c169b`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0bf0d83649b844b8a1d342b99b89b362233d1bcbdfd9a1ff4de4075c3768d7c`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76189fa74b0cb4e0a580e82162cf6d47f65b8c7e51ac8541fc68e914051621d3`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ee35a0ed9226c8c971cdf0dbe629bc2eb7a2ab4a0bff4ee7d175169464bdfb`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.7 MB (1744624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ec27d56b475fe4a7b7541f901952782aacb9a1965bf51f6906adf5ae5ec9af`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 90.4 KB (90412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29a6714f1fc1dea37cb96aca1d8ecc1ff71d343beeee58aa598bbf00fbb9ba4`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe769cd4bf23bed3d810a6b5d091cb2e4ab4c0ea8aff70a6ace73e452e5b8b0`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 60.8 MB (60816931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b730fb53e7b83f5b8e0dffe1c0d15ddd79cad046d40b3779fca1ff881da5ead`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65c124a7b8ed0436786d54d010aed0610fa50b3f2c30216577e2507c80b0347`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a33d6fe7e6d8758dbe76ae538168682ef1b03b6f05dd80d91dc724e666aa4b`  
		Last Modified: Thu, 17 Sep 2026 23:15:18 GMT  
		Size: 3.6 MB (3611094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62021cb0021111f6254af73eaf90d7975a27f4e28844843ca1e76f4229459f34`  
		Last Modified: Thu, 17 Sep 2026 23:15:17 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1952a79283c5b634ae25bfc9dbd13046d2947a143aac3845d86b761e83e5a61f`  
		Last Modified: Thu, 17 Sep 2026 23:15:17 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439326ac83ca684b4f6221a6fd84a2c5ce8a125e7ffe43fc8b98386be368170e`  
		Last Modified: Thu, 17 Sep 2026 23:15:18 GMT  
		Size: 11.3 MB (11250658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a77324a073000ffb80ba2a2db698bfc6f6ec358097bcbc234e22ae9dbf57493`  
		Last Modified: Thu, 17 Sep 2026 23:15:19 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:d46e0ea882bc4a9a5d7d97314255b9f128c6f7a796d40423ee86ad5e6a86ad7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825afe93221302c05637f62d2f19a6635c550541b40f27bcd123cffe9068e297`

```dockerfile
```

-	Layers:
	-	`sha256:17c1c5d2418038db83bc3716ad5218b28ef0de8b4e64bac84fa5b8dc48bc9a30`  
		Last Modified: Thu, 17 Sep 2026 23:15:17 GMT  
		Size: 30.7 KB (30656 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:latest`

```console
$ docker pull docker@sha256:3f3c01aaaebf7cce837356b688b7c059a4749f10bd7660dec7c58fc454a283f0
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
$ docker pull docker@sha256:754ce04dd9dee9ef015680b8529fc49608efb75f30322a54780e7aab32698a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135211767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f854ec83e3eb2208ddbfe5fe7d9413d82f79a4201f3b15943381480b1b03dd`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:15:09 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:15:10 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:15:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:15:12 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:15:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:15:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:15:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:15:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:19:03 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:19:04 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:19:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:19:07 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:19:07 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:19:07 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:19:07 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76a910ce805a1082e59aa660bc6a20c52b6d9e6551794b595a1f5b79af3a8e2`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 8.2 MB (8199399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77a41eff6a9611e931c7cdb9c2a26a592a035a87d4a40d5d8ec9a531e0127939`  
		Last Modified: Thu, 17 Sep 2026 21:15:19 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35795b4c35e2b5056c7d2a7f183987cd418aa2c20639be490f433291162b3cab`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 20.2 MB (20247342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a101e4c098be7f9cbf60b932a2bb746557324749d63240e77e5d7fceb8226d18`  
		Last Modified: Thu, 17 Sep 2026 21:15:20 GMT  
		Size: 23.1 MB (23055714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e75e082420c2ecb7a4711e89a2e6160c0a678832ec54169694c305d05e90b2b`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d17cde835025617a8f620e8a94921d0e470c663ddbdb27cd90b558b958fb1d`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 534.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e2b8e363b8b33f8120e3e40bb62f8bfa61b15111099495d22f05452820a364`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 1.0 KB (1004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1588276fcb5a60fb65f1e8ca22832df2948df6c7ab4b3539095230701b41e4a`  
		Last Modified: Thu, 17 Sep 2026 21:15:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ad31e49bf43f0fab6b16e56fa59d2d089a8826b2791381f86849e653b3e47e`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.5 MB (1497468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a115afc07335c8a813be16958c56d944c89bceb8bf4fda90da1e30b357b5ee8e`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 81.1 KB (81103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc9825f6b28af188e07262da4dc91ded3cc1b64377c29549a51a1227e71bfdc`  
		Last Modified: Thu, 17 Sep 2026 22:19:18 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60de84ae1990bd67b18e9534aeef1b90726fb127317e9c3a1401567caf56e966`  
		Last Modified: Thu, 17 Sep 2026 22:19:20 GMT  
		Size: 67.1 MB (67073294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b877ae131bce9bfa6e4b4131ea4be880f919f0bd55a5ebcca639275578fa5d0d`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b284bc96d09306351135b96221fc1d2ae588ac0de0cd9f7a3194774b8884580`  
		Last Modified: Thu, 17 Sep 2026 22:19:19 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:37fc33464abb2e35560fa0f834a57533901d6e327db3830825155d9916c13159
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afef8b4e069bfbf28c33ff34f29bb168c9ec3022ccf84d6bca1e57bf70bc6be2`

```dockerfile
```

-	Layers:
	-	`sha256:10ad9303fd7611df66e35f6a6b16dffd6917c38b7cfe160927e0fb592373d38a`  
		Last Modified: Thu, 17 Sep 2026 22:19:17 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:128101d525d11afb267d05103b15d865ea58fc8c6c8008462e1ef63b1e46eda4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126800101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e618188b1c63ba046626aaeda64c5f29140aee62c03821b8f72ecbdd5d9d036e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:18:24 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:18:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:18:28 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:18:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:18:28 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:18:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:18:30 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:18:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:18:32 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:18:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:32 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:31:23 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:31:24 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:31:24 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:31:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:31:28 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:31:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:31:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:31:28 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7fea7d1fa594bfd86946419c426df327a93af10f8874ff00dc0957d9affcbb`  
		Last Modified: Thu, 17 Sep 2026 21:18:38 GMT  
		Size: 8.1 MB (8097931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c169b56f98efd7fc71f226a86c82fe067182d5090164a42459cdeb266d815ad`  
		Last Modified: Thu, 17 Sep 2026 21:18:37 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb33ce0c758c064327e93cd026e8b9575fe90579bbd8e3c721890c471627058`  
		Last Modified: Thu, 17 Sep 2026 21:18:38 GMT  
		Size: 18.8 MB (18793214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd1773a20342974709ebeaad3daf3450136026e8bddb2b5a9e65e42d01b43a0`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 21.7 MB (21670297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e37798d7306ecbaf687bd35fceff0b0acdbefc7e8621c8cb6ada73135c06a19`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 10.6 MB (10622790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1dc9478b67fd2baa60d95361b3ab302acdcfac4e152c423e9dfcd09849149d`  
		Last Modified: Thu, 17 Sep 2026 21:18:39 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6222dfb01cab291c00729bc7de6a0af419bb0fc2beeda5dbc89c9526df30e9`  
		Last Modified: Thu, 17 Sep 2026 21:18:40 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00beb4421bbe5f61c93bf00882645a6340d0965241b0aca448610cadb8eac094`  
		Last Modified: Thu, 17 Sep 2026 21:18:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f42a348651ef775fcb9ad010a7533bca691a74f879c0541651c5622e162f57`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 1.5 MB (1498718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7239c07f07d64ebdb6cae72e42363378f0e05e91e7cb62d1888b7dc1d030119c`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 79.8 KB (79818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70fb2d9dd6d707e1dfb37cc7b68965f2b41c5df1d54bcd2655a88dbcf1ca34f0`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9e40f71785b1fdb5f8115bd0010940a625c4cdf7e9c38b470c8a509b968ca1`  
		Last Modified: Thu, 17 Sep 2026 22:31:40 GMT  
		Size: 62.5 MB (62474069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f56f01e316918eb41928ca4bfd57c5835df33c35eb0c953892cb8f8b0d727e54`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4a82bbedb322db828d899502be937376ccaed2b9405e43c75a4166ebe80891`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:f3492216c26f939d17a2375f084da0fcade8ef52e536a693b65e712fe0309087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455fef6b0326d84ed3498f0e3082e39894c71d22e68c5a4ab9862996838bc066`

```dockerfile
```

-	Layers:
	-	`sha256:081ba5d089677fb905013bbec48f944f4fc010c765068672277080777ead7b20`  
		Last Modified: Thu, 17 Sep 2026 22:31:38 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:c0cbf37e8ffc45da5efb24b1fad9c626f59a3168b7182165715bac0d5d5c395c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.5 MB (125468762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07ca65049332bee81b9ecf00f874106307a4d56099ccfae5a4969d4a5c12c79`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:18:05 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:18:06 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:18:06 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:18:09 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:18:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:18:09 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:18:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:18:11 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:18:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:18:12 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:18:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:18:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:18:13 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:31:33 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:31:34 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:31:34 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:31:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:31:37 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:31:37 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:31:37 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:31:37 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d34ab6e0a5d491144967c841dc13da93dbc5014c78f6496957c175c0f6e3d3`  
		Last Modified: Thu, 17 Sep 2026 21:18:19 GMT  
		Size: 7.4 MB (7394904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b4425cca1a837f87839857ae1ade75afeb135f9855d27d5b784c4ad40555d6`  
		Last Modified: Thu, 17 Sep 2026 21:18:18 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceddd15a36c0761bcd997ce0856f97e6f6532647894713659e97364dc497fa9f`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 18.8 MB (18778766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ca5ba8c9a029fc14b95c08ca288dd5cb38cb67e6cdaae69a859284cdafaa60`  
		Last Modified: Thu, 17 Sep 2026 21:18:19 GMT  
		Size: 21.7 MB (21655090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3706fa212f213ca1da458fa0d13ebb972ff719aa8f3803b59aeaebdc14350a7`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 10.6 MB (10610431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4739ac655a6750d857256c19a545037730a2f3257c7c5d0057c6c17a447a118b`  
		Last Modified: Thu, 17 Sep 2026 21:18:20 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73fd5a06ebc456a6db146695f91a578d2f02f009d2ca6b0cf13e28d654d76ad`  
		Last Modified: Thu, 17 Sep 2026 21:18:21 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b694189d4f95782cd1d8a54f738f2f62e6f583d5dcae9c5502025d670b5991dc`  
		Last Modified: Thu, 17 Sep 2026 21:18:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c382b67f563cdcb6947ef308154892c5b3c71577d0cd787c770afceaff884e4`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 1.4 MB (1384307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0dff6e675e42e1f3eccd2703f068daf89061d9b3e14da76f49a07419e5286e2`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 76.2 KB (76163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abfcd89885afc312fb5395a1b64cc2158ce09e641888769a2c667b5b32e63da7`  
		Last Modified: Thu, 17 Sep 2026 22:31:48 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a1fe1bdb84fcacbb0c902a7b7e3c205aeae2f1fdedbcbddc7fe86cc2494f3a`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 62.3 MB (62295747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d478c4351c2cd9a74c4523561bcbac32be09045a3334c58aeca6c9170583077c`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6560acab00bb00c7868cab6befd861004bc0278968f37bd46b33aa0203087ce7`  
		Last Modified: Thu, 17 Sep 2026 22:31:49 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:c35972130bc49f12fcf41601ea31ec06f7deff84710b3097c15c605f6b83616e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b7f80ba58cea7484285d942fb3bdbf505c21334fdb16072a70eb6b8676a78d`

```dockerfile
```

-	Layers:
	-	`sha256:b3e4cc6e90b7096357f66ae6ca5b8a378d0e36d1f0444c832689e612d587cecc`  
		Last Modified: Thu, 17 Sep 2026 22:31:47 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2aece977596803b4174bb35171b63007f554867e9931fef6c3b97a10d9517226
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.8 MB (124809281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd57194004db00f22cca8582a3ad9411297742c0ae06b457e3ee9d2542d4957`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:14:30 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Thu, 17 Sep 2026 21:14:30 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_VERSION=29.8.1
# Thu, 17 Sep 2026 21:14:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Thu, 17 Sep 2026 21:14:33 GMT
ENV DOCKER_BUILDX_VERSION=0.37.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-amd64'; 			sha256='9447199cdb435f25880548343c128a4b6650e8891ee598905d8d29d39a8e359b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v6'; 			sha256='3264d18a218bdc7107477f69dec6a303cbdf4a3454f402c60a14084b89ce3251'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm-v7'; 			sha256='9ce373553b2ea4ef6bc8e5b33e7586d14c2d8d91539d3b96ac47ad0967a73843'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-arm64'; 			sha256='e5cc9fe3bbff5cbc91230981f7860e06076110730a2db997082652199042a1f2'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-ppc64le'; 			sha256='bd6bb13228a012d34d259c04de1a38c4f5c76485d9a2d15397794cde2634c3fe'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-riscv64'; 			sha256='d23f968ff6dc1964ab172de280bd0de24c12f0f8131af76f69104d2f6de19cbd'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.1/buildx-v0.37.1.linux-s390x'; 			sha256='7659b0d977e4a4376e360ea25d1dc626a3af7b34695bb272ec49b056bd303548'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Thu, 17 Sep 2026 21:14:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Thu, 17 Sep 2026 21:14:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Thu, 17 Sep 2026 21:14:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:14:34 GMT
CMD ["sh"]
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 17 Sep 2026 22:39:08 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 17 Sep 2026 22:39:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 22:39:12 GMT
VOLUME [/var/lib/docker]
# Thu, 17 Sep 2026 22:39:12 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 17 Sep 2026 22:39:12 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 17 Sep 2026 22:39:12 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ec7620a63c3a00cf72bf71b89240dabe3cb48a2776b84ab95ea8ba2e3a5f39`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 8.3 MB (8261584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be7c59e8fb32810b5f2a2a1a007ca3163347c2b08453fd5ad8a0db7b3fb18607`  
		Last Modified: Thu, 17 Sep 2026 21:14:40 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f235640fa4510c35c74929350640368f354db6fdb2e2c5f7526574518128307`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 18.6 MB (18635439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8ba2d022fd95025c059661ce50b0b52cac134299d848972b96b41a05b44c7b`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 20.9 MB (20882241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ca4b67ae9aa86881e5cc3f6cc90cfb8059e5683a12a43c149c0e82152423b7`  
		Last Modified: Thu, 17 Sep 2026 21:14:41 GMT  
		Size: 10.2 MB (10182234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c52310338ec92b843e924c5a2ffd4ac1fc9f8414a741a7e930dacabca8c169b`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0bf0d83649b844b8a1d342b99b89b362233d1bcbdfd9a1ff4de4075c3768d7c`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76189fa74b0cb4e0a580e82162cf6d47f65b8c7e51ac8541fc68e914051621d3`  
		Last Modified: Thu, 17 Sep 2026 21:14:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ee35a0ed9226c8c971cdf0dbe629bc2eb7a2ab4a0bff4ee7d175169464bdfb`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.7 MB (1744624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ec27d56b475fe4a7b7541f901952782aacb9a1965bf51f6906adf5ae5ec9af`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 90.4 KB (90412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29a6714f1fc1dea37cb96aca1d8ecc1ff71d343beeee58aa598bbf00fbb9ba4`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe769cd4bf23bed3d810a6b5d091cb2e4ab4c0ea8aff70a6ace73e452e5b8b0`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 60.8 MB (60816931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b730fb53e7b83f5b8e0dffe1c0d15ddd79cad046d40b3779fca1ff881da5ead`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65c124a7b8ed0436786d54d010aed0610fa50b3f2c30216577e2507c80b0347`  
		Last Modified: Thu, 17 Sep 2026 22:39:22 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:cf739e8e3d974e1b45c2660504585f8ca376976f59183d660027b42f93ad734f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25082756198b47be2d90c9c3ca6326db2e13eff6f9b3dfaf559fe2176904f2dd`

```dockerfile
```

-	Layers:
	-	`sha256:1a97bbfffa13183de0b0147093756cc24356b0a23a5c44b7c10eb7e2ca001931`  
		Last Modified: Thu, 17 Sep 2026 22:39:21 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:windowsservercore`

```console
$ docker pull docker@sha256:fc7bbfbc9ed59f050488ddaf02ff318516e11c65bcbcb8149dd37cd0db938052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
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
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:fc7bbfbc9ed59f050488ddaf02ff318516e11c65bcbcb8149dd37cd0db938052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
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
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
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
