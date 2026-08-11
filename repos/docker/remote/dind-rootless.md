## `docker:dind-rootless`

```console
$ docker pull docker@sha256:8a213afdd096a44dff403aaf8eb58b7a96a63113f18a4b094b98b7d0ed7d948b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:33bd52167d9eb5071d83d03e42676d7ec8ede92db9deafc8e610186058958ac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.3 MB (160282540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efb499b1c2b56c675249374c7f29a4189e7834bacb2b5c6ab846ceaac99e7688`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:30:03 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:30:03 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:30:04 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:30:06 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:30:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:30:06 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:30:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:30:07 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:30:08 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:30:08 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:30:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:30:08 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:30:08 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:30:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:30:08 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:17 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:17 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:20 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:20 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:20 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:20 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:20 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:20 GMT
CMD []
# Mon, 10 Aug 2026 23:36:21 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Mon, 10 Aug 2026 23:36:21 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Mon, 10 Aug 2026 23:36:21 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:36:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Mon, 10 Aug 2026 23:36:22 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Mon, 10 Aug 2026 23:36:22 GMT
VOLUME [/home/rootless/.local/share/docker]
# Mon, 10 Aug 2026 23:36:22 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ad8313fca57c10d648dc12805643c0a871ef902fcc7e984981f5d82dae6fe3`  
		Last Modified: Mon, 10 Aug 2026 23:30:15 GMT  
		Size: 8.2 MB (8183873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d28a2fd669a9919cf1ed5398dba7fe07ba8a0f8972bd50eb346ad316eae7ba2`  
		Last Modified: Mon, 10 Aug 2026 23:30:14 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a51c128f5b01cd6bbafebb159705bbb48aaf0a83085cb92671062705847e11a2`  
		Last Modified: Mon, 10 Aug 2026 23:30:15 GMT  
		Size: 19.5 MB (19543209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a19dc9756c54136f17a5c00a4808022f28036c9be31b0cfc23f44d18f4e485`  
		Last Modified: Mon, 10 Aug 2026 23:30:15 GMT  
		Size: 22.9 MB (22880304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60274a77b592ba612e982ddf0c09104507180ae82da2ccc173af6f87bf7660d6`  
		Last Modified: Mon, 10 Aug 2026 23:30:16 GMT  
		Size: 15.8 MB (15770403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea6b0d9e810f5f63c78797dd70784dc4c0829a6a8d24493f0ae8cbb7a6ab0ed0`  
		Last Modified: Mon, 10 Aug 2026 23:30:16 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e539967eabd5624eaf52fc9f9383ee36f9e16a45c929ae21446277f1004d67e`  
		Last Modified: Mon, 10 Aug 2026 23:30:17 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb47c018ddb2c891a85287e4f579e4db42faa549b12ffdaf390106283600b086`  
		Last Modified: Mon, 10 Aug 2026 23:30:17 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2e09c7058504087db9c509efbf1ec6493c8f68b0d4d35381d5b96665318187`  
		Last Modified: Mon, 10 Aug 2026 23:33:31 GMT  
		Size: 7.0 MB (6965262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5efa40132d68510ae4d6c3cd1380f463b7a1490d8b19ad1b7710c2554dbb133a`  
		Last Modified: Mon, 10 Aug 2026 23:33:30 GMT  
		Size: 91.3 KB (91317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc57549194412b84c52fc9bfb5236241bea8fe276543083e760ca5791b8c8ec`  
		Last Modified: Mon, 10 Aug 2026 23:33:30 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a4e92baa5a06ef090534014ea5530c91ab641534d84f38b6e1661d40d1b51e`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 67.4 MB (67413973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea113fa76cec6970a14b762569d497027fec37b6f6ee4a985482fe2c4f9c9f92`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2576e836c378b3fe0ecab9d59d356dbd1423086597727a34f47c0d7bcf3dd0e5`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae7fc9e5b6be4f0c13ab45fd4bd253f1b4f996e5ed0f46a9afbf12fbbb5f492`  
		Last Modified: Mon, 10 Aug 2026 23:36:27 GMT  
		Size: 3.5 MB (3471282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554b486b779a9d353044b0f9bd587e2515c5e6e55ec5cd9be4e6ced119789f43`  
		Last Modified: Mon, 10 Aug 2026 23:36:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9521580369fad6a12e9cf089a02aacc0f8cbe642871f79beaf48d5922e80bb`  
		Last Modified: Mon, 10 Aug 2026 23:36:27 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5530e115c2d91a172154d8c67b23008a91c13706d625aff327ae293d313d30bd`  
		Last Modified: Mon, 10 Aug 2026 23:36:27 GMT  
		Size: 12.1 MB (12107031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:724eb1a21273c98222f13b558904e876ad662fd10457a3f2f1c96053964ee927`  
		Last Modified: Mon, 10 Aug 2026 23:36:28 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:388941e1af15b31f9aaa71ba2dbaa6dd402fd0ea1a7f2ed6a07ed4e5f81c1b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92aa9f4852704eea40c51768a8287007241f9f947e7d103dee7ce173dd3764b`

```dockerfile
```

-	Layers:
	-	`sha256:9cca199e3e84fabb29c96f73e15eeebb2fde3abf935c7b6134b8ecb071d9bdae`  
		Last Modified: Mon, 10 Aug 2026 23:36:26 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:65aec99d26791b4694d6128b4ff5ae7a2033d7d36a6ec121abe8680247763e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.5 MB (148539264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:849dfa66f259dd3397d5992d66f3fb7e729868d218ce7ff7fb07d3ef1eb026b6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:28:37 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:28:37 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:28:37 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:28:39 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:28:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:28:39 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:28:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:28:41 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:28:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:28:42 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:28:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:28:42 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:28:42 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:28:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:28:42 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:15 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:15 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:15 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:18 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:18 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:18 GMT
CMD []
# Mon, 10 Aug 2026 23:36:16 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Mon, 10 Aug 2026 23:36:16 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Mon, 10 Aug 2026 23:36:16 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:36:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Mon, 10 Aug 2026 23:36:17 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Mon, 10 Aug 2026 23:36:17 GMT
VOLUME [/home/rootless/.local/share/docker]
# Mon, 10 Aug 2026 23:36:17 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b8651b10e98929dba1514b0b5d8bc97ae5cb9abc41f2924a93a94d6d3dee66b`  
		Last Modified: Mon, 10 Aug 2026 23:28:48 GMT  
		Size: 8.2 MB (8235029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483fe24dc1c9a9be3258644ed89c7a96a8269a12a1083832759f3a1bf08885c0`  
		Last Modified: Mon, 10 Aug 2026 23:28:47 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:884def69b280cf764b6392f2c72b25184ca107d44e59ecc540dc7801722d4a4b`  
		Last Modified: Mon, 10 Aug 2026 23:28:48 GMT  
		Size: 18.0 MB (17981577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d309f44fbaf2de508219aacd11664c92a98cab003405d59c09f269ea8fd80d5a`  
		Last Modified: Mon, 10 Aug 2026 23:28:48 GMT  
		Size: 20.7 MB (20723296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385a7617395ac642330acd3d9e986681aea0f26d3c55cd2f1f9847818e82c25e`  
		Last Modified: Mon, 10 Aug 2026 23:28:49 GMT  
		Size: 14.3 MB (14286285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:779eca442c2cd93a395f91cda652787f8c0e19dd7769904da66f42409284f2af`  
		Last Modified: Mon, 10 Aug 2026 23:28:49 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2130f54dc6258e6e327e094c6562487ad4a8d49b170a9dae209ec606a82f587`  
		Last Modified: Mon, 10 Aug 2026 23:28:50 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c35b1381aa074e51e48f306c08f78ed548a372a2241a00194839037bf4d471`  
		Last Modified: Mon, 10 Aug 2026 23:28:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b692fd642e373746f42d26b40d80967f113e9cb1370bab5c13ba91382f76c6`  
		Last Modified: Mon, 10 Aug 2026 23:33:28 GMT  
		Size: 7.2 MB (7240462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a1ab39d8c68b83b6e706caef55c5e14a60a8e4f389ba7b612e82ed9c585978`  
		Last Modified: Mon, 10 Aug 2026 23:33:27 GMT  
		Size: 99.9 KB (99935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db4bdf98b9393d084f1d5fed4f92697c51ebb0dc01969f43a9c7f6ef8b78888c`  
		Last Modified: Mon, 10 Aug 2026 23:33:28 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30784cec22a0cb9aad74f43d6caa62d4fe84d46a88ad2780653c2630546211f3`  
		Last Modified: Mon, 10 Aug 2026 23:33:29 GMT  
		Size: 61.1 MB (61091159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6edfb8fd82dadb5e61f7ff5d30c3949dfe09be6b1e1d745ca29309576178478`  
		Last Modified: Mon, 10 Aug 2026 23:33:29 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d250e751efc888444ab546a7cbf7627864f5e92a21026e0776ebebc341ae89`  
		Last Modified: Mon, 10 Aug 2026 23:33:29 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab01652922f67fb53573654ec893aaa1a502467f0689d535bdd0b86c0cf08443`  
		Last Modified: Mon, 10 Aug 2026 23:36:22 GMT  
		Size: 3.4 MB (3448894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3913cad313724fedcbd04e9e68c44d783ee3714ac7b782de7277b59b05a27b5`  
		Last Modified: Mon, 10 Aug 2026 23:36:22 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed12ea6d32a764edb897e466a219d3662501559b2bee32d06b79dc0a7befd40`  
		Last Modified: Mon, 10 Aug 2026 23:36:22 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e6a126fb23315092bdd0c96d4f7f9fc1c0f1702901160ace0d92e6c5681736`  
		Last Modified: Mon, 10 Aug 2026 23:36:22 GMT  
		Size: 11.2 MB (11240092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9bf626eef4b9e7285b1fcd64dee99e187a436b53468258c95a7ee5ba536cdc9`  
		Last Modified: Mon, 10 Aug 2026 23:36:23 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:af9046a95143c8502ad6e57fb697e8285885f27d0f043e0f9a1bcb101b908c98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16387e244978a8c523e9eab0a4030f6ccef2e011701753e5ffacb94ecb903b12`

```dockerfile
```

-	Layers:
	-	`sha256:6e6ac3b79cb540e20a3a4792d28f887a51c63268cd4d15ba914962bf0bc0a2ae`  
		Last Modified: Mon, 10 Aug 2026 23:36:21 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json
