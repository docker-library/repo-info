<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:29`](#docker29)
-	[`docker:29-cli`](#docker29-cli)
-	[`docker:29-dind`](#docker29-dind)
-	[`docker:29-dind-rootless`](#docker29-dind-rootless)
-	[`docker:29-windowsservercore`](#docker29-windowsservercore)
-	[`docker:29-windowsservercore-ltsc2022`](#docker29-windowsservercore-ltsc2022)
-	[`docker:29-windowsservercore-ltsc2025`](#docker29-windowsservercore-ltsc2025)
-	[`docker:29.7`](#docker297)
-	[`docker:29.7-cli`](#docker297-cli)
-	[`docker:29.7-dind`](#docker297-dind)
-	[`docker:29.7-dind-rootless`](#docker297-dind-rootless)
-	[`docker:29.7-windowsservercore`](#docker297-windowsservercore)
-	[`docker:29.7-windowsservercore-ltsc2022`](#docker297-windowsservercore-ltsc2022)
-	[`docker:29.7-windowsservercore-ltsc2025`](#docker297-windowsservercore-ltsc2025)
-	[`docker:29.7.2`](#docker2972)
-	[`docker:29.7.2-alpine3.24`](#docker2972-alpine324)
-	[`docker:29.7.2-cli`](#docker2972-cli)
-	[`docker:29.7.2-cli-alpine3.24`](#docker2972-cli-alpine324)
-	[`docker:29.7.2-dind`](#docker2972-dind)
-	[`docker:29.7.2-dind-alpine3.24`](#docker2972-dind-alpine324)
-	[`docker:29.7.2-dind-rootless`](#docker2972-dind-rootless)
-	[`docker:29.7.2-windowsservercore`](#docker2972-windowsservercore)
-	[`docker:29.7.2-windowsservercore-ltsc2022`](#docker2972-windowsservercore-ltsc2022)
-	[`docker:29.7.2-windowsservercore-ltsc2025`](#docker2972-windowsservercore-ltsc2025)
-	[`docker:cli`](#dockercli)
-	[`docker:dind`](#dockerdind)
-	[`docker:dind-rootless`](#dockerdind-rootless)
-	[`docker:latest`](#dockerlatest)
-	[`docker:windowsservercore`](#dockerwindowsservercore)
-	[`docker:windowsservercore-ltsc2022`](#dockerwindowsservercore-ltsc2022)
-	[`docker:windowsservercore-ltsc2025`](#dockerwindowsservercore-ltsc2025)

## `docker:29`

```console
$ docker pull docker@sha256:12e683a161823b2a839aeea999b9d960e6e1f9a97b1679ad6b441982e2d9cf07
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
$ docker pull docker@sha256:ab772b0eaf0b01e5843f6574e50ccdfc34a7bdcb82bbf2decafde54a0ee884a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144702884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8193d29aa6a99a72ade95625654b79b60daf8e2af1a8a752c82378027fd2dda9`
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

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:77ef046d00c5b4d87bea714c097d6fbc329cec2156f98a4382e5859f89a8ba7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c002967c1c4cdbc70d971b31d5f5009f0840e60799888d72c37734e1f8ea711`

```dockerfile
```

-	Layers:
	-	`sha256:a786ed8612623af1eaeb634d028dff8112a1524b3b31b5399cc50996d9d93ba2`  
		Last Modified: Mon, 10 Aug 2026 23:33:30 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v6

```console
$ docker pull docker@sha256:9bd3102b0dc067fb15448a4376ce4d28ec9e66fd0b88d789a3899dd6321c0e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136364446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35d8077093dbd205bbe23c351cdbcce619d854c1b6032270c5a1fd451ab92aab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:49 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:26:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:26:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:26:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:26:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:26:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:26:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:22 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de8924beca818a0b4f3c486fc7601f67a62a092db086ba93f86c0ad9a33e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 8.1 MB (8084796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beb48c0666ff14e213cd237faf64c807a84547600b78d809eab33dfbdea6dbc`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e68c5dce03082b0b7f56b27ca21993d03140c6a60c5855e139c7059e6ddf24`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 18.2 MB (18176727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d17624b9eb1c4ddd265fd8b204f6d7cbe4ab77d95194a403dae5f173b7bffd0`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 21.5 MB (21504859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1aa103b2286f46e316d91fd4f2e8c4b2094a2958e40f472fac0ac2a69f51bf`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 14.9 MB (14932265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e675b7c0cb64600f425310e6363f5644b81b96ebfcac3a8822b412359235e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56ba6e142fdeb3e3d8e3ad266ee5042b02b37f871f59ab03c735bcbcfdad4af`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394ea985feebf70f8ae020cdf746a36c06e48b77fb8d914e80140db89f6f98d`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807b5559205b3b616ea66543fb6de7172c4857f797e8c7a1e5158675a695a741`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 7.3 MB (7304347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef5c1ba780ac487b9df90e60c36983881ac6c0ea9473292915f146fd10dfab5`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 90.7 KB (90704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d4daed5ef6b60ac5549e7449340dc6565243724de0ed8539f651b5f38af9c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611198340bf7ddfef45033ffd1d05426ff1124180507434bfc274ef3b86e9703`  
		Last Modified: Mon, 10 Aug 2026 23:33:34 GMT  
		Size: 62.7 MB (62709140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1c17629cb7d4c69b9f8abb0d26b2c7e5b40ed9330dbf23c8b12ff970464085`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb988fc39fdfccff6c36d8c50407bb2fea355eff572af3822e96120e67ab5c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:3ea5678153f70b86735bbdf98c3297650a7f86734f697fe5a46cde7cda344503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66073ffb4d0c80087723c357427942dc25b2acebd63e56e09876dfcdc54f7d93`

```dockerfile
```

-	Layers:
	-	`sha256:635b1695c222e0fab2ddb89a8f844c925e34b7384aad013fd3b70d9bae37c9d7`  
		Last Modified: Mon, 10 Aug 2026 23:33:31 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v7

```console
$ docker pull docker@sha256:b8a73d31d568a45f524f12225938cfeb2002a9ff2e654023ee88057386087e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134415816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9561965e57bb3af4e4441ee72cb268450a174765759fd02fc4e0ac718d97ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:27:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:27:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:27:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:28 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f25f23befacdaad939196cfef814986853b85afe5525e50bc05d0adbd56aa3`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 7.4 MB (7380540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02955914e0d904776beca4aafe40fa9b3dfb82567436fb0673d1b0ab6a7aab`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c61d9720e5bd546181709f7e01ea39492d8030fe26bfad0280488a735bb8b`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 18.2 MB (18160978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217672f190cf9e9b719a12a5bb0e42b38bbbc6bdf9d79886f98df0f30fff2be`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 21.5 MB (21487117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893124f4b5e6a80ca6615c7223d51ebf8e972a3e346397c0edf6155578e79949`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 14.9 MB (14916521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62cf86c21498ad41edd807b542b7244a0e9258b28ba3f6eae4bbdb51b5a17f2`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b683931af247a82fec4b561d84210ab9d664d8959a971e5ea01637287f4e79`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1049962fd1c05d22836618fac2ece409099dd7b13885c542e5cb91cf5aff12d5`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4e57e597b7f70a39a5eb6db2bb9f2c7bae9916907a957ca0f2606c86d9fca4`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 6.6 MB (6598827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b4185f3a425107c2693b154a1560a031cf47e78df595da1459b379e4e145cb`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 87.0 KB (86964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b172ffc0b88f4fa8ceb8520a85083520be781a5f18f9b0f46a50194dd2f00b1f`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108f9917a84ff84b3ed66757a368147dbcbc181f2b3e36f57bf2b511ea7f7723`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 62.5 MB (62516097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd07e05a21001889b8099f30c550484aacdea6e27c7916c80f95e500177d0ec`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2dc48c51815ce5931b12b8c0a7957ab158c11a325a03c2d2988051fc3e9309`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:0bafa1800a7b77315dddec147753a5f7a043c931b85e9971fab6487e9cda77e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14741eded070146f0dc77b325e43e92d498f985489b3e93c3bead3b058466a97`

```dockerfile
```

-	Layers:
	-	`sha256:39cad98a9b00d66ac344cc4fa61a39ce9d5c8c9f5bca4fe34bd183bd1b0553a7`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:df2316a6ed13583a9fd33b6cf2f99f43ff3b90f2766a2d97745703cd43caad8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133848938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003cd9eb3b560f4155b9476b6d7f8c87f904a2028a2a8aaca22f860e1a18c4ac`
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

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:33db97154be3d8c50e8782737cf97e6002be48e04a536e789661bd2ac82a11ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2f0b5020b208e3b79cf4e3fe6adbdfd3a6879e3298d30d04a517b6b8ddc4ae`

```dockerfile
```

-	Layers:
	-	`sha256:ae265669d1e6e88acf155cb1d698bcb932b169367678929dcc277dfa8f90760d`  
		Last Modified: Mon, 10 Aug 2026 23:33:27 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-cli`

```console
$ docker pull docker@sha256:000bb62ff495f986c9f5578eb67cc2cb98b91138eda81d7762d5371eb8a497fe
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
$ docker pull docker@sha256:e650b7a58d7f56be91d4f7be799196380a3bbc1bcbc41f1f4dff1b36ac309e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70226334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10900ba73429df91dc30f1435013a3c5663e3478d12e89e465c44ca0a82edefe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:c9a70261ada62be91a181c546258f2e67c4f5fb59ad4a6bb87794569d98a7532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79df4847224b491b8bf8cd66492b0d27eeb9d0bfb52beff2b7c23f3b59789d28`

```dockerfile
```

-	Layers:
	-	`sha256:8285c61c58013694f5e7f7a8891511a615a81b7b7265bcbbfeedd96c2928c03d`  
		Last Modified: Mon, 10 Aug 2026 23:30:14 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:d3dd76b307376f2e95c2fae03f22c3f111d90126a2d3b6dfc28e308c0de4f302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66254251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b002fb3a3d379cda58781edd61f97b8be03dd0a9656c56e6b9be26b89b627a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:49 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:26:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:26:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:26:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:26:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:26:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:26:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de8924beca818a0b4f3c486fc7601f67a62a092db086ba93f86c0ad9a33e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 8.1 MB (8084796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beb48c0666ff14e213cd237faf64c807a84547600b78d809eab33dfbdea6dbc`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e68c5dce03082b0b7f56b27ca21993d03140c6a60c5855e139c7059e6ddf24`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 18.2 MB (18176727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d17624b9eb1c4ddd265fd8b204f6d7cbe4ab77d95194a403dae5f173b7bffd0`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 21.5 MB (21504859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1aa103b2286f46e316d91fd4f2e8c4b2094a2958e40f472fac0ac2a69f51bf`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 14.9 MB (14932265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e675b7c0cb64600f425310e6363f5644b81b96ebfcac3a8822b412359235e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56ba6e142fdeb3e3d8e3ad266ee5042b02b37f871f59ab03c735bcbcfdad4af`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394ea985feebf70f8ae020cdf746a36c06e48b77fb8d914e80140db89f6f98d`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:0049fde5c409d5a8feca86e6cec202ea5d37ce796e7be4ce48d1eeeb9e3c7e50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5dcecb9aa0515144fc75cc35ab8641d6ec7d073c0867fdad03bb75dc04599e`

```dockerfile
```

-	Layers:
	-	`sha256:26a197b06436cc238f39e460ca2c797e855417d079728db8e4c45c41c2098bb4`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:121a45bd7bfa4efe40af5a1ca65909ab02cf8cd760bc460f9f9bef98af4a996a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65207927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:806e18793bdd4e836d163add8ce6659b1d6d53bea0275f6a8e5dfc434cda2611`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:27:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:27:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:27:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f25f23befacdaad939196cfef814986853b85afe5525e50bc05d0adbd56aa3`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 7.4 MB (7380540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02955914e0d904776beca4aafe40fa9b3dfb82567436fb0673d1b0ab6a7aab`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c61d9720e5bd546181709f7e01ea39492d8030fe26bfad0280488a735bb8b`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 18.2 MB (18160978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217672f190cf9e9b719a12a5bb0e42b38bbbc6bdf9d79886f98df0f30fff2be`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 21.5 MB (21487117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893124f4b5e6a80ca6615c7223d51ebf8e972a3e346397c0edf6155578e79949`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 14.9 MB (14916521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62cf86c21498ad41edd807b542b7244a0e9258b28ba3f6eae4bbdb51b5a17f2`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b683931af247a82fec4b561d84210ab9d664d8959a971e5ea01637287f4e79`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1049962fd1c05d22836618fac2ece409099dd7b13885c542e5cb91cf5aff12d5`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:25259c600641db5dfdf2887690ea5c70c4a83ce6e1e6b386a07921f1abb5b6fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820c81c9ca6662f8c47280c8725460d1d53e1cdb2a3cf742bf19e8a358a4321f`

```dockerfile
```

-	Layers:
	-	`sha256:e6362dedbad3d66e134f572586a32df77fd18f21a0907d94b33e2ffe7a9f24eb`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d7ee65bd10b7f794c6bba9ce66cf0ec83f4cb9a606f68b2a804b11ceb00d60cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65411382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080285df0b68ffef071337d5c7d41ba313c88047b19213529a0bcb40b449f45e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:b6382dc826a4d0885d61b885a954aa88f84b696fc1b614962162e5c831147654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b376971aa7024b5617bee77dffd1bc2b6786330bc6cfbb81fc2a6d8ca384c15f`

```dockerfile
```

-	Layers:
	-	`sha256:01d7ea6efd1d0e3b597c8bb3f63a58ba7efeaf344f9cb18847b2a5121e3fb2d7`  
		Last Modified: Mon, 10 Aug 2026 23:28:47 GMT  
		Size: 38.3 KB (38261 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind`

```console
$ docker pull docker@sha256:12e683a161823b2a839aeea999b9d960e6e1f9a97b1679ad6b441982e2d9cf07
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
$ docker pull docker@sha256:ab772b0eaf0b01e5843f6574e50ccdfc34a7bdcb82bbf2decafde54a0ee884a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144702884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8193d29aa6a99a72ade95625654b79b60daf8e2af1a8a752c82378027fd2dda9`
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

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:77ef046d00c5b4d87bea714c097d6fbc329cec2156f98a4382e5859f89a8ba7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c002967c1c4cdbc70d971b31d5f5009f0840e60799888d72c37734e1f8ea711`

```dockerfile
```

-	Layers:
	-	`sha256:a786ed8612623af1eaeb634d028dff8112a1524b3b31b5399cc50996d9d93ba2`  
		Last Modified: Mon, 10 Aug 2026 23:33:30 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:9bd3102b0dc067fb15448a4376ce4d28ec9e66fd0b88d789a3899dd6321c0e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136364446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35d8077093dbd205bbe23c351cdbcce619d854c1b6032270c5a1fd451ab92aab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:49 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:26:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:26:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:26:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:26:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:26:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:26:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:22 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de8924beca818a0b4f3c486fc7601f67a62a092db086ba93f86c0ad9a33e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 8.1 MB (8084796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beb48c0666ff14e213cd237faf64c807a84547600b78d809eab33dfbdea6dbc`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e68c5dce03082b0b7f56b27ca21993d03140c6a60c5855e139c7059e6ddf24`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 18.2 MB (18176727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d17624b9eb1c4ddd265fd8b204f6d7cbe4ab77d95194a403dae5f173b7bffd0`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 21.5 MB (21504859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1aa103b2286f46e316d91fd4f2e8c4b2094a2958e40f472fac0ac2a69f51bf`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 14.9 MB (14932265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e675b7c0cb64600f425310e6363f5644b81b96ebfcac3a8822b412359235e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56ba6e142fdeb3e3d8e3ad266ee5042b02b37f871f59ab03c735bcbcfdad4af`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394ea985feebf70f8ae020cdf746a36c06e48b77fb8d914e80140db89f6f98d`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807b5559205b3b616ea66543fb6de7172c4857f797e8c7a1e5158675a695a741`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 7.3 MB (7304347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef5c1ba780ac487b9df90e60c36983881ac6c0ea9473292915f146fd10dfab5`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 90.7 KB (90704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d4daed5ef6b60ac5549e7449340dc6565243724de0ed8539f651b5f38af9c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611198340bf7ddfef45033ffd1d05426ff1124180507434bfc274ef3b86e9703`  
		Last Modified: Mon, 10 Aug 2026 23:33:34 GMT  
		Size: 62.7 MB (62709140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1c17629cb7d4c69b9f8abb0d26b2c7e5b40ed9330dbf23c8b12ff970464085`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb988fc39fdfccff6c36d8c50407bb2fea355eff572af3822e96120e67ab5c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:3ea5678153f70b86735bbdf98c3297650a7f86734f697fe5a46cde7cda344503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66073ffb4d0c80087723c357427942dc25b2acebd63e56e09876dfcdc54f7d93`

```dockerfile
```

-	Layers:
	-	`sha256:635b1695c222e0fab2ddb89a8f844c925e34b7384aad013fd3b70d9bae37c9d7`  
		Last Modified: Mon, 10 Aug 2026 23:33:31 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:b8a73d31d568a45f524f12225938cfeb2002a9ff2e654023ee88057386087e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134415816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9561965e57bb3af4e4441ee72cb268450a174765759fd02fc4e0ac718d97ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:27:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:27:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:27:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:28 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f25f23befacdaad939196cfef814986853b85afe5525e50bc05d0adbd56aa3`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 7.4 MB (7380540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02955914e0d904776beca4aafe40fa9b3dfb82567436fb0673d1b0ab6a7aab`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c61d9720e5bd546181709f7e01ea39492d8030fe26bfad0280488a735bb8b`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 18.2 MB (18160978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217672f190cf9e9b719a12a5bb0e42b38bbbc6bdf9d79886f98df0f30fff2be`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 21.5 MB (21487117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893124f4b5e6a80ca6615c7223d51ebf8e972a3e346397c0edf6155578e79949`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 14.9 MB (14916521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62cf86c21498ad41edd807b542b7244a0e9258b28ba3f6eae4bbdb51b5a17f2`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b683931af247a82fec4b561d84210ab9d664d8959a971e5ea01637287f4e79`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1049962fd1c05d22836618fac2ece409099dd7b13885c542e5cb91cf5aff12d5`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4e57e597b7f70a39a5eb6db2bb9f2c7bae9916907a957ca0f2606c86d9fca4`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 6.6 MB (6598827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b4185f3a425107c2693b154a1560a031cf47e78df595da1459b379e4e145cb`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 87.0 KB (86964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b172ffc0b88f4fa8ceb8520a85083520be781a5f18f9b0f46a50194dd2f00b1f`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108f9917a84ff84b3ed66757a368147dbcbc181f2b3e36f57bf2b511ea7f7723`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 62.5 MB (62516097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd07e05a21001889b8099f30c550484aacdea6e27c7916c80f95e500177d0ec`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2dc48c51815ce5931b12b8c0a7957ab158c11a325a03c2d2988051fc3e9309`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:0bafa1800a7b77315dddec147753a5f7a043c931b85e9971fab6487e9cda77e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14741eded070146f0dc77b325e43e92d498f985489b3e93c3bead3b058466a97`

```dockerfile
```

-	Layers:
	-	`sha256:39cad98a9b00d66ac344cc4fa61a39ce9d5c8c9f5bca4fe34bd183bd1b0553a7`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:df2316a6ed13583a9fd33b6cf2f99f43ff3b90f2766a2d97745703cd43caad8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133848938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003cd9eb3b560f4155b9476b6d7f8c87f904a2028a2a8aaca22f860e1a18c4ac`
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

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:33db97154be3d8c50e8782737cf97e6002be48e04a536e789661bd2ac82a11ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2f0b5020b208e3b79cf4e3fe6adbdfd3a6879e3298d30d04a517b6b8ddc4ae`

```dockerfile
```

-	Layers:
	-	`sha256:ae265669d1e6e88acf155cb1d698bcb932b169367678929dcc277dfa8f90760d`  
		Last Modified: Mon, 10 Aug 2026 23:33:27 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:8a213afdd096a44dff403aaf8eb58b7a96a63113f18a4b094b98b7d0ed7d948b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

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

### `docker:29-dind-rootless` - unknown; unknown

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

### `docker:29-dind-rootless` - linux; arm64 variant v8

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

### `docker:29-dind-rootless` - unknown; unknown

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

## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:08a43eb3bd620ab0b85dd569deb23ab812679355547440833c28075c87517746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:a2e851fc59868826a427be0c386bea6839fc690def7ea7078dc561c3589b2dd1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416068247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dd785d4eb5937896d5d409552af415c9c9fc825cc71b5cd67c61d24a0decb4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 10 Aug 2026 23:26:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:16 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:16 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:17 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:27:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:27:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:27:48 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:27:58 GMT
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
	-	`sha256:e7655b73ffdda9fd6d874b2ead23f3dc6064c341fa4a447ddd6fc1c04f79e45c`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a6248f8832e13558a11464ceeda6458cf59ebe9add5725b6c366362ecc3bea`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 403.2 KB (403246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef455c74943ad7e264bdd2f835ea2d15bc52484ee3d5acc5fa53c3d808d94d0f`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2412db2e4a3148a24d0ea7004fe8686dcf39d1302867077e018f77b2b6b2f1`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd45debb7ee8ff3188577dafeb9dcd5e178731230d39bfa0752750aa246c3d86`  
		Last Modified: Mon, 10 Aug 2026 23:28:08 GMT  
		Size: 20.2 MB (20238647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb1e0db89f2223c9bab0fe1237e4be258be34d7db21b704e16bb23cdbd39908`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cd25477ef52c0f1b151cf29a78399244820fa1d2c4439f8887113921beaeec`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2328d5cd7d586968307156423bf9b547ef7a71aca38e657939b498747c6943dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6feee692f3c6a11255a71925aba66958b485da1dc2b0ec76bd6b15e89928a2a`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 23.8 MB (23849016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff709657ec90401a5ebc3e4397c0c77b9b789e64270703d44137b54caf40791c`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf0f3d5c5e8f95b17389dcf78f045356737cdbed254f2b26e19d4ba3c8f89d4`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5722961775296a5c266ef41eae22d022f0f6e4a859f654c068d22007ea893fcd`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d987f342a056934012fc1cdded230da7d19ea233372f41a9e89e1f5f4951c5`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 16.6 MB (16557573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:54a80ad47d3da4df9350801d0a3b6621cacc4676b6665e0bcb95a9e3ea92404a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2218595240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bdd50fc4bcfe238314ff616ae25fa5754ccde8b1244033a07d3aacdfd21410e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 10 Aug 2026 23:26:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:39 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:41 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:42 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:28:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:06 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:28:07 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:28:08 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:28:28 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:28 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:28:29 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:28:30 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:28:46 GMT
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
	-	`sha256:76b658884677c166350e1d7a1d1c1b99ca0402ed936cd805e93aa7678ef319bc`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5732ba94563f450d8874e8d866159dbe3a7c3e25d1f5a393f63cb7ac8cfdc0`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 501.1 KB (501142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da2e673bea3444ba48a19851a0713f40d98d7e1ec3eeeb335f5a2abfee339fa`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45823866d85f780848fccb70a3790fcd8277d65094aba0630cdc0daa6cbd319b`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f15bd5c72742bfe3eae106e5f2cb72d638161f730606d6ce5a9aea6753799dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:57 GMT  
		Size: 20.2 MB (20196807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3b9b24ca16404341b027572c1011c5783864767c9bccef85d68b3f50d6fe42`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec334c0fd16a78e323f0c1403ff6dbc605a280f3d26e5e6f4dc5a6f322e5179`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fed49235760e09e24b7513bf7ca5479db0f19749f168ecdb7ca7b83116decbd`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4b01090090067ed360272b10f3d5add746a371b8abcc2eb158dc3ffdee85b8`  
		Last Modified: Mon, 10 Aug 2026 23:28:54 GMT  
		Size: 23.8 MB (23814204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379aa387141632a674fc8a479829419c14deb5ac186e738dfa5380df19aca362`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76558fcde97f13a9a90ee26aca4f27365c2429fb4f7f3108d9a637ea4c42f687`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10755c0848f0827e49dab33301294a71da8652bdfad564b5ec4b82d718b216ab`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a5ec88ac025079d7e8e89f3e0249285256d65ee88289b45ac44db6150d8fed`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 16.5 MB (16518172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:71ba24001284af0b114e9337c717706e7eaeba4d5e231aecfdc2590e0c43550f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:54a80ad47d3da4df9350801d0a3b6621cacc4676b6665e0bcb95a9e3ea92404a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2218595240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bdd50fc4bcfe238314ff616ae25fa5754ccde8b1244033a07d3aacdfd21410e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 10 Aug 2026 23:26:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:39 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:41 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:42 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:28:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:06 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:28:07 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:28:08 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:28:28 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:28 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:28:29 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:28:30 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:28:46 GMT
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
	-	`sha256:76b658884677c166350e1d7a1d1c1b99ca0402ed936cd805e93aa7678ef319bc`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5732ba94563f450d8874e8d866159dbe3a7c3e25d1f5a393f63cb7ac8cfdc0`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 501.1 KB (501142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da2e673bea3444ba48a19851a0713f40d98d7e1ec3eeeb335f5a2abfee339fa`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45823866d85f780848fccb70a3790fcd8277d65094aba0630cdc0daa6cbd319b`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f15bd5c72742bfe3eae106e5f2cb72d638161f730606d6ce5a9aea6753799dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:57 GMT  
		Size: 20.2 MB (20196807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3b9b24ca16404341b027572c1011c5783864767c9bccef85d68b3f50d6fe42`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec334c0fd16a78e323f0c1403ff6dbc605a280f3d26e5e6f4dc5a6f322e5179`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fed49235760e09e24b7513bf7ca5479db0f19749f168ecdb7ca7b83116decbd`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4b01090090067ed360272b10f3d5add746a371b8abcc2eb158dc3ffdee85b8`  
		Last Modified: Mon, 10 Aug 2026 23:28:54 GMT  
		Size: 23.8 MB (23814204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379aa387141632a674fc8a479829419c14deb5ac186e738dfa5380df19aca362`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76558fcde97f13a9a90ee26aca4f27365c2429fb4f7f3108d9a637ea4c42f687`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10755c0848f0827e49dab33301294a71da8652bdfad564b5ec4b82d718b216ab`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a5ec88ac025079d7e8e89f3e0249285256d65ee88289b45ac44db6150d8fed`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 16.5 MB (16518172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:367c577f1573eb97d1adf0d4e30378984b4df6bb70b935ef758af8d4a9090148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:29-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:a2e851fc59868826a427be0c386bea6839fc690def7ea7078dc561c3589b2dd1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416068247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dd785d4eb5937896d5d409552af415c9c9fc825cc71b5cd67c61d24a0decb4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 10 Aug 2026 23:26:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:16 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:16 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:17 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:27:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:27:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:27:48 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:27:58 GMT
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
	-	`sha256:e7655b73ffdda9fd6d874b2ead23f3dc6064c341fa4a447ddd6fc1c04f79e45c`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a6248f8832e13558a11464ceeda6458cf59ebe9add5725b6c366362ecc3bea`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 403.2 KB (403246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef455c74943ad7e264bdd2f835ea2d15bc52484ee3d5acc5fa53c3d808d94d0f`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2412db2e4a3148a24d0ea7004fe8686dcf39d1302867077e018f77b2b6b2f1`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd45debb7ee8ff3188577dafeb9dcd5e178731230d39bfa0752750aa246c3d86`  
		Last Modified: Mon, 10 Aug 2026 23:28:08 GMT  
		Size: 20.2 MB (20238647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb1e0db89f2223c9bab0fe1237e4be258be34d7db21b704e16bb23cdbd39908`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cd25477ef52c0f1b151cf29a78399244820fa1d2c4439f8887113921beaeec`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2328d5cd7d586968307156423bf9b547ef7a71aca38e657939b498747c6943dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6feee692f3c6a11255a71925aba66958b485da1dc2b0ec76bd6b15e89928a2a`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 23.8 MB (23849016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff709657ec90401a5ebc3e4397c0c77b9b789e64270703d44137b54caf40791c`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf0f3d5c5e8f95b17389dcf78f045356737cdbed254f2b26e19d4ba3c8f89d4`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5722961775296a5c266ef41eae22d022f0f6e4a859f654c068d22007ea893fcd`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d987f342a056934012fc1cdded230da7d19ea233372f41a9e89e1f5f4951c5`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 16.6 MB (16557573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7`

```console
$ docker pull docker@sha256:12e683a161823b2a839aeea999b9d960e6e1f9a97b1679ad6b441982e2d9cf07
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

### `docker:29.7` - linux; amd64

```console
$ docker pull docker@sha256:ab772b0eaf0b01e5843f6574e50ccdfc34a7bdcb82bbf2decafde54a0ee884a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144702884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8193d29aa6a99a72ade95625654b79b60daf8e2af1a8a752c82378027fd2dda9`
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

### `docker:29.7` - unknown; unknown

```console
$ docker pull docker@sha256:77ef046d00c5b4d87bea714c097d6fbc329cec2156f98a4382e5859f89a8ba7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c002967c1c4cdbc70d971b31d5f5009f0840e60799888d72c37734e1f8ea711`

```dockerfile
```

-	Layers:
	-	`sha256:a786ed8612623af1eaeb634d028dff8112a1524b3b31b5399cc50996d9d93ba2`  
		Last Modified: Mon, 10 Aug 2026 23:33:30 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7` - linux; arm variant v6

```console
$ docker pull docker@sha256:9bd3102b0dc067fb15448a4376ce4d28ec9e66fd0b88d789a3899dd6321c0e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136364446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35d8077093dbd205bbe23c351cdbcce619d854c1b6032270c5a1fd451ab92aab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:49 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:26:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:26:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:26:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:26:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:26:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:26:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:22 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de8924beca818a0b4f3c486fc7601f67a62a092db086ba93f86c0ad9a33e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 8.1 MB (8084796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beb48c0666ff14e213cd237faf64c807a84547600b78d809eab33dfbdea6dbc`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e68c5dce03082b0b7f56b27ca21993d03140c6a60c5855e139c7059e6ddf24`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 18.2 MB (18176727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d17624b9eb1c4ddd265fd8b204f6d7cbe4ab77d95194a403dae5f173b7bffd0`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 21.5 MB (21504859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1aa103b2286f46e316d91fd4f2e8c4b2094a2958e40f472fac0ac2a69f51bf`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 14.9 MB (14932265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e675b7c0cb64600f425310e6363f5644b81b96ebfcac3a8822b412359235e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56ba6e142fdeb3e3d8e3ad266ee5042b02b37f871f59ab03c735bcbcfdad4af`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394ea985feebf70f8ae020cdf746a36c06e48b77fb8d914e80140db89f6f98d`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807b5559205b3b616ea66543fb6de7172c4857f797e8c7a1e5158675a695a741`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 7.3 MB (7304347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef5c1ba780ac487b9df90e60c36983881ac6c0ea9473292915f146fd10dfab5`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 90.7 KB (90704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d4daed5ef6b60ac5549e7449340dc6565243724de0ed8539f651b5f38af9c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611198340bf7ddfef45033ffd1d05426ff1124180507434bfc274ef3b86e9703`  
		Last Modified: Mon, 10 Aug 2026 23:33:34 GMT  
		Size: 62.7 MB (62709140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1c17629cb7d4c69b9f8abb0d26b2c7e5b40ed9330dbf23c8b12ff970464085`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb988fc39fdfccff6c36d8c50407bb2fea355eff572af3822e96120e67ab5c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7` - unknown; unknown

```console
$ docker pull docker@sha256:3ea5678153f70b86735bbdf98c3297650a7f86734f697fe5a46cde7cda344503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66073ffb4d0c80087723c357427942dc25b2acebd63e56e09876dfcdc54f7d93`

```dockerfile
```

-	Layers:
	-	`sha256:635b1695c222e0fab2ddb89a8f844c925e34b7384aad013fd3b70d9bae37c9d7`  
		Last Modified: Mon, 10 Aug 2026 23:33:31 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7` - linux; arm variant v7

```console
$ docker pull docker@sha256:b8a73d31d568a45f524f12225938cfeb2002a9ff2e654023ee88057386087e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134415816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9561965e57bb3af4e4441ee72cb268450a174765759fd02fc4e0ac718d97ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:27:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:27:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:27:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:28 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f25f23befacdaad939196cfef814986853b85afe5525e50bc05d0adbd56aa3`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 7.4 MB (7380540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02955914e0d904776beca4aafe40fa9b3dfb82567436fb0673d1b0ab6a7aab`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c61d9720e5bd546181709f7e01ea39492d8030fe26bfad0280488a735bb8b`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 18.2 MB (18160978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217672f190cf9e9b719a12a5bb0e42b38bbbc6bdf9d79886f98df0f30fff2be`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 21.5 MB (21487117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893124f4b5e6a80ca6615c7223d51ebf8e972a3e346397c0edf6155578e79949`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 14.9 MB (14916521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62cf86c21498ad41edd807b542b7244a0e9258b28ba3f6eae4bbdb51b5a17f2`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b683931af247a82fec4b561d84210ab9d664d8959a971e5ea01637287f4e79`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1049962fd1c05d22836618fac2ece409099dd7b13885c542e5cb91cf5aff12d5`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4e57e597b7f70a39a5eb6db2bb9f2c7bae9916907a957ca0f2606c86d9fca4`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 6.6 MB (6598827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b4185f3a425107c2693b154a1560a031cf47e78df595da1459b379e4e145cb`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 87.0 KB (86964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b172ffc0b88f4fa8ceb8520a85083520be781a5f18f9b0f46a50194dd2f00b1f`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108f9917a84ff84b3ed66757a368147dbcbc181f2b3e36f57bf2b511ea7f7723`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 62.5 MB (62516097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd07e05a21001889b8099f30c550484aacdea6e27c7916c80f95e500177d0ec`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2dc48c51815ce5931b12b8c0a7957ab158c11a325a03c2d2988051fc3e9309`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7` - unknown; unknown

```console
$ docker pull docker@sha256:0bafa1800a7b77315dddec147753a5f7a043c931b85e9971fab6487e9cda77e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14741eded070146f0dc77b325e43e92d498f985489b3e93c3bead3b058466a97`

```dockerfile
```

-	Layers:
	-	`sha256:39cad98a9b00d66ac344cc4fa61a39ce9d5c8c9f5bca4fe34bd183bd1b0553a7`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:df2316a6ed13583a9fd33b6cf2f99f43ff3b90f2766a2d97745703cd43caad8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133848938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003cd9eb3b560f4155b9476b6d7f8c87f904a2028a2a8aaca22f860e1a18c4ac`
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

### `docker:29.7` - unknown; unknown

```console
$ docker pull docker@sha256:33db97154be3d8c50e8782737cf97e6002be48e04a536e789661bd2ac82a11ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2f0b5020b208e3b79cf4e3fe6adbdfd3a6879e3298d30d04a517b6b8ddc4ae`

```dockerfile
```

-	Layers:
	-	`sha256:ae265669d1e6e88acf155cb1d698bcb932b169367678929dcc277dfa8f90760d`  
		Last Modified: Mon, 10 Aug 2026 23:33:27 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7-cli`

```console
$ docker pull docker@sha256:000bb62ff495f986c9f5578eb67cc2cb98b91138eda81d7762d5371eb8a497fe
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

### `docker:29.7-cli` - linux; amd64

```console
$ docker pull docker@sha256:e650b7a58d7f56be91d4f7be799196380a3bbc1bcbc41f1f4dff1b36ac309e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70226334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10900ba73429df91dc30f1435013a3c5663e3478d12e89e465c44ca0a82edefe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.7-cli` - unknown; unknown

```console
$ docker pull docker@sha256:c9a70261ada62be91a181c546258f2e67c4f5fb59ad4a6bb87794569d98a7532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79df4847224b491b8bf8cd66492b0d27eeb9d0bfb52beff2b7c23f3b59789d28`

```dockerfile
```

-	Layers:
	-	`sha256:8285c61c58013694f5e7f7a8891511a615a81b7b7265bcbbfeedd96c2928c03d`  
		Last Modified: Mon, 10 Aug 2026 23:30:14 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:d3dd76b307376f2e95c2fae03f22c3f111d90126a2d3b6dfc28e308c0de4f302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66254251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b002fb3a3d379cda58781edd61f97b8be03dd0a9656c56e6b9be26b89b627a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:49 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:26:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:26:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:26:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:26:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:26:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:26:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de8924beca818a0b4f3c486fc7601f67a62a092db086ba93f86c0ad9a33e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 8.1 MB (8084796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beb48c0666ff14e213cd237faf64c807a84547600b78d809eab33dfbdea6dbc`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e68c5dce03082b0b7f56b27ca21993d03140c6a60c5855e139c7059e6ddf24`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 18.2 MB (18176727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d17624b9eb1c4ddd265fd8b204f6d7cbe4ab77d95194a403dae5f173b7bffd0`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 21.5 MB (21504859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1aa103b2286f46e316d91fd4f2e8c4b2094a2958e40f472fac0ac2a69f51bf`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 14.9 MB (14932265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e675b7c0cb64600f425310e6363f5644b81b96ebfcac3a8822b412359235e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56ba6e142fdeb3e3d8e3ad266ee5042b02b37f871f59ab03c735bcbcfdad4af`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394ea985feebf70f8ae020cdf746a36c06e48b77fb8d914e80140db89f6f98d`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-cli` - unknown; unknown

```console
$ docker pull docker@sha256:0049fde5c409d5a8feca86e6cec202ea5d37ce796e7be4ce48d1eeeb9e3c7e50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5dcecb9aa0515144fc75cc35ab8641d6ec7d073c0867fdad03bb75dc04599e`

```dockerfile
```

-	Layers:
	-	`sha256:26a197b06436cc238f39e460ca2c797e855417d079728db8e4c45c41c2098bb4`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:121a45bd7bfa4efe40af5a1ca65909ab02cf8cd760bc460f9f9bef98af4a996a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65207927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:806e18793bdd4e836d163add8ce6659b1d6d53bea0275f6a8e5dfc434cda2611`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:27:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:27:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:27:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f25f23befacdaad939196cfef814986853b85afe5525e50bc05d0adbd56aa3`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 7.4 MB (7380540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02955914e0d904776beca4aafe40fa9b3dfb82567436fb0673d1b0ab6a7aab`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c61d9720e5bd546181709f7e01ea39492d8030fe26bfad0280488a735bb8b`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 18.2 MB (18160978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217672f190cf9e9b719a12a5bb0e42b38bbbc6bdf9d79886f98df0f30fff2be`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 21.5 MB (21487117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893124f4b5e6a80ca6615c7223d51ebf8e972a3e346397c0edf6155578e79949`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 14.9 MB (14916521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62cf86c21498ad41edd807b542b7244a0e9258b28ba3f6eae4bbdb51b5a17f2`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b683931af247a82fec4b561d84210ab9d664d8959a971e5ea01637287f4e79`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1049962fd1c05d22836618fac2ece409099dd7b13885c542e5cb91cf5aff12d5`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-cli` - unknown; unknown

```console
$ docker pull docker@sha256:25259c600641db5dfdf2887690ea5c70c4a83ce6e1e6b386a07921f1abb5b6fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820c81c9ca6662f8c47280c8725460d1d53e1cdb2a3cf742bf19e8a358a4321f`

```dockerfile
```

-	Layers:
	-	`sha256:e6362dedbad3d66e134f572586a32df77fd18f21a0907d94b33e2ffe7a9f24eb`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d7ee65bd10b7f794c6bba9ce66cf0ec83f4cb9a606f68b2a804b11ceb00d60cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65411382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080285df0b68ffef071337d5c7d41ba313c88047b19213529a0bcb40b449f45e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.7-cli` - unknown; unknown

```console
$ docker pull docker@sha256:b6382dc826a4d0885d61b885a954aa88f84b696fc1b614962162e5c831147654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b376971aa7024b5617bee77dffd1bc2b6786330bc6cfbb81fc2a6d8ca384c15f`

```dockerfile
```

-	Layers:
	-	`sha256:01d7ea6efd1d0e3b597c8bb3f63a58ba7efeaf344f9cb18847b2a5121e3fb2d7`  
		Last Modified: Mon, 10 Aug 2026 23:28:47 GMT  
		Size: 38.3 KB (38261 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7-dind`

```console
$ docker pull docker@sha256:12e683a161823b2a839aeea999b9d960e6e1f9a97b1679ad6b441982e2d9cf07
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

### `docker:29.7-dind` - linux; amd64

```console
$ docker pull docker@sha256:ab772b0eaf0b01e5843f6574e50ccdfc34a7bdcb82bbf2decafde54a0ee884a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144702884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8193d29aa6a99a72ade95625654b79b60daf8e2af1a8a752c82378027fd2dda9`
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

### `docker:29.7-dind` - unknown; unknown

```console
$ docker pull docker@sha256:77ef046d00c5b4d87bea714c097d6fbc329cec2156f98a4382e5859f89a8ba7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c002967c1c4cdbc70d971b31d5f5009f0840e60799888d72c37734e1f8ea711`

```dockerfile
```

-	Layers:
	-	`sha256:a786ed8612623af1eaeb634d028dff8112a1524b3b31b5399cc50996d9d93ba2`  
		Last Modified: Mon, 10 Aug 2026 23:33:30 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:9bd3102b0dc067fb15448a4376ce4d28ec9e66fd0b88d789a3899dd6321c0e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136364446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35d8077093dbd205bbe23c351cdbcce619d854c1b6032270c5a1fd451ab92aab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:49 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:26:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:26:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:26:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:26:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:26:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:26:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:22 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de8924beca818a0b4f3c486fc7601f67a62a092db086ba93f86c0ad9a33e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 8.1 MB (8084796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beb48c0666ff14e213cd237faf64c807a84547600b78d809eab33dfbdea6dbc`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e68c5dce03082b0b7f56b27ca21993d03140c6a60c5855e139c7059e6ddf24`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 18.2 MB (18176727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d17624b9eb1c4ddd265fd8b204f6d7cbe4ab77d95194a403dae5f173b7bffd0`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 21.5 MB (21504859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1aa103b2286f46e316d91fd4f2e8c4b2094a2958e40f472fac0ac2a69f51bf`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 14.9 MB (14932265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e675b7c0cb64600f425310e6363f5644b81b96ebfcac3a8822b412359235e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56ba6e142fdeb3e3d8e3ad266ee5042b02b37f871f59ab03c735bcbcfdad4af`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394ea985feebf70f8ae020cdf746a36c06e48b77fb8d914e80140db89f6f98d`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807b5559205b3b616ea66543fb6de7172c4857f797e8c7a1e5158675a695a741`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 7.3 MB (7304347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef5c1ba780ac487b9df90e60c36983881ac6c0ea9473292915f146fd10dfab5`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 90.7 KB (90704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d4daed5ef6b60ac5549e7449340dc6565243724de0ed8539f651b5f38af9c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611198340bf7ddfef45033ffd1d05426ff1124180507434bfc274ef3b86e9703`  
		Last Modified: Mon, 10 Aug 2026 23:33:34 GMT  
		Size: 62.7 MB (62709140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1c17629cb7d4c69b9f8abb0d26b2c7e5b40ed9330dbf23c8b12ff970464085`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb988fc39fdfccff6c36d8c50407bb2fea355eff572af3822e96120e67ab5c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-dind` - unknown; unknown

```console
$ docker pull docker@sha256:3ea5678153f70b86735bbdf98c3297650a7f86734f697fe5a46cde7cda344503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66073ffb4d0c80087723c357427942dc25b2acebd63e56e09876dfcdc54f7d93`

```dockerfile
```

-	Layers:
	-	`sha256:635b1695c222e0fab2ddb89a8f844c925e34b7384aad013fd3b70d9bae37c9d7`  
		Last Modified: Mon, 10 Aug 2026 23:33:31 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:b8a73d31d568a45f524f12225938cfeb2002a9ff2e654023ee88057386087e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134415816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9561965e57bb3af4e4441ee72cb268450a174765759fd02fc4e0ac718d97ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:27:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:27:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:27:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:28 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f25f23befacdaad939196cfef814986853b85afe5525e50bc05d0adbd56aa3`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 7.4 MB (7380540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02955914e0d904776beca4aafe40fa9b3dfb82567436fb0673d1b0ab6a7aab`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c61d9720e5bd546181709f7e01ea39492d8030fe26bfad0280488a735bb8b`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 18.2 MB (18160978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217672f190cf9e9b719a12a5bb0e42b38bbbc6bdf9d79886f98df0f30fff2be`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 21.5 MB (21487117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893124f4b5e6a80ca6615c7223d51ebf8e972a3e346397c0edf6155578e79949`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 14.9 MB (14916521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62cf86c21498ad41edd807b542b7244a0e9258b28ba3f6eae4bbdb51b5a17f2`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b683931af247a82fec4b561d84210ab9d664d8959a971e5ea01637287f4e79`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1049962fd1c05d22836618fac2ece409099dd7b13885c542e5cb91cf5aff12d5`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4e57e597b7f70a39a5eb6db2bb9f2c7bae9916907a957ca0f2606c86d9fca4`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 6.6 MB (6598827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b4185f3a425107c2693b154a1560a031cf47e78df595da1459b379e4e145cb`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 87.0 KB (86964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b172ffc0b88f4fa8ceb8520a85083520be781a5f18f9b0f46a50194dd2f00b1f`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108f9917a84ff84b3ed66757a368147dbcbc181f2b3e36f57bf2b511ea7f7723`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 62.5 MB (62516097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd07e05a21001889b8099f30c550484aacdea6e27c7916c80f95e500177d0ec`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2dc48c51815ce5931b12b8c0a7957ab158c11a325a03c2d2988051fc3e9309`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7-dind` - unknown; unknown

```console
$ docker pull docker@sha256:0bafa1800a7b77315dddec147753a5f7a043c931b85e9971fab6487e9cda77e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14741eded070146f0dc77b325e43e92d498f985489b3e93c3bead3b058466a97`

```dockerfile
```

-	Layers:
	-	`sha256:39cad98a9b00d66ac344cc4fa61a39ce9d5c8c9f5bca4fe34bd183bd1b0553a7`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:df2316a6ed13583a9fd33b6cf2f99f43ff3b90f2766a2d97745703cd43caad8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133848938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003cd9eb3b560f4155b9476b6d7f8c87f904a2028a2a8aaca22f860e1a18c4ac`
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

### `docker:29.7-dind` - unknown; unknown

```console
$ docker pull docker@sha256:33db97154be3d8c50e8782737cf97e6002be48e04a536e789661bd2ac82a11ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2f0b5020b208e3b79cf4e3fe6adbdfd3a6879e3298d30d04a517b6b8ddc4ae`

```dockerfile
```

-	Layers:
	-	`sha256:ae265669d1e6e88acf155cb1d698bcb932b169367678929dcc277dfa8f90760d`  
		Last Modified: Mon, 10 Aug 2026 23:33:27 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7-dind-rootless`

```console
$ docker pull docker@sha256:8a213afdd096a44dff403aaf8eb58b7a96a63113f18a4b094b98b7d0ed7d948b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.7-dind-rootless` - linux; amd64

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

### `docker:29.7-dind-rootless` - unknown; unknown

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

### `docker:29.7-dind-rootless` - linux; arm64 variant v8

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

### `docker:29.7-dind-rootless` - unknown; unknown

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

## `docker:29.7-windowsservercore`

```console
$ docker pull docker@sha256:08a43eb3bd620ab0b85dd569deb23ab812679355547440833c28075c87517746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:29.7-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:a2e851fc59868826a427be0c386bea6839fc690def7ea7078dc561c3589b2dd1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416068247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dd785d4eb5937896d5d409552af415c9c9fc825cc71b5cd67c61d24a0decb4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 10 Aug 2026 23:26:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:16 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:16 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:17 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:27:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:27:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:27:48 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:27:58 GMT
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
	-	`sha256:e7655b73ffdda9fd6d874b2ead23f3dc6064c341fa4a447ddd6fc1c04f79e45c`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a6248f8832e13558a11464ceeda6458cf59ebe9add5725b6c366362ecc3bea`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 403.2 KB (403246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef455c74943ad7e264bdd2f835ea2d15bc52484ee3d5acc5fa53c3d808d94d0f`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2412db2e4a3148a24d0ea7004fe8686dcf39d1302867077e018f77b2b6b2f1`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd45debb7ee8ff3188577dafeb9dcd5e178731230d39bfa0752750aa246c3d86`  
		Last Modified: Mon, 10 Aug 2026 23:28:08 GMT  
		Size: 20.2 MB (20238647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb1e0db89f2223c9bab0fe1237e4be258be34d7db21b704e16bb23cdbd39908`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cd25477ef52c0f1b151cf29a78399244820fa1d2c4439f8887113921beaeec`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2328d5cd7d586968307156423bf9b547ef7a71aca38e657939b498747c6943dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6feee692f3c6a11255a71925aba66958b485da1dc2b0ec76bd6b15e89928a2a`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 23.8 MB (23849016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff709657ec90401a5ebc3e4397c0c77b9b789e64270703d44137b54caf40791c`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf0f3d5c5e8f95b17389dcf78f045356737cdbed254f2b26e19d4ba3c8f89d4`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5722961775296a5c266ef41eae22d022f0f6e4a859f654c068d22007ea893fcd`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d987f342a056934012fc1cdded230da7d19ea233372f41a9e89e1f5f4951c5`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 16.6 MB (16557573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.7-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:54a80ad47d3da4df9350801d0a3b6621cacc4676b6665e0bcb95a9e3ea92404a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2218595240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bdd50fc4bcfe238314ff616ae25fa5754ccde8b1244033a07d3aacdfd21410e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 10 Aug 2026 23:26:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:39 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:41 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:42 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:28:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:06 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:28:07 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:28:08 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:28:28 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:28 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:28:29 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:28:30 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:28:46 GMT
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
	-	`sha256:76b658884677c166350e1d7a1d1c1b99ca0402ed936cd805e93aa7678ef319bc`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5732ba94563f450d8874e8d866159dbe3a7c3e25d1f5a393f63cb7ac8cfdc0`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 501.1 KB (501142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da2e673bea3444ba48a19851a0713f40d98d7e1ec3eeeb335f5a2abfee339fa`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45823866d85f780848fccb70a3790fcd8277d65094aba0630cdc0daa6cbd319b`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f15bd5c72742bfe3eae106e5f2cb72d638161f730606d6ce5a9aea6753799dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:57 GMT  
		Size: 20.2 MB (20196807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3b9b24ca16404341b027572c1011c5783864767c9bccef85d68b3f50d6fe42`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec334c0fd16a78e323f0c1403ff6dbc605a280f3d26e5e6f4dc5a6f322e5179`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fed49235760e09e24b7513bf7ca5479db0f19749f168ecdb7ca7b83116decbd`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4b01090090067ed360272b10f3d5add746a371b8abcc2eb158dc3ffdee85b8`  
		Last Modified: Mon, 10 Aug 2026 23:28:54 GMT  
		Size: 23.8 MB (23814204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379aa387141632a674fc8a479829419c14deb5ac186e738dfa5380df19aca362`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76558fcde97f13a9a90ee26aca4f27365c2429fb4f7f3108d9a637ea4c42f687`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10755c0848f0827e49dab33301294a71da8652bdfad564b5ec4b82d718b216ab`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a5ec88ac025079d7e8e89f3e0249285256d65ee88289b45ac44db6150d8fed`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 16.5 MB (16518172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:71ba24001284af0b114e9337c717706e7eaeba4d5e231aecfdc2590e0c43550f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:29.7-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:54a80ad47d3da4df9350801d0a3b6621cacc4676b6665e0bcb95a9e3ea92404a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2218595240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bdd50fc4bcfe238314ff616ae25fa5754ccde8b1244033a07d3aacdfd21410e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 10 Aug 2026 23:26:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:39 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:41 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:42 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:28:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:06 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:28:07 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:28:08 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:28:28 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:28 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:28:29 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:28:30 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:28:46 GMT
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
	-	`sha256:76b658884677c166350e1d7a1d1c1b99ca0402ed936cd805e93aa7678ef319bc`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5732ba94563f450d8874e8d866159dbe3a7c3e25d1f5a393f63cb7ac8cfdc0`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 501.1 KB (501142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da2e673bea3444ba48a19851a0713f40d98d7e1ec3eeeb335f5a2abfee339fa`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45823866d85f780848fccb70a3790fcd8277d65094aba0630cdc0daa6cbd319b`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f15bd5c72742bfe3eae106e5f2cb72d638161f730606d6ce5a9aea6753799dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:57 GMT  
		Size: 20.2 MB (20196807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3b9b24ca16404341b027572c1011c5783864767c9bccef85d68b3f50d6fe42`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec334c0fd16a78e323f0c1403ff6dbc605a280f3d26e5e6f4dc5a6f322e5179`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fed49235760e09e24b7513bf7ca5479db0f19749f168ecdb7ca7b83116decbd`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4b01090090067ed360272b10f3d5add746a371b8abcc2eb158dc3ffdee85b8`  
		Last Modified: Mon, 10 Aug 2026 23:28:54 GMT  
		Size: 23.8 MB (23814204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379aa387141632a674fc8a479829419c14deb5ac186e738dfa5380df19aca362`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76558fcde97f13a9a90ee26aca4f27365c2429fb4f7f3108d9a637ea4c42f687`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10755c0848f0827e49dab33301294a71da8652bdfad564b5ec4b82d718b216ab`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a5ec88ac025079d7e8e89f3e0249285256d65ee88289b45ac44db6150d8fed`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 16.5 MB (16518172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:367c577f1573eb97d1adf0d4e30378984b4df6bb70b935ef758af8d4a9090148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:29.7-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:a2e851fc59868826a427be0c386bea6839fc690def7ea7078dc561c3589b2dd1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416068247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dd785d4eb5937896d5d409552af415c9c9fc825cc71b5cd67c61d24a0decb4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 10 Aug 2026 23:26:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:16 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:16 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:17 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:27:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:27:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:27:48 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:27:58 GMT
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
	-	`sha256:e7655b73ffdda9fd6d874b2ead23f3dc6064c341fa4a447ddd6fc1c04f79e45c`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a6248f8832e13558a11464ceeda6458cf59ebe9add5725b6c366362ecc3bea`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 403.2 KB (403246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef455c74943ad7e264bdd2f835ea2d15bc52484ee3d5acc5fa53c3d808d94d0f`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2412db2e4a3148a24d0ea7004fe8686dcf39d1302867077e018f77b2b6b2f1`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd45debb7ee8ff3188577dafeb9dcd5e178731230d39bfa0752750aa246c3d86`  
		Last Modified: Mon, 10 Aug 2026 23:28:08 GMT  
		Size: 20.2 MB (20238647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb1e0db89f2223c9bab0fe1237e4be258be34d7db21b704e16bb23cdbd39908`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cd25477ef52c0f1b151cf29a78399244820fa1d2c4439f8887113921beaeec`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2328d5cd7d586968307156423bf9b547ef7a71aca38e657939b498747c6943dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6feee692f3c6a11255a71925aba66958b485da1dc2b0ec76bd6b15e89928a2a`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 23.8 MB (23849016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff709657ec90401a5ebc3e4397c0c77b9b789e64270703d44137b54caf40791c`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf0f3d5c5e8f95b17389dcf78f045356737cdbed254f2b26e19d4ba3c8f89d4`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5722961775296a5c266ef41eae22d022f0f6e4a859f654c068d22007ea893fcd`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d987f342a056934012fc1cdded230da7d19ea233372f41a9e89e1f5f4951c5`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 16.6 MB (16557573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7.2`

```console
$ docker pull docker@sha256:12e683a161823b2a839aeea999b9d960e6e1f9a97b1679ad6b441982e2d9cf07
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

### `docker:29.7.2` - linux; amd64

```console
$ docker pull docker@sha256:ab772b0eaf0b01e5843f6574e50ccdfc34a7bdcb82bbf2decafde54a0ee884a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144702884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8193d29aa6a99a72ade95625654b79b60daf8e2af1a8a752c82378027fd2dda9`
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

### `docker:29.7.2` - unknown; unknown

```console
$ docker pull docker@sha256:77ef046d00c5b4d87bea714c097d6fbc329cec2156f98a4382e5859f89a8ba7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c002967c1c4cdbc70d971b31d5f5009f0840e60799888d72c37734e1f8ea711`

```dockerfile
```

-	Layers:
	-	`sha256:a786ed8612623af1eaeb634d028dff8112a1524b3b31b5399cc50996d9d93ba2`  
		Last Modified: Mon, 10 Aug 2026 23:33:30 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2` - linux; arm variant v6

```console
$ docker pull docker@sha256:9bd3102b0dc067fb15448a4376ce4d28ec9e66fd0b88d789a3899dd6321c0e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136364446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35d8077093dbd205bbe23c351cdbcce619d854c1b6032270c5a1fd451ab92aab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:49 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:26:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:26:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:26:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:26:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:26:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:26:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:22 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de8924beca818a0b4f3c486fc7601f67a62a092db086ba93f86c0ad9a33e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 8.1 MB (8084796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beb48c0666ff14e213cd237faf64c807a84547600b78d809eab33dfbdea6dbc`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e68c5dce03082b0b7f56b27ca21993d03140c6a60c5855e139c7059e6ddf24`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 18.2 MB (18176727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d17624b9eb1c4ddd265fd8b204f6d7cbe4ab77d95194a403dae5f173b7bffd0`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 21.5 MB (21504859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1aa103b2286f46e316d91fd4f2e8c4b2094a2958e40f472fac0ac2a69f51bf`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 14.9 MB (14932265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e675b7c0cb64600f425310e6363f5644b81b96ebfcac3a8822b412359235e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56ba6e142fdeb3e3d8e3ad266ee5042b02b37f871f59ab03c735bcbcfdad4af`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394ea985feebf70f8ae020cdf746a36c06e48b77fb8d914e80140db89f6f98d`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807b5559205b3b616ea66543fb6de7172c4857f797e8c7a1e5158675a695a741`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 7.3 MB (7304347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef5c1ba780ac487b9df90e60c36983881ac6c0ea9473292915f146fd10dfab5`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 90.7 KB (90704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d4daed5ef6b60ac5549e7449340dc6565243724de0ed8539f651b5f38af9c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611198340bf7ddfef45033ffd1d05426ff1124180507434bfc274ef3b86e9703`  
		Last Modified: Mon, 10 Aug 2026 23:33:34 GMT  
		Size: 62.7 MB (62709140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1c17629cb7d4c69b9f8abb0d26b2c7e5b40ed9330dbf23c8b12ff970464085`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb988fc39fdfccff6c36d8c50407bb2fea355eff572af3822e96120e67ab5c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.2` - unknown; unknown

```console
$ docker pull docker@sha256:3ea5678153f70b86735bbdf98c3297650a7f86734f697fe5a46cde7cda344503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66073ffb4d0c80087723c357427942dc25b2acebd63e56e09876dfcdc54f7d93`

```dockerfile
```

-	Layers:
	-	`sha256:635b1695c222e0fab2ddb89a8f844c925e34b7384aad013fd3b70d9bae37c9d7`  
		Last Modified: Mon, 10 Aug 2026 23:33:31 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2` - linux; arm variant v7

```console
$ docker pull docker@sha256:b8a73d31d568a45f524f12225938cfeb2002a9ff2e654023ee88057386087e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134415816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9561965e57bb3af4e4441ee72cb268450a174765759fd02fc4e0ac718d97ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:27:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:27:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:27:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:28 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f25f23befacdaad939196cfef814986853b85afe5525e50bc05d0adbd56aa3`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 7.4 MB (7380540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02955914e0d904776beca4aafe40fa9b3dfb82567436fb0673d1b0ab6a7aab`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c61d9720e5bd546181709f7e01ea39492d8030fe26bfad0280488a735bb8b`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 18.2 MB (18160978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217672f190cf9e9b719a12a5bb0e42b38bbbc6bdf9d79886f98df0f30fff2be`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 21.5 MB (21487117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893124f4b5e6a80ca6615c7223d51ebf8e972a3e346397c0edf6155578e79949`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 14.9 MB (14916521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62cf86c21498ad41edd807b542b7244a0e9258b28ba3f6eae4bbdb51b5a17f2`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b683931af247a82fec4b561d84210ab9d664d8959a971e5ea01637287f4e79`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1049962fd1c05d22836618fac2ece409099dd7b13885c542e5cb91cf5aff12d5`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4e57e597b7f70a39a5eb6db2bb9f2c7bae9916907a957ca0f2606c86d9fca4`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 6.6 MB (6598827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b4185f3a425107c2693b154a1560a031cf47e78df595da1459b379e4e145cb`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 87.0 KB (86964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b172ffc0b88f4fa8ceb8520a85083520be781a5f18f9b0f46a50194dd2f00b1f`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108f9917a84ff84b3ed66757a368147dbcbc181f2b3e36f57bf2b511ea7f7723`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 62.5 MB (62516097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd07e05a21001889b8099f30c550484aacdea6e27c7916c80f95e500177d0ec`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2dc48c51815ce5931b12b8c0a7957ab158c11a325a03c2d2988051fc3e9309`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.2` - unknown; unknown

```console
$ docker pull docker@sha256:0bafa1800a7b77315dddec147753a5f7a043c931b85e9971fab6487e9cda77e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14741eded070146f0dc77b325e43e92d498f985489b3e93c3bead3b058466a97`

```dockerfile
```

-	Layers:
	-	`sha256:39cad98a9b00d66ac344cc4fa61a39ce9d5c8c9f5bca4fe34bd183bd1b0553a7`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:df2316a6ed13583a9fd33b6cf2f99f43ff3b90f2766a2d97745703cd43caad8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133848938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003cd9eb3b560f4155b9476b6d7f8c87f904a2028a2a8aaca22f860e1a18c4ac`
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

### `docker:29.7.2` - unknown; unknown

```console
$ docker pull docker@sha256:33db97154be3d8c50e8782737cf97e6002be48e04a536e789661bd2ac82a11ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2f0b5020b208e3b79cf4e3fe6adbdfd3a6879e3298d30d04a517b6b8ddc4ae`

```dockerfile
```

-	Layers:
	-	`sha256:ae265669d1e6e88acf155cb1d698bcb932b169367678929dcc277dfa8f90760d`  
		Last Modified: Mon, 10 Aug 2026 23:33:27 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7.2-alpine3.24`

```console
$ docker pull docker@sha256:12e683a161823b2a839aeea999b9d960e6e1f9a97b1679ad6b441982e2d9cf07
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

### `docker:29.7.2-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:ab772b0eaf0b01e5843f6574e50ccdfc34a7bdcb82bbf2decafde54a0ee884a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144702884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8193d29aa6a99a72ade95625654b79b60daf8e2af1a8a752c82378027fd2dda9`
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

### `docker:29.7.2-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:77ef046d00c5b4d87bea714c097d6fbc329cec2156f98a4382e5859f89a8ba7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c002967c1c4cdbc70d971b31d5f5009f0840e60799888d72c37734e1f8ea711`

```dockerfile
```

-	Layers:
	-	`sha256:a786ed8612623af1eaeb634d028dff8112a1524b3b31b5399cc50996d9d93ba2`  
		Last Modified: Mon, 10 Aug 2026 23:33:30 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:9bd3102b0dc067fb15448a4376ce4d28ec9e66fd0b88d789a3899dd6321c0e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136364446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35d8077093dbd205bbe23c351cdbcce619d854c1b6032270c5a1fd451ab92aab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:49 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:26:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:26:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:26:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:26:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:26:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:26:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:22 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de8924beca818a0b4f3c486fc7601f67a62a092db086ba93f86c0ad9a33e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 8.1 MB (8084796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beb48c0666ff14e213cd237faf64c807a84547600b78d809eab33dfbdea6dbc`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e68c5dce03082b0b7f56b27ca21993d03140c6a60c5855e139c7059e6ddf24`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 18.2 MB (18176727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d17624b9eb1c4ddd265fd8b204f6d7cbe4ab77d95194a403dae5f173b7bffd0`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 21.5 MB (21504859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1aa103b2286f46e316d91fd4f2e8c4b2094a2958e40f472fac0ac2a69f51bf`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 14.9 MB (14932265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e675b7c0cb64600f425310e6363f5644b81b96ebfcac3a8822b412359235e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56ba6e142fdeb3e3d8e3ad266ee5042b02b37f871f59ab03c735bcbcfdad4af`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394ea985feebf70f8ae020cdf746a36c06e48b77fb8d914e80140db89f6f98d`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807b5559205b3b616ea66543fb6de7172c4857f797e8c7a1e5158675a695a741`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 7.3 MB (7304347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef5c1ba780ac487b9df90e60c36983881ac6c0ea9473292915f146fd10dfab5`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 90.7 KB (90704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d4daed5ef6b60ac5549e7449340dc6565243724de0ed8539f651b5f38af9c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611198340bf7ddfef45033ffd1d05426ff1124180507434bfc274ef3b86e9703`  
		Last Modified: Mon, 10 Aug 2026 23:33:34 GMT  
		Size: 62.7 MB (62709140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1c17629cb7d4c69b9f8abb0d26b2c7e5b40ed9330dbf23c8b12ff970464085`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb988fc39fdfccff6c36d8c50407bb2fea355eff572af3822e96120e67ab5c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.2-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:3ea5678153f70b86735bbdf98c3297650a7f86734f697fe5a46cde7cda344503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66073ffb4d0c80087723c357427942dc25b2acebd63e56e09876dfcdc54f7d93`

```dockerfile
```

-	Layers:
	-	`sha256:635b1695c222e0fab2ddb89a8f844c925e34b7384aad013fd3b70d9bae37c9d7`  
		Last Modified: Mon, 10 Aug 2026 23:33:31 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:b8a73d31d568a45f524f12225938cfeb2002a9ff2e654023ee88057386087e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134415816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9561965e57bb3af4e4441ee72cb268450a174765759fd02fc4e0ac718d97ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:27:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:27:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:27:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:28 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f25f23befacdaad939196cfef814986853b85afe5525e50bc05d0adbd56aa3`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 7.4 MB (7380540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02955914e0d904776beca4aafe40fa9b3dfb82567436fb0673d1b0ab6a7aab`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c61d9720e5bd546181709f7e01ea39492d8030fe26bfad0280488a735bb8b`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 18.2 MB (18160978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217672f190cf9e9b719a12a5bb0e42b38bbbc6bdf9d79886f98df0f30fff2be`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 21.5 MB (21487117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893124f4b5e6a80ca6615c7223d51ebf8e972a3e346397c0edf6155578e79949`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 14.9 MB (14916521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62cf86c21498ad41edd807b542b7244a0e9258b28ba3f6eae4bbdb51b5a17f2`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b683931af247a82fec4b561d84210ab9d664d8959a971e5ea01637287f4e79`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1049962fd1c05d22836618fac2ece409099dd7b13885c542e5cb91cf5aff12d5`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4e57e597b7f70a39a5eb6db2bb9f2c7bae9916907a957ca0f2606c86d9fca4`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 6.6 MB (6598827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b4185f3a425107c2693b154a1560a031cf47e78df595da1459b379e4e145cb`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 87.0 KB (86964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b172ffc0b88f4fa8ceb8520a85083520be781a5f18f9b0f46a50194dd2f00b1f`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108f9917a84ff84b3ed66757a368147dbcbc181f2b3e36f57bf2b511ea7f7723`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 62.5 MB (62516097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd07e05a21001889b8099f30c550484aacdea6e27c7916c80f95e500177d0ec`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2dc48c51815ce5931b12b8c0a7957ab158c11a325a03c2d2988051fc3e9309`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.2-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:0bafa1800a7b77315dddec147753a5f7a043c931b85e9971fab6487e9cda77e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14741eded070146f0dc77b325e43e92d498f985489b3e93c3bead3b058466a97`

```dockerfile
```

-	Layers:
	-	`sha256:39cad98a9b00d66ac344cc4fa61a39ce9d5c8c9f5bca4fe34bd183bd1b0553a7`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:df2316a6ed13583a9fd33b6cf2f99f43ff3b90f2766a2d97745703cd43caad8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133848938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003cd9eb3b560f4155b9476b6d7f8c87f904a2028a2a8aaca22f860e1a18c4ac`
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

### `docker:29.7.2-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:33db97154be3d8c50e8782737cf97e6002be48e04a536e789661bd2ac82a11ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2f0b5020b208e3b79cf4e3fe6adbdfd3a6879e3298d30d04a517b6b8ddc4ae`

```dockerfile
```

-	Layers:
	-	`sha256:ae265669d1e6e88acf155cb1d698bcb932b169367678929dcc277dfa8f90760d`  
		Last Modified: Mon, 10 Aug 2026 23:33:27 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7.2-cli`

```console
$ docker pull docker@sha256:000bb62ff495f986c9f5578eb67cc2cb98b91138eda81d7762d5371eb8a497fe
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

### `docker:29.7.2-cli` - linux; amd64

```console
$ docker pull docker@sha256:e650b7a58d7f56be91d4f7be799196380a3bbc1bcbc41f1f4dff1b36ac309e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70226334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10900ba73429df91dc30f1435013a3c5663e3478d12e89e465c44ca0a82edefe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.7.2-cli` - unknown; unknown

```console
$ docker pull docker@sha256:c9a70261ada62be91a181c546258f2e67c4f5fb59ad4a6bb87794569d98a7532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79df4847224b491b8bf8cd66492b0d27eeb9d0bfb52beff2b7c23f3b59789d28`

```dockerfile
```

-	Layers:
	-	`sha256:8285c61c58013694f5e7f7a8891511a615a81b7b7265bcbbfeedd96c2928c03d`  
		Last Modified: Mon, 10 Aug 2026 23:30:14 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:d3dd76b307376f2e95c2fae03f22c3f111d90126a2d3b6dfc28e308c0de4f302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66254251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b002fb3a3d379cda58781edd61f97b8be03dd0a9656c56e6b9be26b89b627a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:49 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:26:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:26:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:26:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:26:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:26:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:26:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de8924beca818a0b4f3c486fc7601f67a62a092db086ba93f86c0ad9a33e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 8.1 MB (8084796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beb48c0666ff14e213cd237faf64c807a84547600b78d809eab33dfbdea6dbc`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e68c5dce03082b0b7f56b27ca21993d03140c6a60c5855e139c7059e6ddf24`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 18.2 MB (18176727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d17624b9eb1c4ddd265fd8b204f6d7cbe4ab77d95194a403dae5f173b7bffd0`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 21.5 MB (21504859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1aa103b2286f46e316d91fd4f2e8c4b2094a2958e40f472fac0ac2a69f51bf`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 14.9 MB (14932265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e675b7c0cb64600f425310e6363f5644b81b96ebfcac3a8822b412359235e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56ba6e142fdeb3e3d8e3ad266ee5042b02b37f871f59ab03c735bcbcfdad4af`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394ea985feebf70f8ae020cdf746a36c06e48b77fb8d914e80140db89f6f98d`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.2-cli` - unknown; unknown

```console
$ docker pull docker@sha256:0049fde5c409d5a8feca86e6cec202ea5d37ce796e7be4ce48d1eeeb9e3c7e50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5dcecb9aa0515144fc75cc35ab8641d6ec7d073c0867fdad03bb75dc04599e`

```dockerfile
```

-	Layers:
	-	`sha256:26a197b06436cc238f39e460ca2c797e855417d079728db8e4c45c41c2098bb4`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:121a45bd7bfa4efe40af5a1ca65909ab02cf8cd760bc460f9f9bef98af4a996a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65207927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:806e18793bdd4e836d163add8ce6659b1d6d53bea0275f6a8e5dfc434cda2611`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:27:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:27:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:27:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f25f23befacdaad939196cfef814986853b85afe5525e50bc05d0adbd56aa3`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 7.4 MB (7380540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02955914e0d904776beca4aafe40fa9b3dfb82567436fb0673d1b0ab6a7aab`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c61d9720e5bd546181709f7e01ea39492d8030fe26bfad0280488a735bb8b`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 18.2 MB (18160978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217672f190cf9e9b719a12a5bb0e42b38bbbc6bdf9d79886f98df0f30fff2be`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 21.5 MB (21487117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893124f4b5e6a80ca6615c7223d51ebf8e972a3e346397c0edf6155578e79949`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 14.9 MB (14916521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62cf86c21498ad41edd807b542b7244a0e9258b28ba3f6eae4bbdb51b5a17f2`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b683931af247a82fec4b561d84210ab9d664d8959a971e5ea01637287f4e79`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1049962fd1c05d22836618fac2ece409099dd7b13885c542e5cb91cf5aff12d5`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.2-cli` - unknown; unknown

```console
$ docker pull docker@sha256:25259c600641db5dfdf2887690ea5c70c4a83ce6e1e6b386a07921f1abb5b6fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820c81c9ca6662f8c47280c8725460d1d53e1cdb2a3cf742bf19e8a358a4321f`

```dockerfile
```

-	Layers:
	-	`sha256:e6362dedbad3d66e134f572586a32df77fd18f21a0907d94b33e2ffe7a9f24eb`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d7ee65bd10b7f794c6bba9ce66cf0ec83f4cb9a606f68b2a804b11ceb00d60cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65411382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080285df0b68ffef071337d5c7d41ba313c88047b19213529a0bcb40b449f45e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.7.2-cli` - unknown; unknown

```console
$ docker pull docker@sha256:b6382dc826a4d0885d61b885a954aa88f84b696fc1b614962162e5c831147654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b376971aa7024b5617bee77dffd1bc2b6786330bc6cfbb81fc2a6d8ca384c15f`

```dockerfile
```

-	Layers:
	-	`sha256:01d7ea6efd1d0e3b597c8bb3f63a58ba7efeaf344f9cb18847b2a5121e3fb2d7`  
		Last Modified: Mon, 10 Aug 2026 23:28:47 GMT  
		Size: 38.3 KB (38261 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7.2-cli-alpine3.24`

```console
$ docker pull docker@sha256:000bb62ff495f986c9f5578eb67cc2cb98b91138eda81d7762d5371eb8a497fe
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

### `docker:29.7.2-cli-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:e650b7a58d7f56be91d4f7be799196380a3bbc1bcbc41f1f4dff1b36ac309e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70226334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10900ba73429df91dc30f1435013a3c5663e3478d12e89e465c44ca0a82edefe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.7.2-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:c9a70261ada62be91a181c546258f2e67c4f5fb59ad4a6bb87794569d98a7532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79df4847224b491b8bf8cd66492b0d27eeb9d0bfb52beff2b7c23f3b59789d28`

```dockerfile
```

-	Layers:
	-	`sha256:8285c61c58013694f5e7f7a8891511a615a81b7b7265bcbbfeedd96c2928c03d`  
		Last Modified: Mon, 10 Aug 2026 23:30:14 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2-cli-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:d3dd76b307376f2e95c2fae03f22c3f111d90126a2d3b6dfc28e308c0de4f302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66254251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b002fb3a3d379cda58781edd61f97b8be03dd0a9656c56e6b9be26b89b627a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:49 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:26:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:26:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:26:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:26:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:26:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:26:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de8924beca818a0b4f3c486fc7601f67a62a092db086ba93f86c0ad9a33e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 8.1 MB (8084796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beb48c0666ff14e213cd237faf64c807a84547600b78d809eab33dfbdea6dbc`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e68c5dce03082b0b7f56b27ca21993d03140c6a60c5855e139c7059e6ddf24`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 18.2 MB (18176727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d17624b9eb1c4ddd265fd8b204f6d7cbe4ab77d95194a403dae5f173b7bffd0`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 21.5 MB (21504859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1aa103b2286f46e316d91fd4f2e8c4b2094a2958e40f472fac0ac2a69f51bf`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 14.9 MB (14932265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e675b7c0cb64600f425310e6363f5644b81b96ebfcac3a8822b412359235e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56ba6e142fdeb3e3d8e3ad266ee5042b02b37f871f59ab03c735bcbcfdad4af`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394ea985feebf70f8ae020cdf746a36c06e48b77fb8d914e80140db89f6f98d`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.2-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:0049fde5c409d5a8feca86e6cec202ea5d37ce796e7be4ce48d1eeeb9e3c7e50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5dcecb9aa0515144fc75cc35ab8641d6ec7d073c0867fdad03bb75dc04599e`

```dockerfile
```

-	Layers:
	-	`sha256:26a197b06436cc238f39e460ca2c797e855417d079728db8e4c45c41c2098bb4`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2-cli-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:121a45bd7bfa4efe40af5a1ca65909ab02cf8cd760bc460f9f9bef98af4a996a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65207927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:806e18793bdd4e836d163add8ce6659b1d6d53bea0275f6a8e5dfc434cda2611`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:27:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:27:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:27:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f25f23befacdaad939196cfef814986853b85afe5525e50bc05d0adbd56aa3`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 7.4 MB (7380540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02955914e0d904776beca4aafe40fa9b3dfb82567436fb0673d1b0ab6a7aab`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c61d9720e5bd546181709f7e01ea39492d8030fe26bfad0280488a735bb8b`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 18.2 MB (18160978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217672f190cf9e9b719a12a5bb0e42b38bbbc6bdf9d79886f98df0f30fff2be`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 21.5 MB (21487117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893124f4b5e6a80ca6615c7223d51ebf8e972a3e346397c0edf6155578e79949`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 14.9 MB (14916521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62cf86c21498ad41edd807b542b7244a0e9258b28ba3f6eae4bbdb51b5a17f2`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b683931af247a82fec4b561d84210ab9d664d8959a971e5ea01637287f4e79`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1049962fd1c05d22836618fac2ece409099dd7b13885c542e5cb91cf5aff12d5`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.2-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:25259c600641db5dfdf2887690ea5c70c4a83ce6e1e6b386a07921f1abb5b6fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820c81c9ca6662f8c47280c8725460d1d53e1cdb2a3cf742bf19e8a358a4321f`

```dockerfile
```

-	Layers:
	-	`sha256:e6362dedbad3d66e134f572586a32df77fd18f21a0907d94b33e2ffe7a9f24eb`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2-cli-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d7ee65bd10b7f794c6bba9ce66cf0ec83f4cb9a606f68b2a804b11ceb00d60cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65411382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080285df0b68ffef071337d5c7d41ba313c88047b19213529a0bcb40b449f45e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:29.7.2-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:b6382dc826a4d0885d61b885a954aa88f84b696fc1b614962162e5c831147654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b376971aa7024b5617bee77dffd1bc2b6786330bc6cfbb81fc2a6d8ca384c15f`

```dockerfile
```

-	Layers:
	-	`sha256:01d7ea6efd1d0e3b597c8bb3f63a58ba7efeaf344f9cb18847b2a5121e3fb2d7`  
		Last Modified: Mon, 10 Aug 2026 23:28:47 GMT  
		Size: 38.3 KB (38261 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7.2-dind`

```console
$ docker pull docker@sha256:12e683a161823b2a839aeea999b9d960e6e1f9a97b1679ad6b441982e2d9cf07
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

### `docker:29.7.2-dind` - linux; amd64

```console
$ docker pull docker@sha256:ab772b0eaf0b01e5843f6574e50ccdfc34a7bdcb82bbf2decafde54a0ee884a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144702884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8193d29aa6a99a72ade95625654b79b60daf8e2af1a8a752c82378027fd2dda9`
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

### `docker:29.7.2-dind` - unknown; unknown

```console
$ docker pull docker@sha256:77ef046d00c5b4d87bea714c097d6fbc329cec2156f98a4382e5859f89a8ba7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c002967c1c4cdbc70d971b31d5f5009f0840e60799888d72c37734e1f8ea711`

```dockerfile
```

-	Layers:
	-	`sha256:a786ed8612623af1eaeb634d028dff8112a1524b3b31b5399cc50996d9d93ba2`  
		Last Modified: Mon, 10 Aug 2026 23:33:30 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:9bd3102b0dc067fb15448a4376ce4d28ec9e66fd0b88d789a3899dd6321c0e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136364446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35d8077093dbd205bbe23c351cdbcce619d854c1b6032270c5a1fd451ab92aab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:49 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:26:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:26:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:26:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:26:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:26:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:26:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:22 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de8924beca818a0b4f3c486fc7601f67a62a092db086ba93f86c0ad9a33e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 8.1 MB (8084796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beb48c0666ff14e213cd237faf64c807a84547600b78d809eab33dfbdea6dbc`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e68c5dce03082b0b7f56b27ca21993d03140c6a60c5855e139c7059e6ddf24`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 18.2 MB (18176727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d17624b9eb1c4ddd265fd8b204f6d7cbe4ab77d95194a403dae5f173b7bffd0`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 21.5 MB (21504859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1aa103b2286f46e316d91fd4f2e8c4b2094a2958e40f472fac0ac2a69f51bf`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 14.9 MB (14932265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e675b7c0cb64600f425310e6363f5644b81b96ebfcac3a8822b412359235e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56ba6e142fdeb3e3d8e3ad266ee5042b02b37f871f59ab03c735bcbcfdad4af`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394ea985feebf70f8ae020cdf746a36c06e48b77fb8d914e80140db89f6f98d`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807b5559205b3b616ea66543fb6de7172c4857f797e8c7a1e5158675a695a741`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 7.3 MB (7304347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef5c1ba780ac487b9df90e60c36983881ac6c0ea9473292915f146fd10dfab5`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 90.7 KB (90704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d4daed5ef6b60ac5549e7449340dc6565243724de0ed8539f651b5f38af9c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611198340bf7ddfef45033ffd1d05426ff1124180507434bfc274ef3b86e9703`  
		Last Modified: Mon, 10 Aug 2026 23:33:34 GMT  
		Size: 62.7 MB (62709140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1c17629cb7d4c69b9f8abb0d26b2c7e5b40ed9330dbf23c8b12ff970464085`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb988fc39fdfccff6c36d8c50407bb2fea355eff572af3822e96120e67ab5c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.2-dind` - unknown; unknown

```console
$ docker pull docker@sha256:3ea5678153f70b86735bbdf98c3297650a7f86734f697fe5a46cde7cda344503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66073ffb4d0c80087723c357427942dc25b2acebd63e56e09876dfcdc54f7d93`

```dockerfile
```

-	Layers:
	-	`sha256:635b1695c222e0fab2ddb89a8f844c925e34b7384aad013fd3b70d9bae37c9d7`  
		Last Modified: Mon, 10 Aug 2026 23:33:31 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:b8a73d31d568a45f524f12225938cfeb2002a9ff2e654023ee88057386087e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134415816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9561965e57bb3af4e4441ee72cb268450a174765759fd02fc4e0ac718d97ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:27:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:27:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:27:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:28 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f25f23befacdaad939196cfef814986853b85afe5525e50bc05d0adbd56aa3`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 7.4 MB (7380540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02955914e0d904776beca4aafe40fa9b3dfb82567436fb0673d1b0ab6a7aab`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c61d9720e5bd546181709f7e01ea39492d8030fe26bfad0280488a735bb8b`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 18.2 MB (18160978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217672f190cf9e9b719a12a5bb0e42b38bbbc6bdf9d79886f98df0f30fff2be`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 21.5 MB (21487117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893124f4b5e6a80ca6615c7223d51ebf8e972a3e346397c0edf6155578e79949`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 14.9 MB (14916521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62cf86c21498ad41edd807b542b7244a0e9258b28ba3f6eae4bbdb51b5a17f2`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b683931af247a82fec4b561d84210ab9d664d8959a971e5ea01637287f4e79`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1049962fd1c05d22836618fac2ece409099dd7b13885c542e5cb91cf5aff12d5`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4e57e597b7f70a39a5eb6db2bb9f2c7bae9916907a957ca0f2606c86d9fca4`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 6.6 MB (6598827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b4185f3a425107c2693b154a1560a031cf47e78df595da1459b379e4e145cb`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 87.0 KB (86964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b172ffc0b88f4fa8ceb8520a85083520be781a5f18f9b0f46a50194dd2f00b1f`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108f9917a84ff84b3ed66757a368147dbcbc181f2b3e36f57bf2b511ea7f7723`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 62.5 MB (62516097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd07e05a21001889b8099f30c550484aacdea6e27c7916c80f95e500177d0ec`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2dc48c51815ce5931b12b8c0a7957ab158c11a325a03c2d2988051fc3e9309`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.2-dind` - unknown; unknown

```console
$ docker pull docker@sha256:0bafa1800a7b77315dddec147753a5f7a043c931b85e9971fab6487e9cda77e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14741eded070146f0dc77b325e43e92d498f985489b3e93c3bead3b058466a97`

```dockerfile
```

-	Layers:
	-	`sha256:39cad98a9b00d66ac344cc4fa61a39ce9d5c8c9f5bca4fe34bd183bd1b0553a7`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:df2316a6ed13583a9fd33b6cf2f99f43ff3b90f2766a2d97745703cd43caad8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133848938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003cd9eb3b560f4155b9476b6d7f8c87f904a2028a2a8aaca22f860e1a18c4ac`
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

### `docker:29.7.2-dind` - unknown; unknown

```console
$ docker pull docker@sha256:33db97154be3d8c50e8782737cf97e6002be48e04a536e789661bd2ac82a11ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2f0b5020b208e3b79cf4e3fe6adbdfd3a6879e3298d30d04a517b6b8ddc4ae`

```dockerfile
```

-	Layers:
	-	`sha256:ae265669d1e6e88acf155cb1d698bcb932b169367678929dcc277dfa8f90760d`  
		Last Modified: Mon, 10 Aug 2026 23:33:27 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7.2-dind-alpine3.24`

```console
$ docker pull docker@sha256:12e683a161823b2a839aeea999b9d960e6e1f9a97b1679ad6b441982e2d9cf07
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

### `docker:29.7.2-dind-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:ab772b0eaf0b01e5843f6574e50ccdfc34a7bdcb82bbf2decafde54a0ee884a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144702884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8193d29aa6a99a72ade95625654b79b60daf8e2af1a8a752c82378027fd2dda9`
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

### `docker:29.7.2-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:77ef046d00c5b4d87bea714c097d6fbc329cec2156f98a4382e5859f89a8ba7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c002967c1c4cdbc70d971b31d5f5009f0840e60799888d72c37734e1f8ea711`

```dockerfile
```

-	Layers:
	-	`sha256:a786ed8612623af1eaeb634d028dff8112a1524b3b31b5399cc50996d9d93ba2`  
		Last Modified: Mon, 10 Aug 2026 23:33:30 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2-dind-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:9bd3102b0dc067fb15448a4376ce4d28ec9e66fd0b88d789a3899dd6321c0e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136364446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35d8077093dbd205bbe23c351cdbcce619d854c1b6032270c5a1fd451ab92aab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:49 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:26:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:26:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:26:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:26:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:26:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:26:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:22 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de8924beca818a0b4f3c486fc7601f67a62a092db086ba93f86c0ad9a33e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 8.1 MB (8084796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beb48c0666ff14e213cd237faf64c807a84547600b78d809eab33dfbdea6dbc`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e68c5dce03082b0b7f56b27ca21993d03140c6a60c5855e139c7059e6ddf24`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 18.2 MB (18176727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d17624b9eb1c4ddd265fd8b204f6d7cbe4ab77d95194a403dae5f173b7bffd0`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 21.5 MB (21504859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1aa103b2286f46e316d91fd4f2e8c4b2094a2958e40f472fac0ac2a69f51bf`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 14.9 MB (14932265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e675b7c0cb64600f425310e6363f5644b81b96ebfcac3a8822b412359235e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56ba6e142fdeb3e3d8e3ad266ee5042b02b37f871f59ab03c735bcbcfdad4af`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394ea985feebf70f8ae020cdf746a36c06e48b77fb8d914e80140db89f6f98d`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807b5559205b3b616ea66543fb6de7172c4857f797e8c7a1e5158675a695a741`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 7.3 MB (7304347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef5c1ba780ac487b9df90e60c36983881ac6c0ea9473292915f146fd10dfab5`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 90.7 KB (90704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d4daed5ef6b60ac5549e7449340dc6565243724de0ed8539f651b5f38af9c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611198340bf7ddfef45033ffd1d05426ff1124180507434bfc274ef3b86e9703`  
		Last Modified: Mon, 10 Aug 2026 23:33:34 GMT  
		Size: 62.7 MB (62709140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1c17629cb7d4c69b9f8abb0d26b2c7e5b40ed9330dbf23c8b12ff970464085`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb988fc39fdfccff6c36d8c50407bb2fea355eff572af3822e96120e67ab5c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.2-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:3ea5678153f70b86735bbdf98c3297650a7f86734f697fe5a46cde7cda344503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66073ffb4d0c80087723c357427942dc25b2acebd63e56e09876dfcdc54f7d93`

```dockerfile
```

-	Layers:
	-	`sha256:635b1695c222e0fab2ddb89a8f844c925e34b7384aad013fd3b70d9bae37c9d7`  
		Last Modified: Mon, 10 Aug 2026 23:33:31 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2-dind-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:b8a73d31d568a45f524f12225938cfeb2002a9ff2e654023ee88057386087e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134415816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9561965e57bb3af4e4441ee72cb268450a174765759fd02fc4e0ac718d97ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:27:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:27:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:27:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:28 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f25f23befacdaad939196cfef814986853b85afe5525e50bc05d0adbd56aa3`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 7.4 MB (7380540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02955914e0d904776beca4aafe40fa9b3dfb82567436fb0673d1b0ab6a7aab`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c61d9720e5bd546181709f7e01ea39492d8030fe26bfad0280488a735bb8b`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 18.2 MB (18160978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217672f190cf9e9b719a12a5bb0e42b38bbbc6bdf9d79886f98df0f30fff2be`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 21.5 MB (21487117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893124f4b5e6a80ca6615c7223d51ebf8e972a3e346397c0edf6155578e79949`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 14.9 MB (14916521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62cf86c21498ad41edd807b542b7244a0e9258b28ba3f6eae4bbdb51b5a17f2`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b683931af247a82fec4b561d84210ab9d664d8959a971e5ea01637287f4e79`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1049962fd1c05d22836618fac2ece409099dd7b13885c542e5cb91cf5aff12d5`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4e57e597b7f70a39a5eb6db2bb9f2c7bae9916907a957ca0f2606c86d9fca4`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 6.6 MB (6598827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b4185f3a425107c2693b154a1560a031cf47e78df595da1459b379e4e145cb`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 87.0 KB (86964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b172ffc0b88f4fa8ceb8520a85083520be781a5f18f9b0f46a50194dd2f00b1f`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108f9917a84ff84b3ed66757a368147dbcbc181f2b3e36f57bf2b511ea7f7723`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 62.5 MB (62516097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd07e05a21001889b8099f30c550484aacdea6e27c7916c80f95e500177d0ec`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2dc48c51815ce5931b12b8c0a7957ab158c11a325a03c2d2988051fc3e9309`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.7.2-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:0bafa1800a7b77315dddec147753a5f7a043c931b85e9971fab6487e9cda77e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14741eded070146f0dc77b325e43e92d498f985489b3e93c3bead3b058466a97`

```dockerfile
```

-	Layers:
	-	`sha256:39cad98a9b00d66ac344cc4fa61a39ce9d5c8c9f5bca4fe34bd183bd1b0553a7`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.7.2-dind-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:df2316a6ed13583a9fd33b6cf2f99f43ff3b90f2766a2d97745703cd43caad8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133848938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003cd9eb3b560f4155b9476b6d7f8c87f904a2028a2a8aaca22f860e1a18c4ac`
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

### `docker:29.7.2-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:33db97154be3d8c50e8782737cf97e6002be48e04a536e789661bd2ac82a11ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2f0b5020b208e3b79cf4e3fe6adbdfd3a6879e3298d30d04a517b6b8ddc4ae`

```dockerfile
```

-	Layers:
	-	`sha256:ae265669d1e6e88acf155cb1d698bcb932b169367678929dcc277dfa8f90760d`  
		Last Modified: Mon, 10 Aug 2026 23:33:27 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.7.2-dind-rootless`

```console
$ docker pull docker@sha256:8a213afdd096a44dff403aaf8eb58b7a96a63113f18a4b094b98b7d0ed7d948b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.7.2-dind-rootless` - linux; amd64

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

### `docker:29.7.2-dind-rootless` - unknown; unknown

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

### `docker:29.7.2-dind-rootless` - linux; arm64 variant v8

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

### `docker:29.7.2-dind-rootless` - unknown; unknown

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

## `docker:29.7.2-windowsservercore`

```console
$ docker pull docker@sha256:08a43eb3bd620ab0b85dd569deb23ab812679355547440833c28075c87517746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:29.7.2-windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:a2e851fc59868826a427be0c386bea6839fc690def7ea7078dc561c3589b2dd1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416068247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dd785d4eb5937896d5d409552af415c9c9fc825cc71b5cd67c61d24a0decb4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 10 Aug 2026 23:26:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:16 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:16 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:17 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:27:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:27:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:27:48 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:27:58 GMT
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
	-	`sha256:e7655b73ffdda9fd6d874b2ead23f3dc6064c341fa4a447ddd6fc1c04f79e45c`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a6248f8832e13558a11464ceeda6458cf59ebe9add5725b6c366362ecc3bea`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 403.2 KB (403246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef455c74943ad7e264bdd2f835ea2d15bc52484ee3d5acc5fa53c3d808d94d0f`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2412db2e4a3148a24d0ea7004fe8686dcf39d1302867077e018f77b2b6b2f1`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd45debb7ee8ff3188577dafeb9dcd5e178731230d39bfa0752750aa246c3d86`  
		Last Modified: Mon, 10 Aug 2026 23:28:08 GMT  
		Size: 20.2 MB (20238647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb1e0db89f2223c9bab0fe1237e4be258be34d7db21b704e16bb23cdbd39908`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cd25477ef52c0f1b151cf29a78399244820fa1d2c4439f8887113921beaeec`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2328d5cd7d586968307156423bf9b547ef7a71aca38e657939b498747c6943dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6feee692f3c6a11255a71925aba66958b485da1dc2b0ec76bd6b15e89928a2a`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 23.8 MB (23849016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff709657ec90401a5ebc3e4397c0c77b9b789e64270703d44137b54caf40791c`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf0f3d5c5e8f95b17389dcf78f045356737cdbed254f2b26e19d4ba3c8f89d4`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5722961775296a5c266ef41eae22d022f0f6e4a859f654c068d22007ea893fcd`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d987f342a056934012fc1cdded230da7d19ea233372f41a9e89e1f5f4951c5`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 16.6 MB (16557573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.7.2-windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:54a80ad47d3da4df9350801d0a3b6621cacc4676b6665e0bcb95a9e3ea92404a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2218595240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bdd50fc4bcfe238314ff616ae25fa5754ccde8b1244033a07d3aacdfd21410e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 10 Aug 2026 23:26:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:39 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:41 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:42 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:28:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:06 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:28:07 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:28:08 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:28:28 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:28 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:28:29 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:28:30 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:28:46 GMT
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
	-	`sha256:76b658884677c166350e1d7a1d1c1b99ca0402ed936cd805e93aa7678ef319bc`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5732ba94563f450d8874e8d866159dbe3a7c3e25d1f5a393f63cb7ac8cfdc0`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 501.1 KB (501142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da2e673bea3444ba48a19851a0713f40d98d7e1ec3eeeb335f5a2abfee339fa`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45823866d85f780848fccb70a3790fcd8277d65094aba0630cdc0daa6cbd319b`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f15bd5c72742bfe3eae106e5f2cb72d638161f730606d6ce5a9aea6753799dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:57 GMT  
		Size: 20.2 MB (20196807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3b9b24ca16404341b027572c1011c5783864767c9bccef85d68b3f50d6fe42`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec334c0fd16a78e323f0c1403ff6dbc605a280f3d26e5e6f4dc5a6f322e5179`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fed49235760e09e24b7513bf7ca5479db0f19749f168ecdb7ca7b83116decbd`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4b01090090067ed360272b10f3d5add746a371b8abcc2eb158dc3ffdee85b8`  
		Last Modified: Mon, 10 Aug 2026 23:28:54 GMT  
		Size: 23.8 MB (23814204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379aa387141632a674fc8a479829419c14deb5ac186e738dfa5380df19aca362`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76558fcde97f13a9a90ee26aca4f27365c2429fb4f7f3108d9a637ea4c42f687`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10755c0848f0827e49dab33301294a71da8652bdfad564b5ec4b82d718b216ab`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a5ec88ac025079d7e8e89f3e0249285256d65ee88289b45ac44db6150d8fed`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 16.5 MB (16518172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7.2-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:71ba24001284af0b114e9337c717706e7eaeba4d5e231aecfdc2590e0c43550f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:29.7.2-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:54a80ad47d3da4df9350801d0a3b6621cacc4676b6665e0bcb95a9e3ea92404a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2218595240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bdd50fc4bcfe238314ff616ae25fa5754ccde8b1244033a07d3aacdfd21410e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 10 Aug 2026 23:26:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:39 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:41 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:42 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:28:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:06 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:28:07 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:28:08 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:28:28 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:28 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:28:29 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:28:30 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:28:46 GMT
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
	-	`sha256:76b658884677c166350e1d7a1d1c1b99ca0402ed936cd805e93aa7678ef319bc`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5732ba94563f450d8874e8d866159dbe3a7c3e25d1f5a393f63cb7ac8cfdc0`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 501.1 KB (501142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da2e673bea3444ba48a19851a0713f40d98d7e1ec3eeeb335f5a2abfee339fa`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45823866d85f780848fccb70a3790fcd8277d65094aba0630cdc0daa6cbd319b`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f15bd5c72742bfe3eae106e5f2cb72d638161f730606d6ce5a9aea6753799dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:57 GMT  
		Size: 20.2 MB (20196807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3b9b24ca16404341b027572c1011c5783864767c9bccef85d68b3f50d6fe42`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec334c0fd16a78e323f0c1403ff6dbc605a280f3d26e5e6f4dc5a6f322e5179`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fed49235760e09e24b7513bf7ca5479db0f19749f168ecdb7ca7b83116decbd`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4b01090090067ed360272b10f3d5add746a371b8abcc2eb158dc3ffdee85b8`  
		Last Modified: Mon, 10 Aug 2026 23:28:54 GMT  
		Size: 23.8 MB (23814204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379aa387141632a674fc8a479829419c14deb5ac186e738dfa5380df19aca362`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76558fcde97f13a9a90ee26aca4f27365c2429fb4f7f3108d9a637ea4c42f687`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10755c0848f0827e49dab33301294a71da8652bdfad564b5ec4b82d718b216ab`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a5ec88ac025079d7e8e89f3e0249285256d65ee88289b45ac44db6150d8fed`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 16.5 MB (16518172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.7.2-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:367c577f1573eb97d1adf0d4e30378984b4df6bb70b935ef758af8d4a9090148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:29.7.2-windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:a2e851fc59868826a427be0c386bea6839fc690def7ea7078dc561c3589b2dd1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416068247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dd785d4eb5937896d5d409552af415c9c9fc825cc71b5cd67c61d24a0decb4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 10 Aug 2026 23:26:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:16 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:16 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:17 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:27:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:27:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:27:48 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:27:58 GMT
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
	-	`sha256:e7655b73ffdda9fd6d874b2ead23f3dc6064c341fa4a447ddd6fc1c04f79e45c`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a6248f8832e13558a11464ceeda6458cf59ebe9add5725b6c366362ecc3bea`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 403.2 KB (403246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef455c74943ad7e264bdd2f835ea2d15bc52484ee3d5acc5fa53c3d808d94d0f`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2412db2e4a3148a24d0ea7004fe8686dcf39d1302867077e018f77b2b6b2f1`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd45debb7ee8ff3188577dafeb9dcd5e178731230d39bfa0752750aa246c3d86`  
		Last Modified: Mon, 10 Aug 2026 23:28:08 GMT  
		Size: 20.2 MB (20238647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb1e0db89f2223c9bab0fe1237e4be258be34d7db21b704e16bb23cdbd39908`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cd25477ef52c0f1b151cf29a78399244820fa1d2c4439f8887113921beaeec`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2328d5cd7d586968307156423bf9b547ef7a71aca38e657939b498747c6943dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6feee692f3c6a11255a71925aba66958b485da1dc2b0ec76bd6b15e89928a2a`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 23.8 MB (23849016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff709657ec90401a5ebc3e4397c0c77b9b789e64270703d44137b54caf40791c`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf0f3d5c5e8f95b17389dcf78f045356737cdbed254f2b26e19d4ba3c8f89d4`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5722961775296a5c266ef41eae22d022f0f6e4a859f654c068d22007ea893fcd`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d987f342a056934012fc1cdded230da7d19ea233372f41a9e89e1f5f4951c5`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 16.6 MB (16557573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:cli`

```console
$ docker pull docker@sha256:000bb62ff495f986c9f5578eb67cc2cb98b91138eda81d7762d5371eb8a497fe
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
$ docker pull docker@sha256:e650b7a58d7f56be91d4f7be799196380a3bbc1bcbc41f1f4dff1b36ac309e1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70226334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10900ba73429df91dc30f1435013a3c5663e3478d12e89e465c44ca0a82edefe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:c9a70261ada62be91a181c546258f2e67c4f5fb59ad4a6bb87794569d98a7532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79df4847224b491b8bf8cd66492b0d27eeb9d0bfb52beff2b7c23f3b59789d28`

```dockerfile
```

-	Layers:
	-	`sha256:8285c61c58013694f5e7f7a8891511a615a81b7b7265bcbbfeedd96c2928c03d`  
		Last Modified: Mon, 10 Aug 2026 23:30:14 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:d3dd76b307376f2e95c2fae03f22c3f111d90126a2d3b6dfc28e308c0de4f302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66254251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b002fb3a3d379cda58781edd61f97b8be03dd0a9656c56e6b9be26b89b627a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:49 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:26:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:26:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:26:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:26:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:26:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:26:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de8924beca818a0b4f3c486fc7601f67a62a092db086ba93f86c0ad9a33e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 8.1 MB (8084796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beb48c0666ff14e213cd237faf64c807a84547600b78d809eab33dfbdea6dbc`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e68c5dce03082b0b7f56b27ca21993d03140c6a60c5855e139c7059e6ddf24`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 18.2 MB (18176727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d17624b9eb1c4ddd265fd8b204f6d7cbe4ab77d95194a403dae5f173b7bffd0`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 21.5 MB (21504859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1aa103b2286f46e316d91fd4f2e8c4b2094a2958e40f472fac0ac2a69f51bf`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 14.9 MB (14932265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e675b7c0cb64600f425310e6363f5644b81b96ebfcac3a8822b412359235e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56ba6e142fdeb3e3d8e3ad266ee5042b02b37f871f59ab03c735bcbcfdad4af`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394ea985feebf70f8ae020cdf746a36c06e48b77fb8d914e80140db89f6f98d`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:0049fde5c409d5a8feca86e6cec202ea5d37ce796e7be4ce48d1eeeb9e3c7e50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5dcecb9aa0515144fc75cc35ab8641d6ec7d073c0867fdad03bb75dc04599e`

```dockerfile
```

-	Layers:
	-	`sha256:26a197b06436cc238f39e460ca2c797e855417d079728db8e4c45c41c2098bb4`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:121a45bd7bfa4efe40af5a1ca65909ab02cf8cd760bc460f9f9bef98af4a996a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.2 MB (65207927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:806e18793bdd4e836d163add8ce6659b1d6d53bea0275f6a8e5dfc434cda2611`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:27:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:27:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:27:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f25f23befacdaad939196cfef814986853b85afe5525e50bc05d0adbd56aa3`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 7.4 MB (7380540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02955914e0d904776beca4aafe40fa9b3dfb82567436fb0673d1b0ab6a7aab`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c61d9720e5bd546181709f7e01ea39492d8030fe26bfad0280488a735bb8b`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 18.2 MB (18160978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217672f190cf9e9b719a12a5bb0e42b38bbbc6bdf9d79886f98df0f30fff2be`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 21.5 MB (21487117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893124f4b5e6a80ca6615c7223d51ebf8e972a3e346397c0edf6155578e79949`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 14.9 MB (14916521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62cf86c21498ad41edd807b542b7244a0e9258b28ba3f6eae4bbdb51b5a17f2`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b683931af247a82fec4b561d84210ab9d664d8959a971e5ea01637287f4e79`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1049962fd1c05d22836618fac2ece409099dd7b13885c542e5cb91cf5aff12d5`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:25259c600641db5dfdf2887690ea5c70c4a83ce6e1e6b386a07921f1abb5b6fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820c81c9ca6662f8c47280c8725460d1d53e1cdb2a3cf742bf19e8a358a4321f`

```dockerfile
```

-	Layers:
	-	`sha256:e6362dedbad3d66e134f572586a32df77fd18f21a0907d94b33e2ffe7a9f24eb`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d7ee65bd10b7f794c6bba9ce66cf0ec83f4cb9a606f68b2a804b11ceb00d60cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.4 MB (65411382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080285df0b68ffef071337d5c7d41ba313c88047b19213529a0bcb40b449f45e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:b6382dc826a4d0885d61b885a954aa88f84b696fc1b614962162e5c831147654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b376971aa7024b5617bee77dffd1bc2b6786330bc6cfbb81fc2a6d8ca384c15f`

```dockerfile
```

-	Layers:
	-	`sha256:01d7ea6efd1d0e3b597c8bb3f63a58ba7efeaf344f9cb18847b2a5121e3fb2d7`  
		Last Modified: Mon, 10 Aug 2026 23:28:47 GMT  
		Size: 38.3 KB (38261 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind`

```console
$ docker pull docker@sha256:12e683a161823b2a839aeea999b9d960e6e1f9a97b1679ad6b441982e2d9cf07
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
$ docker pull docker@sha256:ab772b0eaf0b01e5843f6574e50ccdfc34a7bdcb82bbf2decafde54a0ee884a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144702884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8193d29aa6a99a72ade95625654b79b60daf8e2af1a8a752c82378027fd2dda9`
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

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:77ef046d00c5b4d87bea714c097d6fbc329cec2156f98a4382e5859f89a8ba7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c002967c1c4cdbc70d971b31d5f5009f0840e60799888d72c37734e1f8ea711`

```dockerfile
```

-	Layers:
	-	`sha256:a786ed8612623af1eaeb634d028dff8112a1524b3b31b5399cc50996d9d93ba2`  
		Last Modified: Mon, 10 Aug 2026 23:33:30 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:9bd3102b0dc067fb15448a4376ce4d28ec9e66fd0b88d789a3899dd6321c0e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136364446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35d8077093dbd205bbe23c351cdbcce619d854c1b6032270c5a1fd451ab92aab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:49 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:26:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:26:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:26:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:26:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:26:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:26:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:22 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de8924beca818a0b4f3c486fc7601f67a62a092db086ba93f86c0ad9a33e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 8.1 MB (8084796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beb48c0666ff14e213cd237faf64c807a84547600b78d809eab33dfbdea6dbc`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e68c5dce03082b0b7f56b27ca21993d03140c6a60c5855e139c7059e6ddf24`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 18.2 MB (18176727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d17624b9eb1c4ddd265fd8b204f6d7cbe4ab77d95194a403dae5f173b7bffd0`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 21.5 MB (21504859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1aa103b2286f46e316d91fd4f2e8c4b2094a2958e40f472fac0ac2a69f51bf`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 14.9 MB (14932265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e675b7c0cb64600f425310e6363f5644b81b96ebfcac3a8822b412359235e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56ba6e142fdeb3e3d8e3ad266ee5042b02b37f871f59ab03c735bcbcfdad4af`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394ea985feebf70f8ae020cdf746a36c06e48b77fb8d914e80140db89f6f98d`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807b5559205b3b616ea66543fb6de7172c4857f797e8c7a1e5158675a695a741`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 7.3 MB (7304347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef5c1ba780ac487b9df90e60c36983881ac6c0ea9473292915f146fd10dfab5`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 90.7 KB (90704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d4daed5ef6b60ac5549e7449340dc6565243724de0ed8539f651b5f38af9c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611198340bf7ddfef45033ffd1d05426ff1124180507434bfc274ef3b86e9703`  
		Last Modified: Mon, 10 Aug 2026 23:33:34 GMT  
		Size: 62.7 MB (62709140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1c17629cb7d4c69b9f8abb0d26b2c7e5b40ed9330dbf23c8b12ff970464085`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb988fc39fdfccff6c36d8c50407bb2fea355eff572af3822e96120e67ab5c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:3ea5678153f70b86735bbdf98c3297650a7f86734f697fe5a46cde7cda344503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66073ffb4d0c80087723c357427942dc25b2acebd63e56e09876dfcdc54f7d93`

```dockerfile
```

-	Layers:
	-	`sha256:635b1695c222e0fab2ddb89a8f844c925e34b7384aad013fd3b70d9bae37c9d7`  
		Last Modified: Mon, 10 Aug 2026 23:33:31 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:b8a73d31d568a45f524f12225938cfeb2002a9ff2e654023ee88057386087e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134415816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9561965e57bb3af4e4441ee72cb268450a174765759fd02fc4e0ac718d97ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:27:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:27:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:27:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:28 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f25f23befacdaad939196cfef814986853b85afe5525e50bc05d0adbd56aa3`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 7.4 MB (7380540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02955914e0d904776beca4aafe40fa9b3dfb82567436fb0673d1b0ab6a7aab`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c61d9720e5bd546181709f7e01ea39492d8030fe26bfad0280488a735bb8b`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 18.2 MB (18160978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217672f190cf9e9b719a12a5bb0e42b38bbbc6bdf9d79886f98df0f30fff2be`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 21.5 MB (21487117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893124f4b5e6a80ca6615c7223d51ebf8e972a3e346397c0edf6155578e79949`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 14.9 MB (14916521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62cf86c21498ad41edd807b542b7244a0e9258b28ba3f6eae4bbdb51b5a17f2`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b683931af247a82fec4b561d84210ab9d664d8959a971e5ea01637287f4e79`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1049962fd1c05d22836618fac2ece409099dd7b13885c542e5cb91cf5aff12d5`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4e57e597b7f70a39a5eb6db2bb9f2c7bae9916907a957ca0f2606c86d9fca4`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 6.6 MB (6598827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b4185f3a425107c2693b154a1560a031cf47e78df595da1459b379e4e145cb`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 87.0 KB (86964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b172ffc0b88f4fa8ceb8520a85083520be781a5f18f9b0f46a50194dd2f00b1f`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108f9917a84ff84b3ed66757a368147dbcbc181f2b3e36f57bf2b511ea7f7723`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 62.5 MB (62516097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd07e05a21001889b8099f30c550484aacdea6e27c7916c80f95e500177d0ec`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2dc48c51815ce5931b12b8c0a7957ab158c11a325a03c2d2988051fc3e9309`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:0bafa1800a7b77315dddec147753a5f7a043c931b85e9971fab6487e9cda77e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14741eded070146f0dc77b325e43e92d498f985489b3e93c3bead3b058466a97`

```dockerfile
```

-	Layers:
	-	`sha256:39cad98a9b00d66ac344cc4fa61a39ce9d5c8c9f5bca4fe34bd183bd1b0553a7`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:df2316a6ed13583a9fd33b6cf2f99f43ff3b90f2766a2d97745703cd43caad8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133848938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003cd9eb3b560f4155b9476b6d7f8c87f904a2028a2a8aaca22f860e1a18c4ac`
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

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:33db97154be3d8c50e8782737cf97e6002be48e04a536e789661bd2ac82a11ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2f0b5020b208e3b79cf4e3fe6adbdfd3a6879e3298d30d04a517b6b8ddc4ae`

```dockerfile
```

-	Layers:
	-	`sha256:ae265669d1e6e88acf155cb1d698bcb932b169367678929dcc277dfa8f90760d`  
		Last Modified: Mon, 10 Aug 2026 23:33:27 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

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

## `docker:latest`

```console
$ docker pull docker@sha256:12e683a161823b2a839aeea999b9d960e6e1f9a97b1679ad6b441982e2d9cf07
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
$ docker pull docker@sha256:ab772b0eaf0b01e5843f6574e50ccdfc34a7bdcb82bbf2decafde54a0ee884a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144702884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8193d29aa6a99a72ade95625654b79b60daf8e2af1a8a752c82378027fd2dda9`
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

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:77ef046d00c5b4d87bea714c097d6fbc329cec2156f98a4382e5859f89a8ba7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 KB (34542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c002967c1c4cdbc70d971b31d5f5009f0840e60799888d72c37734e1f8ea711`

```dockerfile
```

-	Layers:
	-	`sha256:a786ed8612623af1eaeb634d028dff8112a1524b3b31b5399cc50996d9d93ba2`  
		Last Modified: Mon, 10 Aug 2026 23:33:30 GMT  
		Size: 34.5 KB (34542 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:9bd3102b0dc067fb15448a4376ce4d28ec9e66fd0b88d789a3899dd6321c0e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136364446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35d8077093dbd205bbe23c351cdbcce619d854c1b6032270c5a1fd451ab92aab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:26:49 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:26:49 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:26:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:26:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:26:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:26:55 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:26:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:26:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:26:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:17 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:18 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:22 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:22 GMT
CMD []
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de8924beca818a0b4f3c486fc7601f67a62a092db086ba93f86c0ad9a33e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 8.1 MB (8084796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beb48c0666ff14e213cd237faf64c807a84547600b78d809eab33dfbdea6dbc`  
		Last Modified: Mon, 10 Aug 2026 23:27:04 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e68c5dce03082b0b7f56b27ca21993d03140c6a60c5855e139c7059e6ddf24`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 18.2 MB (18176727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d17624b9eb1c4ddd265fd8b204f6d7cbe4ab77d95194a403dae5f173b7bffd0`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 21.5 MB (21504859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1aa103b2286f46e316d91fd4f2e8c4b2094a2958e40f472fac0ac2a69f51bf`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 14.9 MB (14932265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e675b7c0cb64600f425310e6363f5644b81b96ebfcac3a8822b412359235e7`  
		Last Modified: Mon, 10 Aug 2026 23:27:05 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56ba6e142fdeb3e3d8e3ad266ee5042b02b37f871f59ab03c735bcbcfdad4af`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e394ea985feebf70f8ae020cdf746a36c06e48b77fb8d914e80140db89f6f98d`  
		Last Modified: Mon, 10 Aug 2026 23:27:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807b5559205b3b616ea66543fb6de7172c4857f797e8c7a1e5158675a695a741`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 7.3 MB (7304347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef5c1ba780ac487b9df90e60c36983881ac6c0ea9473292915f146fd10dfab5`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 90.7 KB (90704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d4daed5ef6b60ac5549e7449340dc6565243724de0ed8539f651b5f38af9c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:32 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611198340bf7ddfef45033ffd1d05426ff1124180507434bfc274ef3b86e9703`  
		Last Modified: Mon, 10 Aug 2026 23:33:34 GMT  
		Size: 62.7 MB (62709140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1c17629cb7d4c69b9f8abb0d26b2c7e5b40ed9330dbf23c8b12ff970464085`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb988fc39fdfccff6c36d8c50407bb2fea355eff572af3822e96120e67ab5c2`  
		Last Modified: Mon, 10 Aug 2026 23:33:33 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:3ea5678153f70b86735bbdf98c3297650a7f86734f697fe5a46cde7cda344503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66073ffb4d0c80087723c357427942dc25b2acebd63e56e09876dfcdc54f7d93`

```dockerfile
```

-	Layers:
	-	`sha256:635b1695c222e0fab2ddb89a8f844c925e34b7384aad013fd3b70d9bae37c9d7`  
		Last Modified: Mon, 10 Aug 2026 23:33:31 GMT  
		Size: 34.7 KB (34722 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:b8a73d31d568a45f524f12225938cfeb2002a9ff2e654023ee88057386087e65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.4 MB (134415816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9561965e57bb3af4e4441ee72cb268450a174765759fd02fc4e0ac718d97ce`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:27:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 10 Aug 2026 23:27:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 10 Aug 2026 23:27:53 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-amd64'; 			sha256='48af8a397ebd60178778bf63611dbcebe5f5e7a9be90eb9147b24b9587455778'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v6'; 			sha256='324ed0ca85defb28442eda3b002472dbfc7e77bf6992292f2daa94f699f0e43a'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm-v7'; 			sha256='32ff9bee8c48c1fbceb1e2fb1d8472ec817ad1e25b5dff58ec9abf9b8d903518'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-arm64'; 			sha256='5d0cafd9d16afe1a0f0d9529885344ace2cc99efdd531b6c783c5455a6001569'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-ppc64le'; 			sha256='46f71a277d1d05cb20f87601abfb729d0056f88705903bd82ad6153f80e3cd9b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-riscv64'; 			sha256='5e82f0ada635dabda74f1486dea604e0ea3a1214971ec8c52dcb4db6e08cce26'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.linux-s390x'; 			sha256='9d8dff974aa0166fc59a5804f35bb6c9ea0693a3f5061a81101668cfe707b0b4'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 10 Aug 2026 23:27:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-x86_64'; 			sha256='837fd1d35bf6a494f41b5b5988269a7be79de337cf1a1a6ff0e45ab51bb4e9be'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv6'; 			sha256='a5832fe8544e6e72af7cc380a2e3c014a6ced6d56db12fe814d40ffd0e657a6d'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-armv7'; 			sha256='f0c92550db24083a2622e4e980a3fdc13890125962ca09590a86c87ad0b3c536'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-aarch64'; 			sha256='fc5d1371f1ec7987e703da94ede49af3fbfb240b83f22991a98511de7bc4b93b'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-ppc64le'; 			sha256='8158968c7ddb298ae901024c5fb6d471454d1bd75bdea317c4a9d24f87fa4868'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-riscv64'; 			sha256='016b7ac25ce605575bab99464d6b63141c41e14cc49cd0fa19c82aa8dd75a004'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-linux-s390x'; 			sha256='892b60ad432d526b80376ba0b15429c6849ccc598b50b657aa6339310110a85a'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 10 Aug 2026 23:27:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 10 Aug 2026 23:27:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Aug 2026 23:27:58 GMT
CMD ["sh"]
# Mon, 10 Aug 2026 23:33:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 10 Aug 2026 23:33:25 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.7.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.7.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.7.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.7.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 10 Aug 2026 23:33:28 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:33:28 GMT
VOLUME [/var/lib/docker]
# Mon, 10 Aug 2026 23:33:28 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 10 Aug 2026 23:33:28 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 10 Aug 2026 23:33:28 GMT
CMD []
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36f25f23befacdaad939196cfef814986853b85afe5525e50bc05d0adbd56aa3`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 7.4 MB (7380540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc02955914e0d904776beca4aafe40fa9b3dfb82567436fb0673d1b0ab6a7aab`  
		Last Modified: Mon, 10 Aug 2026 23:28:03 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85c61d9720e5bd546181709f7e01ea39492d8030fe26bfad0280488a735bb8b`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 18.2 MB (18160978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217672f190cf9e9b719a12a5bb0e42b38bbbc6bdf9d79886f98df0f30fff2be`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 21.5 MB (21487117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893124f4b5e6a80ca6615c7223d51ebf8e972a3e346397c0edf6155578e79949`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 14.9 MB (14916521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62cf86c21498ad41edd807b542b7244a0e9258b28ba3f6eae4bbdb51b5a17f2`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b683931af247a82fec4b561d84210ab9d664d8959a971e5ea01637287f4e79`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1049962fd1c05d22836618fac2ece409099dd7b13885c542e5cb91cf5aff12d5`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4e57e597b7f70a39a5eb6db2bb9f2c7bae9916907a957ca0f2606c86d9fca4`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 6.6 MB (6598827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b4185f3a425107c2693b154a1560a031cf47e78df595da1459b379e4e145cb`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 87.0 KB (86964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b172ffc0b88f4fa8ceb8520a85083520be781a5f18f9b0f46a50194dd2f00b1f`  
		Last Modified: Mon, 10 Aug 2026 23:33:39 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108f9917a84ff84b3ed66757a368147dbcbc181f2b3e36f57bf2b511ea7f7723`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 62.5 MB (62516097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd07e05a21001889b8099f30c550484aacdea6e27c7916c80f95e500177d0ec`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2dc48c51815ce5931b12b8c0a7957ab158c11a325a03c2d2988051fc3e9309`  
		Last Modified: Mon, 10 Aug 2026 23:33:40 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:0bafa1800a7b77315dddec147753a5f7a043c931b85e9971fab6487e9cda77e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 KB (34721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14741eded070146f0dc77b325e43e92d498f985489b3e93c3bead3b058466a97`

```dockerfile
```

-	Layers:
	-	`sha256:39cad98a9b00d66ac344cc4fa61a39ce9d5c8c9f5bca4fe34bd183bd1b0553a7`  
		Last Modified: Mon, 10 Aug 2026 23:33:38 GMT  
		Size: 34.7 KB (34721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:df2316a6ed13583a9fd33b6cf2f99f43ff3b90f2766a2d97745703cd43caad8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133848938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003cd9eb3b560f4155b9476b6d7f8c87f904a2028a2a8aaca22f860e1a18c4ac`
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

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:33db97154be3d8c50e8782737cf97e6002be48e04a536e789661bd2ac82a11ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 KB (34778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2f0b5020b208e3b79cf4e3fe6adbdfd3a6879e3298d30d04a517b6b8ddc4ae`

```dockerfile
```

-	Layers:
	-	`sha256:ae265669d1e6e88acf155cb1d698bcb932b169367678929dcc277dfa8f90760d`  
		Last Modified: Mon, 10 Aug 2026 23:33:27 GMT  
		Size: 34.8 KB (34778 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:windowsservercore`

```console
$ docker pull docker@sha256:08a43eb3bd620ab0b85dd569deb23ab812679355547440833c28075c87517746
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:a2e851fc59868826a427be0c386bea6839fc690def7ea7078dc561c3589b2dd1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416068247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dd785d4eb5937896d5d409552af415c9c9fc825cc71b5cd67c61d24a0decb4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 10 Aug 2026 23:26:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:16 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:16 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:17 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:27:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:27:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:27:48 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:27:58 GMT
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
	-	`sha256:e7655b73ffdda9fd6d874b2ead23f3dc6064c341fa4a447ddd6fc1c04f79e45c`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a6248f8832e13558a11464ceeda6458cf59ebe9add5725b6c366362ecc3bea`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 403.2 KB (403246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef455c74943ad7e264bdd2f835ea2d15bc52484ee3d5acc5fa53c3d808d94d0f`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2412db2e4a3148a24d0ea7004fe8686dcf39d1302867077e018f77b2b6b2f1`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd45debb7ee8ff3188577dafeb9dcd5e178731230d39bfa0752750aa246c3d86`  
		Last Modified: Mon, 10 Aug 2026 23:28:08 GMT  
		Size: 20.2 MB (20238647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb1e0db89f2223c9bab0fe1237e4be258be34d7db21b704e16bb23cdbd39908`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cd25477ef52c0f1b151cf29a78399244820fa1d2c4439f8887113921beaeec`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2328d5cd7d586968307156423bf9b547ef7a71aca38e657939b498747c6943dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6feee692f3c6a11255a71925aba66958b485da1dc2b0ec76bd6b15e89928a2a`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 23.8 MB (23849016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff709657ec90401a5ebc3e4397c0c77b9b789e64270703d44137b54caf40791c`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf0f3d5c5e8f95b17389dcf78f045356737cdbed254f2b26e19d4ba3c8f89d4`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5722961775296a5c266ef41eae22d022f0f6e4a859f654c068d22007ea893fcd`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d987f342a056934012fc1cdded230da7d19ea233372f41a9e89e1f5f4951c5`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 16.6 MB (16557573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:54a80ad47d3da4df9350801d0a3b6621cacc4676b6665e0bcb95a9e3ea92404a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2218595240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bdd50fc4bcfe238314ff616ae25fa5754ccde8b1244033a07d3aacdfd21410e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 10 Aug 2026 23:26:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:39 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:41 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:42 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:28:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:06 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:28:07 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:28:08 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:28:28 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:28 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:28:29 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:28:30 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:28:46 GMT
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
	-	`sha256:76b658884677c166350e1d7a1d1c1b99ca0402ed936cd805e93aa7678ef319bc`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5732ba94563f450d8874e8d866159dbe3a7c3e25d1f5a393f63cb7ac8cfdc0`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 501.1 KB (501142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da2e673bea3444ba48a19851a0713f40d98d7e1ec3eeeb335f5a2abfee339fa`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45823866d85f780848fccb70a3790fcd8277d65094aba0630cdc0daa6cbd319b`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f15bd5c72742bfe3eae106e5f2cb72d638161f730606d6ce5a9aea6753799dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:57 GMT  
		Size: 20.2 MB (20196807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3b9b24ca16404341b027572c1011c5783864767c9bccef85d68b3f50d6fe42`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec334c0fd16a78e323f0c1403ff6dbc605a280f3d26e5e6f4dc5a6f322e5179`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fed49235760e09e24b7513bf7ca5479db0f19749f168ecdb7ca7b83116decbd`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4b01090090067ed360272b10f3d5add746a371b8abcc2eb158dc3ffdee85b8`  
		Last Modified: Mon, 10 Aug 2026 23:28:54 GMT  
		Size: 23.8 MB (23814204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379aa387141632a674fc8a479829419c14deb5ac186e738dfa5380df19aca362`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76558fcde97f13a9a90ee26aca4f27365c2429fb4f7f3108d9a637ea4c42f687`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10755c0848f0827e49dab33301294a71da8652bdfad564b5ec4b82d718b216ab`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a5ec88ac025079d7e8e89f3e0249285256d65ee88289b45ac44db6150d8fed`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 16.5 MB (16518172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:71ba24001284af0b114e9337c717706e7eaeba4d5e231aecfdc2590e0c43550f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull docker@sha256:54a80ad47d3da4df9350801d0a3b6621cacc4676b6665e0bcb95a9e3ea92404a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2218595240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bdd50fc4bcfe238314ff616ae25fa5754ccde8b1244033a07d3aacdfd21410e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Mon, 10 Aug 2026 23:26:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:39 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:41 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:42 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:28:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:06 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:28:07 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:28:08 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:28:28 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:28:28 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:28:29 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:28:30 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:28:46 GMT
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
	-	`sha256:76b658884677c166350e1d7a1d1c1b99ca0402ed936cd805e93aa7678ef319bc`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5732ba94563f450d8874e8d866159dbe3a7c3e25d1f5a393f63cb7ac8cfdc0`  
		Last Modified: Mon, 10 Aug 2026 23:28:56 GMT  
		Size: 501.1 KB (501142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da2e673bea3444ba48a19851a0713f40d98d7e1ec3eeeb335f5a2abfee339fa`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45823866d85f780848fccb70a3790fcd8277d65094aba0630cdc0daa6cbd319b`  
		Last Modified: Mon, 10 Aug 2026 23:28:55 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f15bd5c72742bfe3eae106e5f2cb72d638161f730606d6ce5a9aea6753799dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:57 GMT  
		Size: 20.2 MB (20196807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3b9b24ca16404341b027572c1011c5783864767c9bccef85d68b3f50d6fe42`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec334c0fd16a78e323f0c1403ff6dbc605a280f3d26e5e6f4dc5a6f322e5179`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fed49235760e09e24b7513bf7ca5479db0f19749f168ecdb7ca7b83116decbd`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4b01090090067ed360272b10f3d5add746a371b8abcc2eb158dc3ffdee85b8`  
		Last Modified: Mon, 10 Aug 2026 23:28:54 GMT  
		Size: 23.8 MB (23814204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379aa387141632a674fc8a479829419c14deb5ac186e738dfa5380df19aca362`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76558fcde97f13a9a90ee26aca4f27365c2429fb4f7f3108d9a637ea4c42f687`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10755c0848f0827e49dab33301294a71da8652bdfad564b5ec4b82d718b216ab`  
		Last Modified: Mon, 10 Aug 2026 23:28:51 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a5ec88ac025079d7e8e89f3e0249285256d65ee88289b45ac44db6150d8fed`  
		Last Modified: Mon, 10 Aug 2026 23:28:53 GMT  
		Size: 16.5 MB (16518172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:367c577f1573eb97d1adf0d4e30378984b4df6bb70b935ef758af8d4a9090148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33158; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33158; amd64

```console
$ docker pull docker@sha256:a2e851fc59868826a427be0c386bea6839fc690def7ea7078dc561c3589b2dd1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2416068247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4dd785d4eb5937896d5d409552af415c9c9fc825cc71b5cd67c61d24a0decb4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Mon, 10 Aug 2026 23:26:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 10 Aug 2026 23:27:16 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Mon, 10 Aug 2026 23:27:16 GMT
ENV DOCKER_VERSION=29.7.2
# Mon, 10 Aug 2026 23:27:17 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.7.2.zip
# Mon, 10 Aug 2026 23:27:34 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:35 GMT
ENV DOCKER_BUILDX_VERSION=0.36.1
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.36.1/buildx-v0.36.1.windows-amd64.exe
# Mon, 10 Aug 2026 23:27:36 GMT
ENV DOCKER_BUILDX_SHA256=cd7d06a00d924b5800d2654b507afe100378a4685fcec6585eeadc599a527330
# Mon, 10 Aug 2026 23:27:47 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_VERSION=5.4.0
# Mon, 10 Aug 2026 23:27:47 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.4.0/docker-compose-windows-x86_64.exe
# Mon, 10 Aug 2026 23:27:48 GMT
ENV DOCKER_COMPOSE_SHA256=d51bc731b3ff6f062a26e8fdfd391ae98aeab516432f097c66d39c1c9d06680e
# Mon, 10 Aug 2026 23:27:58 GMT
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
	-	`sha256:e7655b73ffdda9fd6d874b2ead23f3dc6064c341fa4a447ddd6fc1c04f79e45c`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a6248f8832e13558a11464ceeda6458cf59ebe9add5725b6c366362ecc3bea`  
		Last Modified: Mon, 10 Aug 2026 23:28:07 GMT  
		Size: 403.2 KB (403246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef455c74943ad7e264bdd2f835ea2d15bc52484ee3d5acc5fa53c3d808d94d0f`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2412db2e4a3148a24d0ea7004fe8686dcf39d1302867077e018f77b2b6b2f1`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd45debb7ee8ff3188577dafeb9dcd5e178731230d39bfa0752750aa246c3d86`  
		Last Modified: Mon, 10 Aug 2026 23:28:08 GMT  
		Size: 20.2 MB (20238647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb1e0db89f2223c9bab0fe1237e4be258be34d7db21b704e16bb23cdbd39908`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cd25477ef52c0f1b151cf29a78399244820fa1d2c4439f8887113921beaeec`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2328d5cd7d586968307156423bf9b547ef7a71aca38e657939b498747c6943dd`  
		Last Modified: Mon, 10 Aug 2026 23:28:04 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6feee692f3c6a11255a71925aba66958b485da1dc2b0ec76bd6b15e89928a2a`  
		Last Modified: Mon, 10 Aug 2026 23:28:06 GMT  
		Size: 23.8 MB (23849016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff709657ec90401a5ebc3e4397c0c77b9b789e64270703d44137b54caf40791c`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf0f3d5c5e8f95b17389dcf78f045356737cdbed254f2b26e19d4ba3c8f89d4`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5722961775296a5c266ef41eae22d022f0f6e4a859f654c068d22007ea893fcd`  
		Last Modified: Mon, 10 Aug 2026 23:28:02 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d987f342a056934012fc1cdded230da7d19ea233372f41a9e89e1f5f4951c5`  
		Last Modified: Mon, 10 Aug 2026 23:28:05 GMT  
		Size: 16.6 MB (16557573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
