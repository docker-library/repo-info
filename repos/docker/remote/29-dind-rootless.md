## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:5ef3c9c0e687bcd7eb459499c28767908fc7505f16a4744331e8fa4e8b614fd0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:d5eb4f991f2b8bd9424619b9b17d047c2205233ebd1dd1d01904387c2bf41f87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140333028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65151bd6162f8853ce53bc014e6afee95ece67b1dff2bc858b00f5f81bdfb90c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 11:53:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 11:53:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 11:53:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 11:53:50 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 11:53:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 11:53:50 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 11:53:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 11:53:51 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 11:53:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 11:53:52 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 11:53:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 11:53:52 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 11:53:52 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 11:53:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 11:53:52 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 12:10:13 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 12:10:14 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 12:10:14 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 12:10:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 12:10:17 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 12:10:17 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 12:10:17 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:10:17 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 12:10:17 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 12:10:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 12:10:17 GMT
CMD []
# Wed, 21 Oct 2026 13:10:23 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 21 Oct 2026 13:10:23 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 21 Oct 2026 13:10:23 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:10:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 21 Oct 2026 13:10:23 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 21 Oct 2026 13:10:23 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 21 Oct 2026 13:10:23 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6819087382dc7f0bb4a3475c4869e55ac14284333e1bf7db4fda4ffb0d763d0b`  
		Last Modified: Wed, 21 Oct 2026 11:53:59 GMT  
		Size: 8.2 MB (8198152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd54ac5e44b7bb0e3c5c7233de969578d1b781ef53d8d2f94025879d17df6307`  
		Last Modified: Wed, 21 Oct 2026 11:53:59 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57ae3e6ba10b9c5411cddced63c3eb317862bc2875019b15655b92662fcdc5e`  
		Last Modified: Wed, 21 Oct 2026 11:54:00 GMT  
		Size: 20.3 MB (20288197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b04d21a9752237ceda5d4c74532cc41e14b0e8497f1ae9394a583a43a10b467`  
		Last Modified: Wed, 21 Oct 2026 11:54:00 GMT  
		Size: 23.8 MB (23824472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10794ce1bca701f822bc14a0c76ac39dd317565fc850db63ec904a865187e7e`  
		Last Modified: Wed, 21 Oct 2026 11:54:00 GMT  
		Size: 11.3 MB (11308822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeeb416982bdf39e7ea583bdde334ad19c835c8d4c0f837c5b3e72fd35f3901b`  
		Last Modified: Wed, 21 Oct 2026 11:54:00 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1150aee329b9799144c15b74cfd92b2a7b2df89afa1b9dbb3a5e594768a144`  
		Last Modified: Wed, 21 Oct 2026 11:54:01 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93eb8c229eb1f7422ba7a2c8e2d3f1ab1c8eea7f716928748f21ffa54a5e1af4`  
		Last Modified: Wed, 21 Oct 2026 11:54:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5515dae66f81f25aec68f49cb2ccd34748da814845b1a2f1a82e1cdbecb17946`  
		Last Modified: Wed, 21 Oct 2026 12:10:26 GMT  
		Size: 4.1 MB (4078880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eba3b498b911a8796ac359a79f89ca1474572a880924189db04ce1cb45d94a4`  
		Last Modified: Wed, 21 Oct 2026 12:10:26 GMT  
		Size: 81.1 KB (81118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817bcc0df9dd1183b81eee7012386b18d5fdb9fbdce4494c37fa2abc16e10706`  
		Last Modified: Wed, 21 Oct 2026 12:10:26 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68422f114f10d22ec01fd9526d3aebc88f4c50939f9a2ea8d932c8006e1ba3e`  
		Last Modified: Wed, 21 Oct 2026 12:10:28 GMT  
		Size: 52.9 MB (52945037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96acfb8f7d3adefa30294ffabdb5398b69ba34bc13f1c4989fe2253ff10d9eeb`  
		Last Modified: Wed, 21 Oct 2026 12:10:28 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ddc2998685deacdf17a7d16b1d05ca29796cc0f0f866a3242def3f01c8b517b`  
		Last Modified: Wed, 21 Oct 2026 12:10:28 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:406664463000d422341d39b728b1709cb2a3f84b679840b1a0222873a1459da2`  
		Last Modified: Wed, 21 Oct 2026 13:10:29 GMT  
		Size: 3.6 MB (3626325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c911ab06734b12e93fbbfeeff50a1d9c99928351ae5b818efa1ca28fc24e9e`  
		Last Modified: Wed, 21 Oct 2026 13:10:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ded9576b6a39146dd0c65e3877267547138dca554ae059e9e92ffb6ce07def`  
		Last Modified: Wed, 21 Oct 2026 13:10:28 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ebde444c0942218edb93f8601b65081d32cb2baa306d88642c8e7fadd128b6`  
		Last Modified: Wed, 21 Oct 2026 13:10:29 GMT  
		Size: 12.1 MB (12122786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df7035499876888f12d5a2a590b4184c251d80e34ca333c8735727fe143510b`  
		Last Modified: Wed, 21 Oct 2026 13:10:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:cc2d89335398ee539fd6a4a737891645d435efd88064db6aa62eee9fee3f50c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c31b2f78cc7f3c1a537e1f43ce93640ecebf8001efdb92f4f4d8f94caf6df76`

```dockerfile
```

-	Layers:
	-	`sha256:08ea172838808251a5e22d2c7fe7ae6bd691a733339a42fd284dc8d5c94311b9`  
		Last Modified: Wed, 21 Oct 2026 13:10:28 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ebed2e309e85761417e5c97b9b0a56b6e70cd744eef4c7f5a58c85b5f1f80ad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130560218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02cc1df51696c74d69e731499229b2543cd7bc5f4aa7bb66030ea7ae65c2ff3e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:26:22 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 16 Oct 2026 20:26:22 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 16 Oct 2026 20:26:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 16 Oct 2026 20:26:24 GMT
ENV DOCKER_VERSION=29.9.1
# Fri, 16 Oct 2026 20:26:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 16 Oct 2026 20:26:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 16 Oct 2026 20:26:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 16 Oct 2026 20:26:26 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 16 Oct 2026 20:26:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 16 Oct 2026 20:26:27 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 16 Oct 2026 20:26:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:26:27 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 16 Oct 2026 20:26:27 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 16 Oct 2026 20:26:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:26:27 GMT
CMD ["sh"]
# Fri, 16 Oct 2026 20:31:47 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 16 Oct 2026 20:31:47 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 16 Oct 2026 20:31:47 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 16 Oct 2026 20:31:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 16 Oct 2026 20:31:50 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 16 Oct 2026 20:31:50 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 16 Oct 2026 20:31:50 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:31:50 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Oct 2026 20:31:50 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 16 Oct 2026 20:31:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Oct 2026 20:31:50 GMT
CMD []
# Fri, 16 Oct 2026 20:47:13 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 16 Oct 2026 20:47:13 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 16 Oct 2026 20:47:13 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 16 Oct 2026 20:47:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 16 Oct 2026 20:47:14 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 16 Oct 2026 20:47:14 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 16 Oct 2026 20:47:14 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a992614bcbb5cfcaa01c40ca60463f2fcb187e88e4fa552a4ffd2c62a0ae6de7`  
		Last Modified: Fri, 16 Oct 2026 20:26:33 GMT  
		Size: 8.3 MB (8261670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af26c2b1e022395ee983d701e4cd9560d3d01efe7a397337f0947c3c2526159`  
		Last Modified: Fri, 16 Oct 2026 20:26:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d7bf51c2bc5629cea2c8670299eba800d19ef2b63a64267757aac652a9acd9`  
		Last Modified: Fri, 16 Oct 2026 20:26:34 GMT  
		Size: 18.7 MB (18674149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3e48d5759284d98c814801ff81910cf6c2624522094479baa63fd60138c292`  
		Last Modified: Fri, 16 Oct 2026 20:26:34 GMT  
		Size: 21.6 MB (21567366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d45f5cbdc5dc0ca701af75746626f8b7fafc1fd168d82d6e9bf7701f710694`  
		Last Modified: Fri, 16 Oct 2026 20:26:34 GMT  
		Size: 10.3 MB (10274545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdfc4e2717a51328b55d00387341b1dadc16ed0436824b86a27d4438d27ad290`  
		Last Modified: Fri, 16 Oct 2026 20:26:34 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6667e53d6e7da3c3c9b66896766f85cfa232c23b037c0d1f1d34c6d989811904`  
		Last Modified: Fri, 16 Oct 2026 20:26:35 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4237763af154d13b08918763c29432324622fb775e63fe70df7f981dd8dbe195`  
		Last Modified: Fri, 16 Oct 2026 20:26:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7117469d829e4a5d9a5caeb1a130a6f1dcb68eddeebb2324e26de63fa1b6e88c`  
		Last Modified: Fri, 16 Oct 2026 20:31:59 GMT  
		Size: 4.6 MB (4628362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7858d651b39ea144b47f95e0fc387fd5e288a3ce50c0768e743561693cf63a59`  
		Last Modified: Fri, 16 Oct 2026 20:31:59 GMT  
		Size: 90.5 KB (90456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f63f0353a0d4c9cedfb24a59b454a9847ef48e834b6c0e5aed03275da5864b01`  
		Last Modified: Fri, 16 Oct 2026 20:31:59 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b916ca297f2da5ac34318a919e239e4a3a491d891cf47794c19ee5b0a538febb`  
		Last Modified: Fri, 16 Oct 2026 20:32:00 GMT  
		Size: 48.0 MB (48001034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44f2cb1b82eec16b4a2e4ab8001424a5696528329e65ce32c3a9a393fdc3d63`  
		Last Modified: Fri, 16 Oct 2026 20:32:00 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c276681ef0d98839e58d9b6bd4c6df85c8182361f65ab45c7d7c9ff210c84718`  
		Last Modified: Fri, 16 Oct 2026 20:32:00 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83131a547614f471a8e0fd41c6f57e5d2ffee87a351bc611ba02dc761db083e5`  
		Last Modified: Fri, 16 Oct 2026 20:47:19 GMT  
		Size: 3.6 MB (3611337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02784092578c94cfec54e0f0c7ace4870919630b01ddd8075bac5f2b26cb1380`  
		Last Modified: Fri, 16 Oct 2026 20:47:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d6d1f7aa1b6ae417df379ab5719c3b165546c32d9ed0c1d31547e08c701fe8`  
		Last Modified: Fri, 16 Oct 2026 20:47:19 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce59c3416247fe8aab47a5cb445f47590e9ccb94f84fc13c2c336805c91e7bfc`  
		Last Modified: Fri, 16 Oct 2026 20:47:19 GMT  
		Size: 11.3 MB (11254148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c59433f2a3e2dd842ae8a556a34ed72e4ceb64d737672561290d8b4d42a275e`  
		Last Modified: Fri, 16 Oct 2026 20:47:20 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:9b59c994ed82e5d39cad140c264fa91d781ca76d6c7f753a3ca2dab71d3a5bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d6c59d53bf5e856ef7afb768a5a87743fa8fd02d81d255b93b5ed8c0416ad1`

```dockerfile
```

-	Layers:
	-	`sha256:c497fac71f8a3feafafe7a7215ce278a2ebb352448fefab41b42e6b2f4c5545e`  
		Last Modified: Fri, 16 Oct 2026 20:47:18 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json
