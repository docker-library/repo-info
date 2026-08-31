## `docker:rc-dind-rootless`

```console
$ docker pull docker@sha256:2c22b56dc47f3b4070a8e21ab6f5629b3e960b4a9ffc8ea0bce831ff51a1e205
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:rc-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:1240011a283c4bbceb73348e17e7436e08eb7e4aeb02c646432fe92ca2fcaa46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.9 MB (155918265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25874262828889b838792bdfa6f7aaf5004b7a5584c9785b4b0ea42725a025ca`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 29 Jul 2026 18:00:32 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 29 Jul 2026 18:00:32 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 29 Jul 2026 18:00:32 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 29 Jul 2026 18:00:35 GMT
ENV DOCKER_VERSION=29.7.0-rc.1
# Wed, 29 Jul 2026 18:00:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.7.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.7.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.7.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.7.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 29 Jul 2026 18:00:35 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 29 Jul 2026 18:00:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 29 Jul 2026 18:00:36 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Wed, 29 Jul 2026 18:00:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 29 Jul 2026 18:00:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 29 Jul 2026 18:00:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:00:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 29 Jul 2026 18:00:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 29 Jul 2026 18:00:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:00:36 GMT
CMD ["sh"]
# Wed, 29 Jul 2026 18:10:05 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Wed, 29 Jul 2026 18:10:06 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 29 Jul 2026 18:10:06 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 29 Jul 2026 18:10:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.7.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.7.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.7.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.7.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 29 Jul 2026 18:10:09 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 29 Jul 2026 18:10:09 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 29 Jul 2026 18:10:09 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:10:09 GMT
VOLUME [/var/lib/docker]
# Wed, 29 Jul 2026 18:10:09 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 29 Jul 2026 18:10:09 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 29 Jul 2026 18:10:09 GMT
CMD []
# Wed, 29 Jul 2026 18:24:26 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 29 Jul 2026 18:24:27 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 29 Jul 2026 18:24:27 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 29 Jul 2026 18:24:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-rootless-extras-29.7.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-rootless-extras-29.7.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 29 Jul 2026 18:24:28 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 29 Jul 2026 18:24:28 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 29 Jul 2026 18:24:28 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b51a4991f2e427abb03dba6cde11e5f102aab340b04d3e41a620efc944ffcad`  
		Last Modified: Wed, 29 Jul 2026 18:00:43 GMT  
		Size: 8.2 MB (8183795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2997d2e0fa132760df76aaee53149805fc4faecfe794e54aca6605d67ad8df31`  
		Last Modified: Wed, 29 Jul 2026 18:00:43 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85147759ef6e70b740496d8c432f1897334757828d5bfbd8357b3aa9bc1cd958`  
		Last Modified: Wed, 29 Jul 2026 18:00:44 GMT  
		Size: 19.5 MB (19534571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b79aa3c130ab26ce313738d01de1ac5521e5cfa60de673f6ff13f5a95f0b2e`  
		Last Modified: Wed, 29 Jul 2026 18:00:43 GMT  
		Size: 23.0 MB (23036803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12a12f316927770fd6e14dce9b2dd7986dbe5a426b88da8cc003a5a805ec40b`  
		Last Modified: Wed, 29 Jul 2026 18:00:44 GMT  
		Size: 11.3 MB (11322405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c29510cce8859b81eb229355eda5d3420c05aaf104013be01ececee227bfac`  
		Last Modified: Wed, 29 Jul 2026 18:00:45 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04d7070f0ab0ba989a895a14e0a06c46a62c67f39b90ab51042eeda717011a75`  
		Last Modified: Wed, 29 Jul 2026 18:00:45 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10ccb456313b54137cfbd1da50bee7c97e54e89eb1f322207a4ce46f09b2064`  
		Last Modified: Wed, 29 Jul 2026 18:00:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c43b2a5299aaf293dc4b913334f76557e6ea0391734c3a93eb44375696de81`  
		Last Modified: Wed, 29 Jul 2026 18:10:20 GMT  
		Size: 7.0 MB (6965223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365c432ea82d9e7336f043004b4b0228d6e0fa26e8d04a100d9848a0ceb69092`  
		Last Modified: Wed, 29 Jul 2026 18:10:19 GMT  
		Size: 91.3 KB (91327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e6c98edd4dc94f9e5fd19e92fe8157275cbd59972d1f69356a72e9dd8f926a6`  
		Last Modified: Wed, 29 Jul 2026 18:10:19 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec090433eb8a196bdc217281d782e9a10bc2d68b35f9b8ae0cb130d7f1b2364e`  
		Last Modified: Wed, 29 Jul 2026 18:10:22 GMT  
		Size: 67.3 MB (67349946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826bfd05a5dcf7b89785d737c60234c67c65a676e48c2c4797ddae3e322a41b9`  
		Last Modified: Wed, 29 Jul 2026 18:10:21 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a9c553e7f77af965271b20ab5c67a451697ab6be8c72298dd4c61a42e86856`  
		Last Modified: Wed, 29 Jul 2026 18:10:21 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af4733aa566152e23ce518e1b6d5873e75ef008b5d51f62ad0fbf0efc1227a0`  
		Last Modified: Wed, 29 Jul 2026 18:24:34 GMT  
		Size: 3.5 MB (3471279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e248fb33482872684e76d1d9a66dcf6008ebd8c5c4c6b7e17cc33c2eb931fd`  
		Last Modified: Wed, 29 Jul 2026 18:24:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3b6d31a2863ece07e8ea60d61680ace8417c75a714e8d170b291333e5295da`  
		Last Modified: Wed, 29 Jul 2026 18:24:34 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bca75ef3b3204182415f030afc5c59e886a3c881c8a8fd08e48de3c4fcd9f8e`  
		Last Modified: Wed, 29 Jul 2026 18:24:34 GMT  
		Size: 12.1 MB (12107033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4322f4ff9079bc10b1ce501f871f87f25f66c5b577fd6b24d8762e8f680d147a`  
		Last Modified: Wed, 29 Jul 2026 18:24:35 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:caba2ae6a28b1fd3cc117e3f31c8b9a6b97bcff34c88e9541fbf28f9f8436a6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 KB (30245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad24869b21c5bde17ff48e548eca950bf37de23c4cbe1003fa4d3b35f4e5fedf`

```dockerfile
```

-	Layers:
	-	`sha256:8fdf93694bc658fae0a0ff761fd3cbc90198f0cdad6f5326592d76e3c7749939`  
		Last Modified: Wed, 29 Jul 2026 18:24:33 GMT  
		Size: 30.2 KB (30245 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:24aba4688225e35f668b81d857fa13117b65ef4a53108cbf492f38aec4e7d817
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.6 MB (144615586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0b115f48eb96a4806d0164393b059fd3d9b431955beca7ec8cc5e0bce85cb4`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Wed, 29 Jul 2026 17:59:18 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 29 Jul 2026 17:59:18 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 29 Jul 2026 17:59:18 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 29 Jul 2026 17:59:20 GMT
ENV DOCKER_VERSION=29.7.0-rc.1
# Wed, 29 Jul 2026 17:59:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.7.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.7.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.7.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.7.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 29 Jul 2026 17:59:20 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Wed, 29 Jul 2026 17:59:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 29 Jul 2026 17:59:21 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Wed, 29 Jul 2026 17:59:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 29 Jul 2026 17:59:22 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 29 Jul 2026 17:59:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 17:59:22 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 29 Jul 2026 17:59:22 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 29 Jul 2026 17:59:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 29 Jul 2026 17:59:22 GMT
CMD ["sh"]
# Wed, 29 Jul 2026 18:09:12 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Wed, 29 Jul 2026 18:09:12 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 29 Jul 2026 18:09:12 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 29 Jul 2026 18:09:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.7.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.7.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.7.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.7.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 29 Jul 2026 18:09:15 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 29 Jul 2026 18:09:15 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 29 Jul 2026 18:09:15 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 29 Jul 2026 18:09:15 GMT
VOLUME [/var/lib/docker]
# Wed, 29 Jul 2026 18:09:15 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 29 Jul 2026 18:09:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 29 Jul 2026 18:09:15 GMT
CMD []
# Wed, 29 Jul 2026 18:24:08 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 29 Jul 2026 18:24:08 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 29 Jul 2026 18:24:08 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 29 Jul 2026 18:24:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-rootless-extras-29.7.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-rootless-extras-29.7.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 29 Jul 2026 18:24:10 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 29 Jul 2026 18:24:10 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 29 Jul 2026 18:24:10 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3fa9be435c0c8c15f04ea552eae181dd87ea4db66329f8177ae2a0bb581cb3e`  
		Last Modified: Wed, 29 Jul 2026 17:59:28 GMT  
		Size: 8.2 MB (8235028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74b813e8bf8fe0cee507bf5eff0119da21f403673acbeab3e960482699a02a5`  
		Last Modified: Wed, 29 Jul 2026 17:59:28 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c4ad829c8933c892135584cc400bd5c5da3570e66650ba05f41142d7412f0a`  
		Last Modified: Wed, 29 Jul 2026 17:59:29 GMT  
		Size: 18.0 MB (17973379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9593ca5f87274c0fb1d9dee0a150235e5571ee925de991f1cbe9bad112554f6c`  
		Last Modified: Wed, 29 Jul 2026 17:59:29 GMT  
		Size: 20.9 MB (20856357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78ab3bde16e7e8202c220650b57b145c35b0b9014eb06d5559c5a08f860b315a`  
		Last Modified: Wed, 29 Jul 2026 17:59:29 GMT  
		Size: 10.3 MB (10290364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6043b596721489bd7193acc49ccf61a538f92ef5325a230476327710e108d65a`  
		Last Modified: Wed, 29 Jul 2026 17:59:30 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29125f2d3f1bc393d662f323dc4a28f06d17d1df0867be9a6a7530ffafbc1ec`  
		Last Modified: Wed, 29 Jul 2026 17:59:30 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017440ea07581d14a0e84acbd9749758adf4a61cff214a12931f5f441073471b`  
		Last Modified: Wed, 29 Jul 2026 17:59:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb098de538cfb83980ff2cf838b61c29d0ee0cbbe42a1fac0b0dfd18ee0b834`  
		Last Modified: Wed, 29 Jul 2026 18:09:25 GMT  
		Size: 7.2 MB (7240447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00434af980741713c9a2e4baf7800f36446f2afdedb65eac9f2e316633251ab`  
		Last Modified: Wed, 29 Jul 2026 18:09:24 GMT  
		Size: 99.9 KB (99943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c88ad26b15855990a1991fd5850d7054b8089693ebc64c12c574b83d396beb`  
		Last Modified: Wed, 29 Jul 2026 18:09:24 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a828466d5d8d686f09aa82a38615e64dd7c0aa939c5afef39d50d88ab2101fc9`  
		Last Modified: Wed, 29 Jul 2026 18:09:26 GMT  
		Size: 61.0 MB (61038552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e064236d4fc136db12b1784e6ce029c3bf62b03a5200614df9d435105fc0807`  
		Last Modified: Wed, 29 Jul 2026 18:09:25 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82265507c56413c597430d9b65e32cb42b625b3e02132f4064214fa9f93ed8b4`  
		Last Modified: Wed, 29 Jul 2026 18:09:25 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf647ae05be0a8751c5b38a8517438ff3cd5cb10c811b50aeaa38d65185dc0ca`  
		Last Modified: Wed, 29 Jul 2026 18:24:15 GMT  
		Size: 3.4 MB (3448900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:326f2c6a78171b716396a0d9d49b910ce2461fb1293a4af827d8682c960602c4`  
		Last Modified: Wed, 29 Jul 2026 18:24:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5eae342bd38d4671ecda6dbba8c65f9f518be454310b60a44ee79405b765203`  
		Last Modified: Wed, 29 Jul 2026 18:24:15 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcae307ed55a3c34e374708c0812a071809d1dafa68f02c10a490620dfbe4998`  
		Last Modified: Wed, 29 Jul 2026 18:24:15 GMT  
		Size: 11.2 MB (11240086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17638ab45c95d71e831c2ea99fa8a2b253edfc354bf3de20c675baf83480871c`  
		Last Modified: Wed, 29 Jul 2026 18:24:16 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:ef033dcddfef23ccc510e16846ae07ff0d35e02c207d2f23e274c9e217f09365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 KB (30397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475b5e75eee4624bf259299043cf90081aaf24db4c52241cd3a2a6f38adde64f`

```dockerfile
```

-	Layers:
	-	`sha256:3957eed06a621895ec62329c6698b1385e3b1e93333cceb08f518d7b3f9e0482`  
		Last Modified: Wed, 29 Jul 2026 18:24:14 GMT  
		Size: 30.4 KB (30397 bytes)  
		MIME: application/vnd.in-toto+json
