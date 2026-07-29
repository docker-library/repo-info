## `docker:29-rc-dind-rootless`

```console
$ docker pull docker@sha256:82b0e89352c1d536f9be2885b9aa385717ff14e6ec0d252aa486458827995d6a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-rc-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:a9681d1c6afc6065479b528c70cea592ce58809e42750fd76aa5d556785a3f26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157547675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65cea8456a2ad239008a8d563229d2bb0a3e5cac2b15b473c12086d60fdc4510`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 16 Jun 2026 00:12:09 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 16 Jun 2026 00:12:10 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 16 Jun 2026 00:12:10 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 16 Jun 2026 00:12:12 GMT
ENV DOCKER_VERSION=29.6.0-rc.1
# Tue, 16 Jun 2026 00:12:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.6.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.6.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.6.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.6.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 16 Jun 2026 00:12:12 GMT
ENV DOCKER_BUILDX_VERSION=0.34.1
# Tue, 16 Jun 2026 00:12:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-amd64'; 			sha256='f1332ddb9010bd0b72628266c3a906d9a6979848033df4c8d9bd2cd113bae12b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm-v6'; 			sha256='1f6c8a082281706a0b9e24b64b9210ca0df5273ceaf600536012e7a62d790538'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm-v7'; 			sha256='ad4e0938c94638ac882641b924f6eff6889cc59a11f062e733cf337458aa6f35'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm64'; 			sha256='c34e32dd6ea2653d960d6c099c9f09b9077e4a37504d2d31e5066eccc3904231'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-ppc64le'; 			sha256='a509dc17005a4eee3568336d9e2479642e53b31110e039a8f5b4e6079744d0e2'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-riscv64'; 			sha256='c2cf15773a0610e6de34a04e9191b07915d0ea2afb381a37ac87f0dcb213b85a'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-s390x'; 			sha256='edb0e83d5a2fa8913d0af46385b648408b4776ee3241b4c15f92fcadbc72b550'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 16 Jun 2026 00:12:14 GMT
ENV DOCKER_COMPOSE_VERSION=5.1.4
# Tue, 16 Jun 2026 00:12:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-x86_64'; 			sha256='33b208d7e76639db742fae84b966cc01dacae58ca3fc4dabbc907045aefdf0c4'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-armv6'; 			sha256='38c8b500e75de30707024db9d135af979f4fdf6b9bae82b7a854b17eddad1205'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-armv7'; 			sha256='5cce4229012b8b18067fba078c9ec4e2a5dd47cb4cb3a0cc3d431f6fc429060f'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-aarch64'; 			sha256='d4fb48b72857810314d3ee77123c89954101844efa4788031221f4c370495946'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-ppc64le'; 			sha256='044a5a6eac8ba3b686e5ad74d529293372eb6d8553685738fe93ae6a6fd92790'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-riscv64'; 			sha256='03565cf8e16b3afa6fd6555d697b3237ea2d4dbd5547ab6835bc90fa7e5e00bb'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-s390x'; 			sha256='5bd0db672b07bb86272e84bbddd286f42fe9b84080e4d47ad3a91a84bd8c2c3d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 16 Jun 2026 00:12:14 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 16 Jun 2026 00:12:14 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 16 Jun 2026 00:12:14 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 16 Jun 2026 00:12:14 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 16 Jun 2026 00:12:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Jun 2026 00:12:14 GMT
CMD ["sh"]
# Tue, 16 Jun 2026 01:12:14 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 16 Jun 2026 01:12:15 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 16 Jun 2026 01:12:15 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 16 Jun 2026 01:12:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.6.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.6.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.6.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.6.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 16 Jun 2026 01:12:18 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 16 Jun 2026 01:12:18 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 16 Jun 2026 01:12:18 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 16 Jun 2026 01:12:18 GMT
VOLUME [/var/lib/docker]
# Tue, 16 Jun 2026 01:12:18 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 16 Jun 2026 01:12:18 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 16 Jun 2026 01:12:18 GMT
CMD []
# Tue, 16 Jun 2026 02:13:22 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Tue, 16 Jun 2026 02:13:23 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Tue, 16 Jun 2026 02:13:23 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Tue, 16 Jun 2026 02:13:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-rootless-extras-29.6.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-rootless-extras-29.6.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Tue, 16 Jun 2026 02:13:23 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Tue, 16 Jun 2026 02:13:23 GMT
VOLUME [/home/rootless/.local/share/docker]
# Tue, 16 Jun 2026 02:13:23 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3d2c4fe08f5070dcc1b7d1aeb3f870270c72426703337d90b6fb2c3dd4a54e`  
		Last Modified: Tue, 16 Jun 2026 00:12:21 GMT  
		Size: 8.2 MB (8170577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f3f4aad85f80b4d1c7b41fff369b68679279ecf1ee2d503b45cfe1617c6599b`  
		Last Modified: Tue, 16 Jun 2026 00:12:21 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85491ce02403d1271fdc7df371ac98a033cb356431de26a62c621ebcd374b33d`  
		Last Modified: Tue, 16 Jun 2026 00:12:22 GMT  
		Size: 19.4 MB (19439785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a19fa01b90a24a6000d1d978f3f226ca8a0f1963d8abc5c478a6f8ea3c93a7d`  
		Last Modified: Tue, 16 Jun 2026 00:12:22 GMT  
		Size: 23.0 MB (22988914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f83a25c22a1caef1887cb95fa05f641b01d33a0426c1b222e6789bd06e0bc7f`  
		Last Modified: Tue, 16 Jun 2026 00:12:22 GMT  
		Size: 11.4 MB (11395945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9463009f11a6a6390b19e8e8000c4763d2b281bfcf1e1bde3b7bb05c8d3afb57`  
		Last Modified: Tue, 16 Jun 2026 00:12:23 GMT  
		Size: 534.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5daec25d55139c26e0086d59b347807d6615a46070a3a54f2df76ceab1d857a`  
		Last Modified: Tue, 16 Jun 2026 00:12:23 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bfaffc4511a2405ff5750b580bde87b13e5dc8b89d537fed7012717df60fe04`  
		Last Modified: Tue, 16 Jun 2026 00:12:24 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebb867c90ea88b2fea61ed862db123817583c33d64180419761ed797e709c52`  
		Last Modified: Tue, 16 Jun 2026 01:12:30 GMT  
		Size: 7.0 MB (6965231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad8393280d0f9e0ed85a1c2b3bd9ed050cead853279ef1916f282cbb9a53a3c8`  
		Last Modified: Tue, 16 Jun 2026 01:12:29 GMT  
		Size: 91.3 KB (91321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d9383bfdda01c968317e33876838474cc1d4dbf54be54929ebf16d66b2c2601`  
		Last Modified: Tue, 16 Jun 2026 01:12:29 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170232ff4a44ba33b705be68c09be9029d6e98f86a6313043a1b9a40e0baad3c`  
		Last Modified: Tue, 16 Jun 2026 01:12:32 GMT  
		Size: 69.1 MB (69065833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311669bf22f82dd7a34c697da4a0b9f9e1d033156fbd8ee0c0d6f885245e0562`  
		Last Modified: Tue, 16 Jun 2026 01:12:31 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d18387077e56756c3b2d9aad2d807fa9ed3564c8744c953260fca5e225bda6`  
		Last Modified: Tue, 16 Jun 2026 01:12:31 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b63ba621a56c21c025a53433197dbc27b5dd183f62a671fa0dfb6f100b44a0`  
		Last Modified: Tue, 16 Jun 2026 02:13:29 GMT  
		Size: 3.5 MB (3470898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4e27f7c585958a509e7389d76e01f16dfc3df242e7556a4ff390adc6a02040`  
		Last Modified: Tue, 16 Jun 2026 02:13:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c756f4ee0b0a713027b8fffbb5a0817f00a364080f154c8cf41dfd736122e3b8`  
		Last Modified: Tue, 16 Jun 2026 02:13:29 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d348d508b3be9af1430c3d62590974162a274e452c86b4b94c8b607c38ccede`  
		Last Modified: Tue, 16 Jun 2026 02:13:29 GMT  
		Size: 12.1 MB (12103295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4505f265fdb7bddd369f06500ae8c6f00a453f24740696c9ce07775eb1b2553d`  
		Last Modified: Tue, 16 Jun 2026 02:13:30 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-rc-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:583cdfb112f29f3b79e180a95a8891966984e5444e9accf11c354280e34bec15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 KB (30245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccecc8fc352a44685a178959e26dd267fa768e3c5652dc15afcb8645dce2e54`

```dockerfile
```

-	Layers:
	-	`sha256:b87ccd0fd5fdd54a6ec84c762c5ac2363ad6b3e3a652d491ff79bb56c12ca8b8`  
		Last Modified: Tue, 16 Jun 2026 02:13:28 GMT  
		Size: 30.2 KB (30245 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-rc-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3cbad4bd5a9b7527cdbd2aa5912f12b4b0172082689a39dc2c54d1e081d67146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.0 MB (146013191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dabdf9a0318f5e08126cd5284ac72bc77a7789f2a0545de99bdfdd74392808d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 16 Jun 2026 00:12:59 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 16 Jun 2026 00:12:59 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 16 Jun 2026 00:12:59 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 16 Jun 2026 00:13:04 GMT
ENV DOCKER_VERSION=29.6.0-rc.1
# Tue, 16 Jun 2026 00:13:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.6.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.6.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.6.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.6.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 16 Jun 2026 00:13:04 GMT
ENV DOCKER_BUILDX_VERSION=0.34.1
# Tue, 16 Jun 2026 00:13:04 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-amd64'; 			sha256='f1332ddb9010bd0b72628266c3a906d9a6979848033df4c8d9bd2cd113bae12b'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm-v6'; 			sha256='1f6c8a082281706a0b9e24b64b9210ca0df5273ceaf600536012e7a62d790538'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm-v7'; 			sha256='ad4e0938c94638ac882641b924f6eff6889cc59a11f062e733cf337458aa6f35'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-arm64'; 			sha256='c34e32dd6ea2653d960d6c099c9f09b9077e4a37504d2d31e5066eccc3904231'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-ppc64le'; 			sha256='a509dc17005a4eee3568336d9e2479642e53b31110e039a8f5b4e6079744d0e2'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-riscv64'; 			sha256='c2cf15773a0610e6de34a04e9191b07915d0ea2afb381a37ac87f0dcb213b85a'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.34.1/buildx-v0.34.1.linux-s390x'; 			sha256='edb0e83d5a2fa8913d0af46385b648408b4776ee3241b4c15f92fcadbc72b550'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 16 Jun 2026 00:13:04 GMT
ENV DOCKER_COMPOSE_VERSION=5.1.4
# Tue, 16 Jun 2026 00:13:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-x86_64'; 			sha256='33b208d7e76639db742fae84b966cc01dacae58ca3fc4dabbc907045aefdf0c4'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-armv6'; 			sha256='38c8b500e75de30707024db9d135af979f4fdf6b9bae82b7a854b17eddad1205'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-armv7'; 			sha256='5cce4229012b8b18067fba078c9ec4e2a5dd47cb4cb3a0cc3d431f6fc429060f'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-aarch64'; 			sha256='d4fb48b72857810314d3ee77123c89954101844efa4788031221f4c370495946'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-ppc64le'; 			sha256='044a5a6eac8ba3b686e5ad74d529293372eb6d8553685738fe93ae6a6fd92790'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-riscv64'; 			sha256='03565cf8e16b3afa6fd6555d697b3237ea2d4dbd5547ab6835bc90fa7e5e00bb'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.1.4/docker-compose-linux-s390x'; 			sha256='5bd0db672b07bb86272e84bbddd286f42fe9b84080e4d47ad3a91a84bd8c2c3d'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 16 Jun 2026 00:13:05 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 16 Jun 2026 00:13:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 16 Jun 2026 00:13:05 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 16 Jun 2026 00:13:05 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 16 Jun 2026 00:13:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Jun 2026 00:13:05 GMT
CMD ["sh"]
# Tue, 16 Jun 2026 01:14:02 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Tue, 16 Jun 2026 01:14:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Tue, 16 Jun 2026 01:14:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Tue, 16 Jun 2026 01:14:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.6.0-rc.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.6.0-rc.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.6.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.6.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Tue, 16 Jun 2026 01:14:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Tue, 16 Jun 2026 01:14:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Tue, 16 Jun 2026 01:14:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 16 Jun 2026 01:14:06 GMT
VOLUME [/var/lib/docker]
# Tue, 16 Jun 2026 01:14:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Tue, 16 Jun 2026 01:14:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 16 Jun 2026 01:14:06 GMT
CMD []
# Tue, 16 Jun 2026 02:12:57 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Tue, 16 Jun 2026 02:12:57 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Tue, 16 Jun 2026 02:12:58 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Tue, 16 Jun 2026 02:12:59 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-rootless-extras-29.6.0-rc.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-rootless-extras-29.6.0-rc.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Tue, 16 Jun 2026 02:12:59 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Tue, 16 Jun 2026 02:12:59 GMT
VOLUME [/home/rootless/.local/share/docker]
# Tue, 16 Jun 2026 02:12:59 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8a75a7427b6acf5564fcdda5c9c679df4cf5321fce8ed72f34c1173c2971bcd`  
		Last Modified: Tue, 16 Jun 2026 00:13:12 GMT  
		Size: 8.2 MB (8231704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0a7054803000cdae759c45ca22282851e1b0a9b7881a1a4ca01f80314b3f88`  
		Last Modified: Tue, 16 Jun 2026 00:13:11 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bfb5c9e70e853c0a54886f15e7d7d91b67a6e1a391689565e0eda739cd9e249`  
		Last Modified: Tue, 16 Jun 2026 00:13:12 GMT  
		Size: 17.9 MB (17889762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9498b726ca6e2d502c6780ec3ef7eaee4d792e111a9dd18d83aa53ea132361`  
		Last Modified: Tue, 16 Jun 2026 00:13:13 GMT  
		Size: 20.8 MB (20815965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee59de277308123638c8995a5e7d857ce998ba63dc902ae885547842a5e9f5f`  
		Last Modified: Tue, 16 Jun 2026 00:13:14 GMT  
		Size: 10.4 MB (10359870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb1453e911209759d572872cdae248c2e12c5ef56720d6af135cb51a1265de9`  
		Last Modified: Tue, 16 Jun 2026 00:13:14 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4692759c5c4f20096250bd98d2b9eeca48e8b4b21ffd607e20999cefd32487f5`  
		Last Modified: Tue, 16 Jun 2026 00:13:14 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbfae388c4671784746fa3253f9ec6ec28eca0bf1e02a18f1654193fc1d85451`  
		Last Modified: Tue, 16 Jun 2026 00:13:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b7aaaed1b746f115655d29d8752586ece2a85164f649f842b9250b3c5fc218`  
		Last Modified: Tue, 16 Jun 2026 01:14:16 GMT  
		Size: 7.2 MB (7239972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684a34766d901344a4640ebec3397026e40c21f8d018e74a8db56db0f579a6c`  
		Last Modified: Tue, 16 Jun 2026 01:14:16 GMT  
		Size: 99.9 KB (99937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d70db30e97726cddd9c77eb47445649ab70ef8d8ba3b531cade2231150491d59`  
		Last Modified: Tue, 16 Jun 2026 01:14:17 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f5fea9d26e2c08004ff2c7de76b91642134cabdfc1854e03dd79dd538463db7`  
		Last Modified: Tue, 16 Jun 2026 01:14:18 GMT  
		Size: 62.5 MB (62498182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6ac72497a2c5ff322e9e4a20b7c0e484090888b8cdfe18f954a90a53a37cab`  
		Last Modified: Tue, 16 Jun 2026 01:14:18 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a6a44bf108bc8bb57ec83419c706f4d525a0a58bccb9c8d1a768c12fae4d9d`  
		Last Modified: Tue, 16 Jun 2026 01:14:18 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f776185674692c5f51f8aca6a5ed7eeb2e750f2437288aeabaa601c5a21ae02`  
		Last Modified: Tue, 16 Jun 2026 02:13:05 GMT  
		Size: 3.4 MB (3448180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270421a3ce149e770b0d986853eeef018273eefc9ed88d0941418d8db428da8e`  
		Last Modified: Tue, 16 Jun 2026 02:13:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e8a241858e437cfbeac787ea92857a11f15671e7791d740291bc6b4cd0090e`  
		Last Modified: Tue, 16 Jun 2026 02:13:04 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baf69e6f42dcf8a54992908b797e4aea860a4c98d6c1319fd2a8ad7a9d10ff09`  
		Last Modified: Tue, 16 Jun 2026 02:13:05 GMT  
		Size: 11.2 MB (11237089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b83af009b921102043bb5dc2c11ebfe913b3a9b0823d3102bb324c6b32a2150`  
		Last Modified: Tue, 16 Jun 2026 02:13:06 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-rc-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:4961c983b97c6460d24184fb00b1f1682529790af00c5155607cb1f98a1e2734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 KB (30397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eecb512ad05c7b0ee6b95659f9b01203e29be1ddcd588de16d176103682b56e5`

```dockerfile
```

-	Layers:
	-	`sha256:0a1afd24f35f81f1569e51a6429e8dd4b2867ffb6e261939a03b587ad56c8ce7`  
		Last Modified: Tue, 16 Jun 2026 02:13:04 GMT  
		Size: 30.4 KB (30397 bytes)  
		MIME: application/vnd.in-toto+json
