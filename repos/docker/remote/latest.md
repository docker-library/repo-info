## `docker:latest`

```console
$ docker pull docker@sha256:bfec1f5159c63a81ca6fdedbd81404d2c0e16378ed0feec3bb3fbf3998847659
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
$ docker pull docker@sha256:8d335fc12e365d1fbfab43a20140162cff4a5ff544bb951104e079137300e593
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142057274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b5055b239a016331941b7810d184b273ed564cb917b8388e369fb7a592523a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 17 Jul 2026 17:44:24 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 17 Jul 2026 17:44:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 17 Jul 2026 17:44:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 17 Jul 2026 17:44:27 GMT
ENV DOCKER_VERSION=29.6.2
# Fri, 17 Jul 2026 17:44:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 17 Jul 2026 17:44:27 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 17 Jul 2026 17:44:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 17 Jul 2026 17:44:28 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 17 Jul 2026 17:44:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 17 Jul 2026 17:44:29 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 17 Jul 2026 17:44:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 17:44:29 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 17 Jul 2026 17:44:29 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 17 Jul 2026 17:44:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Jul 2026 17:44:29 GMT
CMD ["sh"]
# Fri, 17 Jul 2026 18:10:04 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 17 Jul 2026 18:10:05 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 17 Jul 2026 18:10:05 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 17 Jul 2026 18:10:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 17 Jul 2026 18:10:08 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 17 Jul 2026 18:10:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 17 Jul 2026 18:10:08 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 18:10:08 GMT
VOLUME [/var/lib/docker]
# Fri, 17 Jul 2026 18:10:08 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 17 Jul 2026 18:10:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 17 Jul 2026 18:10:08 GMT
CMD []
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4bca40d1621177e42666ab887d0f6ca345c995e355a428da7ac0ce2e8571e7e`  
		Last Modified: Fri, 17 Jul 2026 17:44:35 GMT  
		Size: 8.2 MB (8183895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72ed991c3407734090991a34aabead0489cf46636644e343b20e319235c22054`  
		Last Modified: Fri, 17 Jul 2026 17:44:33 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cf85cd457408bc0aea50da42888ebe34693d1dec9b72ad2fb07426a1db0c8c`  
		Last Modified: Fri, 17 Jul 2026 17:44:36 GMT  
		Size: 19.4 MB (19439839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0e863cd1174c61488640f554d09a352dd5eb14bb615b05ab1367c85962a5e0`  
		Last Modified: Fri, 17 Jul 2026 17:44:36 GMT  
		Size: 23.0 MB (23036803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f652b3a9b954fbeac7281affd2ff0b6166f8206b30706ff13ce4190cb1d4bc00`  
		Last Modified: Fri, 17 Jul 2026 17:44:36 GMT  
		Size: 11.3 MB (11322404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a981d3a51fca9a43aa365309a5a2fb458eb827ba0d05150aebdefff9659c990a`  
		Last Modified: Fri, 17 Jul 2026 17:44:36 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a1935ee7eb6d33d4327bf1e5d6f3b1732c08bed5a2f53c4bdb6ac5206111045`  
		Last Modified: Fri, 17 Jul 2026 17:44:37 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb1fafed6a71588741dec0a89312811923c899e894da8e1ccd0ae6a45a415eb0`  
		Last Modified: Fri, 17 Jul 2026 17:44:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3accc21d0fe46e882dc9b45378b590c97d4740199a5f931d9ee6cd962dab4a5`  
		Last Modified: Fri, 17 Jul 2026 18:10:18 GMT  
		Size: 7.0 MB (6965272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c4bbcb0507cec1f95f104c8abc98db952854e05e3b74e3f61500700e33db69`  
		Last Modified: Fri, 17 Jul 2026 18:10:18 GMT  
		Size: 91.3 KB (91331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4934f46de013658c733613a884c2824e88b2b378c4b10a75e81c30c148fc3eb9`  
		Last Modified: Fri, 17 Jul 2026 18:10:18 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64617ecef95031b30deb46af9a15d7b53b7bc0a18ceae6c7b970b6a168a968e8`  
		Last Modified: Fri, 17 Jul 2026 18:10:20 GMT  
		Size: 69.2 MB (69163183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a80d074f6a6f4ce8e4bd5c68301adb03f3ba13f92597c1dbe8ff742f70d8fd56`  
		Last Modified: Fri, 17 Jul 2026 18:10:19 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402de1dcda06ed5dc2e5a0f8a4ea1d34da6f62d6213744c92a9654e8c25e8b60`  
		Last Modified: Fri, 17 Jul 2026 18:10:19 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:4d4e7799c13ead96bd77aad45e1455c308ebb63db24072926f69d9f77c333031
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41dfdfbd2252ef168548ba63432358600b7285835e785a060db70cb83f341d4`

```dockerfile
```

-	Layers:
	-	`sha256:8aef2e506117d487fc2b1f706530160509cf435a2b5905de0761d8e3ddb9a1d3`  
		Last Modified: Fri, 17 Jul 2026 18:10:18 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:a5ed3051c1e139e80ef13287ba12f096b51425b801a619bdd181c9626bfe90c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.9 MB (133922647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a80eb2d424ab3d50370e95672694491129da688ec96c616dfb7703b4a87fc73d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Fri, 17 Jul 2026 17:44:40 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 17 Jul 2026 17:44:40 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 17 Jul 2026 17:44:40 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 17 Jul 2026 17:44:44 GMT
ENV DOCKER_VERSION=29.6.2
# Fri, 17 Jul 2026 17:44:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 17 Jul 2026 17:44:44 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 17 Jul 2026 17:44:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 17 Jul 2026 17:44:47 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 17 Jul 2026 17:44:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 17 Jul 2026 17:44:48 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 17 Jul 2026 17:44:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 17:44:48 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 17 Jul 2026 17:44:48 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 17 Jul 2026 17:44:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Jul 2026 17:44:48 GMT
CMD ["sh"]
# Fri, 17 Jul 2026 18:09:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 17 Jul 2026 18:09:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 17 Jul 2026 18:09:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 17 Jul 2026 18:09:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 17 Jul 2026 18:09:07 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 17 Jul 2026 18:09:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 17 Jul 2026 18:09:07 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 18:09:07 GMT
VOLUME [/var/lib/docker]
# Fri, 17 Jul 2026 18:09:07 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 17 Jul 2026 18:09:07 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 17 Jul 2026 18:09:07 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d37c06e3a323026602dbb7f5928d2b9791bc7137042e9e8bdfb175755be3a4f`  
		Last Modified: Fri, 17 Jul 2026 17:44:55 GMT  
		Size: 8.1 MB (8084815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63074e33321f3b497ccdd69207f6683a6db92d41d2c274d339fcb1c563f7e081`  
		Last Modified: Fri, 17 Jul 2026 17:44:54 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f498d3b3e366d880f132cf5dd18c4c4b705f6771ebab49b882f94bb73304aabd`  
		Last Modified: Fri, 17 Jul 2026 17:44:55 GMT  
		Size: 18.1 MB (18082497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee85abc4b4eea162749eac5ec465f6ebff0a76d31495a44a9f0f4fd8ba844bc`  
		Last Modified: Fri, 17 Jul 2026 17:44:55 GMT  
		Size: 21.7 MB (21652825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ec40660624e7ff59e80393a94a0d9614417c974dd34d01db41c51e0e4b5d62c`  
		Last Modified: Fri, 17 Jul 2026 17:44:55 GMT  
		Size: 10.7 MB (10730449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c1e40de8eb75db17bf468b81b2a85e6eec5592a2f1a163837b7d2ffd5afb53`  
		Last Modified: Fri, 17 Jul 2026 17:44:56 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fef44b2bb0a0ef019554247641960eedb1e6046d2e3f59b3edeed5a9fba28af`  
		Last Modified: Fri, 17 Jul 2026 17:44:57 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb0b114d589b2d77ad2af6ac60a287414e4262d8a572ae03b3d5ad745a3b1196`  
		Last Modified: Fri, 17 Jul 2026 17:44:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba625c154e8970b1fd72c8a207cdaf0eec681b09c1508eb0a3e295fc01b4e53`  
		Last Modified: Fri, 17 Jul 2026 18:09:18 GMT  
		Size: 7.3 MB (7304362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ff4e12e4c2eeed748de5ecf5f6b92f4afe72dd100c9d5673e4c9a70d0143f7`  
		Last Modified: Fri, 17 Jul 2026 18:09:17 GMT  
		Size: 90.7 KB (90712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f50e76c637146a537d75778166c2eb7269d1abe70e740fa09309ee2d981a790a`  
		Last Modified: Fri, 17 Jul 2026 18:09:17 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b8e21b796aee32114fc9a39454ad81e3d0037a6f4a3a11ca3cc4631bbc30cbb`  
		Last Modified: Fri, 17 Jul 2026 18:09:19 GMT  
		Size: 64.4 MB (64415378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b98ad8184ebc89cd9990d86dc136bb1bf8f182260a2e53a7d3a53ff8f3cbd3c`  
		Last Modified: Fri, 17 Jul 2026 18:09:19 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:579b7ef70d28f8e2d28f0f453babf985c4424c1ed882855f139033cdcb80d0e3`  
		Last Modified: Fri, 17 Jul 2026 18:09:19 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:c165a4173184e6fe67d5cdd8c30d43dfb868ddf4e5457ed19a1369171ac64a22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:059694e26c33d47acaa99acf51ac9108d92eee30a6735fbf111f2bf0d9320eab`

```dockerfile
```

-	Layers:
	-	`sha256:f341a2cd78aab02dba31e3a1c39d3dabe15be2bdb7d282df9d9d0b550adea990`  
		Last Modified: Fri, 17 Jul 2026 18:09:17 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:151b82cd87cde9762f4c3e15179c3f3ee2524c9a8f4e6c4cb4e0fc3ba3061bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (131997554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07dd7d7edaf3efc3a8aa0a79716a008aeaadf3ee56be77cc9f567bce5334a64`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Fri, 17 Jul 2026 17:47:03 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 17 Jul 2026 17:47:03 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 17 Jul 2026 17:47:03 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 17 Jul 2026 17:47:08 GMT
ENV DOCKER_VERSION=29.6.2
# Fri, 17 Jul 2026 17:47:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 17 Jul 2026 17:47:08 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 17 Jul 2026 17:47:10 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 17 Jul 2026 17:47:10 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 17 Jul 2026 17:47:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 17 Jul 2026 17:47:11 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 17 Jul 2026 17:47:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 17:47:11 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 17 Jul 2026 17:47:11 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 17 Jul 2026 17:47:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Jul 2026 17:47:11 GMT
CMD ["sh"]
# Fri, 17 Jul 2026 18:09:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 17 Jul 2026 18:09:49 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 17 Jul 2026 18:09:49 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 17 Jul 2026 18:09:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 17 Jul 2026 18:09:52 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 17 Jul 2026 18:09:52 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 17 Jul 2026 18:09:52 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 18:09:52 GMT
VOLUME [/var/lib/docker]
# Fri, 17 Jul 2026 18:09:52 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 17 Jul 2026 18:09:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 17 Jul 2026 18:09:52 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ba288ef1bad3d6ce02ff9a0c23fd6a746bc368c5beb2350ed6e39ad40daf88`  
		Last Modified: Fri, 17 Jul 2026 17:47:18 GMT  
		Size: 7.4 MB (7380528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f0bba2e28707262912d69b09150cdd5295bf46c1904d431ba6f7258e2f8ce6`  
		Last Modified: Fri, 17 Jul 2026 17:47:17 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae4008257c8f5638d2b7c43730fd56f79c55897f16539aca31ab064d3eaa27d`  
		Last Modified: Fri, 17 Jul 2026 17:47:18 GMT  
		Size: 18.1 MB (18063900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0b346dfd16b1d967f44507cd86815b8d1dba31376577ca8a05dfcc53989e7f`  
		Last Modified: Fri, 17 Jul 2026 17:47:18 GMT  
		Size: 21.6 MB (21635983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297949bd6fe1f7d280eff0bcc8caaa808fcf027469d4e972e170e1e44d2f5ce8`  
		Last Modified: Fri, 17 Jul 2026 17:47:19 GMT  
		Size: 10.7 MB (10722212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cdb0bb87ad56010479043bcc33c8af9dac3cb69f945df3178c1ec24551d986d`  
		Last Modified: Fri, 17 Jul 2026 17:47:19 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e521fd58dd77fd3e05bec3682518249c47e8b5ea7498fdbc2ef03a2dca51c1d8`  
		Last Modified: Fri, 17 Jul 2026 17:47:19 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e73a11ba622618d2a10b0bce1b6f20376b8ec49bcf61f99398f476d241840ab`  
		Last Modified: Fri, 17 Jul 2026 17:47:20 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483b0b78e8a943624f66e57bde442f934528b82bd32b6876fabf1b16d265946d`  
		Last Modified: Fri, 17 Jul 2026 18:10:03 GMT  
		Size: 6.6 MB (6598795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eed61346e0994b94d5e85d3591041b0be42e55e46a5d2078a5637f9219d3bdc`  
		Last Modified: Fri, 17 Jul 2026 18:10:03 GMT  
		Size: 87.0 KB (86965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad0f2db7058892c5edf6e0c853df1f641c7c54d6f8fb29a152acde78cb77cbf`  
		Last Modified: Fri, 17 Jul 2026 18:10:03 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7910ab9832130a57d53f8d77b46a46745b32b53b37bb63318a38df2fca2afc99`  
		Last Modified: Fri, 17 Jul 2026 18:10:05 GMT  
		Size: 64.2 MB (64240403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5948d0a90b5b3481e52337852fb5ee4611cf036ebdc54d50d7119986cf8c68`  
		Last Modified: Fri, 17 Jul 2026 18:10:04 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:784f6b17841ce11daf917bef7bffb3024292d0ba2644f17c6931ac9446b7d219`  
		Last Modified: Fri, 17 Jul 2026 18:10:05 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:7d64fa609ffa941835e21f938a21d6341455c69620d4c41ea394d6d4aa1b6060
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76eec551895680f425a59f1501ac29cb5c87fed1b7e302469e719c9b64bea7a1`

```dockerfile
```

-	Layers:
	-	`sha256:70533559e5c59e6cb9ae1314f1bdbeff312e1c11217d357888c16a34b9c3186f`  
		Last Modified: Fri, 17 Jul 2026 18:10:03 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:48bd8cb4ce95d6c03004ee4fe06db27a49813fe0c3a55785a9bf06c941d9a9df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131387418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5013316d8fb12328cbed13239edc40620616a81f7cd0ad0ef390b7c8c77de25`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 17 Jul 2026 17:44:23 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 17 Jul 2026 17:44:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 17 Jul 2026 17:44:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 17 Jul 2026 17:44:26 GMT
ENV DOCKER_VERSION=29.6.2
# Fri, 17 Jul 2026 17:44:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 17 Jul 2026 17:44:26 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 17 Jul 2026 17:44:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 17 Jul 2026 17:44:27 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 17 Jul 2026 17:44:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 17 Jul 2026 17:44:28 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 17 Jul 2026 17:44:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 17:44:28 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 17 Jul 2026 17:44:28 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 17 Jul 2026 17:44:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Jul 2026 17:44:28 GMT
CMD ["sh"]
# Fri, 17 Jul 2026 18:10:03 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 17 Jul 2026 18:10:04 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 17 Jul 2026 18:10:04 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 17 Jul 2026 18:10:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 17 Jul 2026 18:10:07 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 17 Jul 2026 18:10:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 17 Jul 2026 18:10:07 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 18:10:07 GMT
VOLUME [/var/lib/docker]
# Fri, 17 Jul 2026 18:10:07 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 17 Jul 2026 18:10:07 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 17 Jul 2026 18:10:07 GMT
CMD []
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a509af1eaedfec9adc29a4cd8cf1cc2ce4881d8a1bd210d44cf9104916245f51`  
		Last Modified: Fri, 17 Jul 2026 17:44:34 GMT  
		Size: 8.2 MB (8235028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72ed991c3407734090991a34aabead0489cf46636644e343b20e319235c22054`  
		Last Modified: Fri, 17 Jul 2026 17:44:33 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fa7bd619410dc70e752b3f30c5d810f0e9627137551fb66e80191aab3fb241`  
		Last Modified: Fri, 17 Jul 2026 17:44:34 GMT  
		Size: 17.9 MB (17891567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b2092a03e1c942332e98cc6bb4fddd491947195a9d91ce3949e53f2cc0c932`  
		Last Modified: Fri, 17 Jul 2026 17:44:34 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3c2c7360884cc2b046c9274f87aec39d37dc1bb5fc552f29502f4878edf13e`  
		Last Modified: Fri, 17 Jul 2026 17:44:35 GMT  
		Size: 10.3 MB (10290362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7f8edfab6786274a43561bcfb967240221db0d5aedda1d5d1faf24290dd16e`  
		Last Modified: Fri, 17 Jul 2026 17:44:35 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1282f4d9081def5344f35dd3ec9cc7fae352d76760f60f0d6d1c258f3002f075`  
		Last Modified: Fri, 17 Jul 2026 17:44:36 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7482c0e495657e9686e4a52220612acf918336dcc48ae557db6a9ffdf1a5f81`  
		Last Modified: Fri, 17 Jul 2026 17:44:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7bde4e0a6c99921e91df1924465e17eacf653e4d4b2b7a3d7906667d1e57161`  
		Last Modified: Fri, 17 Jul 2026 18:10:17 GMT  
		Size: 7.2 MB (7240507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd8ee5e404a27ab30384d971d5992f1cd6dd42cce3b638ff0a6d773c90db185`  
		Last Modified: Fri, 17 Jul 2026 18:10:17 GMT  
		Size: 99.9 KB (99944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52029299b87ec88b82468431f98c0af1abea6f23927eb90402afc7062e44661f`  
		Last Modified: Fri, 17 Jul 2026 18:10:17 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d291428c0087dce73ae021e1153979d804d6d484d32b4f2f67db7a3054c8d220`  
		Last Modified: Fri, 17 Jul 2026 18:10:19 GMT  
		Size: 62.6 MB (62582460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bac510f506698b94f20a75b6635982f73c2bd8e1e5edea155e82d4dc0c56b9e`  
		Last Modified: Fri, 17 Jul 2026 18:10:18 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd405c3207614a1c140c84fe866843057fd62edbafae914f6c9c91ddc8705a5`  
		Last Modified: Fri, 17 Jul 2026 18:10:18 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:8a07ff53b19b74e373ca5ecf63dd1f177841ff03f2205eba725e40916d5eb4e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06ef9e608f0bf8b5fb865700c3a29fd6e3669199c6d0cabd37546fcf098b09e`

```dockerfile
```

-	Layers:
	-	`sha256:76e1e91a91803663768d43b2ca826aa159ff59d9350982c9583c0d81e5f31880`  
		Last Modified: Fri, 17 Jul 2026 18:10:17 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json
